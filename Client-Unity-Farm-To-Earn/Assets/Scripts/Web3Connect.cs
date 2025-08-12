using Thirdweb;
using UnityEngine;

public class Web3Connect : MonoBehaviour
{
    private ThirdwebSDK sdk;
    private Contract contract;

    async void Start()
    {
        sdk = new ThirdwebSDK("http://127.0.0.1:8545"); // Ganache RPC
        contract = sdk.GetContract("0x2Dd3f79acb77D3aD885438d8B4288Baa0158ed23");

        var result = await contract.Read<string>("echo");
        Debug.Log("Contract Name: " + result);
    }
}