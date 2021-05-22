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
    "type": "constructor",
    "name": "constructor"
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
        "type": "address",
        "networkId": 1
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
  }
]
```
## Charity ABI

```json
[
  {
    "inputs": [
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
