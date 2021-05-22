## 主网地址
```
cfx:acd4x1rc5skd4ks14un9dvy2kkg42az1y28km8546s
```

## 测试网地址
```
cfxtest:type.contract:acd5g4xhzzkgeey5bha8kpswxns0ac3kk63bauugkg
```

## CharityFactory ABI

```json
 [
    {
      "inputs": [],
      "stateMutability": "nonpayable",
      "type": "constructor"
    },
    {
      "inputs": [],
      "name": "SPONSOR",
      "outputs": [
        {
          "internalType": "contract SponsorWhitelistControl",
          "name": "",
          "type": "address"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "name": "charities",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "index",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "name": "myDemands",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "name": "myDonates",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "string",
          "name": "_sponsorName",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "_demands",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "_contact",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "_location0",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "_img0",
          "type": "string"
        }
      ],
      "name": "deployer",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "user",
          "type": "address"
        }
      ],
      "name": "getMyDemands",
      "outputs": [
        {
          "internalType": "address[]",
          "name": "",
          "type": "address[]"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "destroy",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    }
  ]
```
## Charity ABI

```json
[
        {
          "internalType": "address",
          "name": "_admin",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "_id",
          "type": "uint256"
        },
        {
          "internalType": "address",
          "name": "_sponsor",
          "type": "address"
        },
        {
          "internalType": "string",
          "name": "_sponsorName",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "_demands",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "_contact",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "_location0",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "_img0",
          "type": "string"
        }
      ],
      "stateMutability": "nonpayable",
      "type": "constructor"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "id",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "status",
          "type": "uint256"
        }
      ],
      "name": "Update",
      "type": "event"
    },
    {
      "inputs": [],
      "name": "SPONSOR",
      "outputs": [
        {
          "internalType": "contract SponsorWhitelistControl",
          "name": "",
          "type": "address"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "admin",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "id",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "sponsorInfo",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        },
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "helperInfo",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        },
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "Info",
      "outputs": [
        {
          "components": [
            {
              "internalType": "uint256",
              "name": "id",
              "type": "uint256"
            },
            {
              "internalType": "address",
              "name": "sponsor",
              "type": "address"
            },
            {
              "internalType": "address",
              "name": "helper",
              "type": "address"
            },
            {
              "internalType": "string",
              "name": "sponsorName",
              "type": "string"
            },
            {
              "internalType": "string",
              "name": "helperName",
              "type": "string"
            },
            {
              "internalType": "string",
              "name": "demands",
              "type": "string"
            },
            {
              "internalType": "string",
              "name": "contact",
              "type": "string"
            },
            {
              "internalType": "string",
              "name": "img0",
              "type": "string"
            },
            {
              "internalType": "string",
              "name": "img1",
              "type": "string"
            },
            {
              "internalType": "string",
              "name": "location0",
              "type": "string"
            },
            {
              "internalType": "string",
              "name": "location1",
              "type": "string"
            },
            {
              "internalType": "string",
              "name": "express",
              "type": "string"
            },
            {
              "internalType": "uint256",
              "name": "status",
              "type": "uint256"
            }
          ],
          "internalType": "struct CharityLib.info",
          "name": "",
          "type": "tuple"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "string",
          "name": "_helperName",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "_img1",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "_location1",
          "type": "string"
        },
        {
          "internalType": "string",
          "name": "_express",
          "type": "string"
        }
      ],
      "name": "Donate",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "getStatus",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "update",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "rollback",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "complete",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "failed",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "destroy",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    }
  ]
```

## SponsorWhitelistControl ABI
```json
[
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "contractAddr",
          "type": "address"
        }
      ],
      "name": "getSponsorForGas",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "contractAddr",
          "type": "address"
        }
      ],
      "name": "getSponsoredBalanceForGas",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "contractAddr",
          "type": "address"
        }
      ],
      "name": "getSponsoredGasFeeUpperBound",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "contractAddr",
          "type": "address"
        }
      ],
      "name": "getSponsorForCollateral",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "contractAddr",
          "type": "address"
        }
      ],
      "name": "getSponsoredBalanceForCollateral",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "contractAddr",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "user",
          "type": "address"
        }
      ],
      "name": "isWhitelisted",
      "outputs": [
        {
          "internalType": "bool",
          "name": "",
          "type": "bool"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "contractAddr",
          "type": "address"
        }
      ],
      "name": "isAllWhitelisted",
      "outputs": [
        {
          "internalType": "bool",
          "name": "",
          "type": "bool"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "contractAddr",
          "type": "address"
        },
        {
          "internalType": "address[]",
          "name": "addresses",
          "type": "address[]"
        }
      ],
      "name": "addPrivilegeByAdmin",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "contractAddr",
          "type": "address"
        },
        {
          "internalType": "address[]",
          "name": "addresses",
          "type": "address[]"
        }
      ],
      "name": "removePrivilegeByAdmin",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "contractAddr",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "upperBound",
          "type": "uint256"
        }
      ],
      "name": "setSponsorForGas",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "contractAddr",
          "type": "address"
        }
      ],
      "name": "setSponsorForCollateral",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address[]",
          "name": "",
          "type": "address[]"
        }
      ],
      "name": "addPrivilege",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address[]",
          "name": "",
          "type": "address[]"
        }
      ],
      "name": "removePrivilege",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    }
  ]
  ```
