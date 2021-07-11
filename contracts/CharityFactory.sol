pragma solidity >=0.5.0 <0.7.0;
pragma experimental ABIEncoderV2;

import "../library/CharityLib.sol";
import "../library/SponsorWhitelistControl.sol";

/*获得慈善勋章-NFT */
interface CharityMedal {
   function awardItem(address player) external returns (uint256);
}

contract Charity {
    SponsorWhitelistControl constant public SPONSOR = SponsorWhitelistControl(0x0888000000000000000000000000000000000001);
    CharityMedal cm = CharityMedal(0x8529E362A6ECf262a981922dDb17FB5F814fEC34);
    address public admin;

    uint public id;  //需求编号

    address sponsor;  //发起人address
    address helper;    //捐助者address

    string sponsorName;  //发起人 or 机构 名称
    string helperName;

    string demands;   //需求内容
    string contact;   //联系方式

    string img0;     //佐证材料 
    string img1;
    string location0;  //发起者 位置地区
    string location1;  //捐助者 位置地区
    string express;    //快递单号

    uint status;      //互助状态 0:初始 1：通过 2：捐赠中 3：捐赠完成 -1：失败

    event Update(uint id, uint status);

    constructor(
        address _admin,
        uint _id, 
        address _sponsor,
        string memory _sponsorName, 
        string memory _demands, 
        string memory _contact, 
        string memory _location0, 
        string memory _img0
    ) public { 
        admin = _admin;
        id = _id;
        sponsor = _sponsor;
        sponsorName = _sponsorName;
        demands = _demands;
        contact = _contact;
        location0 = _location0;
        img0 = _img0;
        address[] memory users = new address[](1);
        users[0] = address(0);
        SPONSOR.addPrivilege(users);
    }

    function sponsorInfo() public view returns(
        address, string memory, string memory, string memory, string memory, string memory
    ) {
        return (sponsor, sponsorName, demands, contact, img0, location0);
    }

    function helperInfo() public view returns(
        address, string memory, string memory, string memory
    ) {
        return (helper, helperName, img1, location1);
    }

    function Info() public view returns (
        CharityLib.info memory
    ) {
        return CharityLib.info(id, sponsor, helper, sponsorName, helperName, demands, contact, img0, img1, location0, location1, express, status);
    } 

    function Donate(
        string memory _helperName, 
        string memory _img1, 
        string memory _location1, 
        string memory _express
    ) public {
        helperName = _helperName;
        img1 = _img1;
        location1 = _location1;
        express = _express;
        update();
        emit Update(id, status);
    }

    function getStatus() public view returns(uint) {
        return status;
    }

    function update() public { //更新状态 0:初始 1：通过 2：捐赠中 3：捐赠完成 9：失败
        status ++;
        emit Update(id, status);
    }

    function failed() public {    //需求中断或失败
        status = 9;
        emit Update(id, status);
    } 

    function destroy() public{      //合约销毁
        require(admin == msg.sender,"not permit");
        selfdestruct(msg.sender);
    }

}

contract CharityFactory {
    SponsorWhitelistControl constant public SPONSOR = SponsorWhitelistControl(0x0888000000000000000000000000000000000001);
    bytes contractBytecode = type(Charity).creationCode;
    address[] public charities;
    uint public index = 0;
    address admin;

    mapping(address => address[]) public myDemands;
    mapping(address => address[]) public myDonates;

    constructor() public {
        admin = msg.sender;
        address[] memory users = new address[](1);
        users[0] = address(0);
        SPONSOR.addPrivilege(users);
    }

    function deployer(        
        string memory _sponsorName, 
        string memory _demands, 
        string memory _contact, 
        string memory _location0, 
        string memory _img0
    ) public {
        address addr;
        bytes memory bytecode = abi.encodePacked(
            contractBytecode, 
            abi.encode(
                admin,
                index, 
                msg.sender,
                _sponsorName, 
                _demands, 
                _contact, 
                _location0, 
                _img0
            )
        );
        assembly {
          addr := create2(0, add(bytecode, 0x20), mload(bytecode), 0)
          if iszero(extcodesize(addr)) {
              revert(0, 0)
          }
        }

        charities.push(addr);
        myDemands[msg.sender].push(addr);
        index ++;
    }

    function getMyDemands(address user) public view returns (address[] memory){
        return myDemands[user];
    }

    function complete(address charity_addr) public {
        Charity charity = Charity(charity_addr);
        require(charity.sponsor == msg.sender, "illegal operation");
        charity.update();
        cm.awardItem(helper);
    }
   
    function destroy() public{      //合约销毁
        require(admin == msg.sender,"not permit");
        selfdestruct(msg.sender);
    }
}