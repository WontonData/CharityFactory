pragma solidity >=0.5.0 <0.7.0;
library CharityLib{
    struct info {
        uint  id;  //需求编号

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
    }
}