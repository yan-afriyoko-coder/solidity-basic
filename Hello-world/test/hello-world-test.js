const HelloWorld = artifacts.require("HelloWorld");

contract("HelloWorld", ()=> { 
    it("Should create and execute Simple Smart Contract", async ()=> {
        const helloWorld = await HelloWorld.deployed();
        const result = await helloWorld.hello();
        console.log("message : ",result);
    });
});