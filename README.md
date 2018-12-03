# How to run this contract


## Go to browser

- Go to [remix.ethereum.org](http://remix.ethereum.org/)

## Usage
- In the upper left corner, click `(+)` to create new file, name it, LegitimateServices.sol and then click `OK`.
- Open the `LegitimateServices.txt` and press `Ctrl+A` to select all the code and `Ctrl+C` to copy it. Paste it on `LegitimateServices.sol`.

- Go to the compile tab at the right side. change the version of the remix in the `Select new compiler version` and select `0.4.24+commit.e67f0147`,
wait for the loading of the compiler, then click "start to compile" or `Ctrl+S`.
```0.4.24+commit.e67f0147```

- Click the `run` tab at the right side, next to Compile tab. Change the environment to `Javascript VM`.

```Javascript VM```

- Copy the account address below the environment. at the end of the address number there is a button `copy to clipboard` and it will automatically copy the address.

- Paste and replace the `address DTI = //replace address//;` you can find this at line 4. Delete the double quotation.

```solidity
address  DTI = "//replace address//"; //line 4```
- Click `Deploy`

- After you click `Deploy`, there will be a displayed contracts at the bottom right. Click the `Legitimate Services` at 0xxxxxxx.

- There is a 3 button and 3 input box beside it.

- At the first text box. This is the format of the example input `(1,"Air Asia", 0)` then click the `CreateRegistration` button. `Note:` you need to input 1, and click the dropdown and select ether for the Value at the upper right. below gas limit. Input the number of index in the array industries.

```solidity
string[] industries = ["Airlines","Hotel","Hospital"]; //line 5```


- The second input box is for verifying. Input the ID of the company to verify. Then click `verifyCompany` button.`Note:` to verify. return to the primary account or the contract creator account to verify all the company.

- The third input box for information registration. Input the ID of the company to display the information. Then click `getinfoRegistration` button.


## Contributing

## License
