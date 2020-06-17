pragma solidity 0.5.12;

contract HelloWorld{
    //STATE VARIABLES
    //It is a state variable because it is defined at the root level of the contract
    //message will persist for the entire lifetime of the contract, i.e. forever
    string public message = "Hello World Again";
    //uint means unsigned integer which means we can have positive and negative numbers
    //uint public number = 123;
    //boolean
    //bool public isHappy = true;
    //address - ethereum addresses have their own type in solidity
    //address public contractCreator = 0x3b6F2b6123e11610ec9acB1C11Ade52B84D40D79;
    //integer arrays
    //add a 3 inside the array declaration [3] to fixed the size of the rarray
    uint[] public numbers = [1,20,45];
    //string arrays
    //string[] public messages = ["hello", "hellow world", "hello again"];
    
    //FUNCTIONS
    //getter
    //the view keyword changes the behaviour of the function and means it can't modify the state
    function getMessage() public view returns(string memory){
        return message;   
    }
    //setter
    //don't need to write anything after public because it doesn't return anything
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }
    //getting with argument
    //gets the input index number from the numbers array
    //zero indexed
    function getNumber(uint index) public view returns (uint){
        return numbers[index];
    }
    //setting with multiple arguments
    //modifies an individual array item using the index number;
    function setNumber(uint newNumber, uint index) public {
        numbers[index] = newNumber;
    }
    //setting
    //modifying the length of the array by adding new items
    function addNumber(uint newNumber) public {
        numbers.push(newNumber);
    }
}