const Web3 = require('web3')
const web3 = new Web3(new Web3.providers.WebsocketProvider('ws://127.0.0.1:8546'))

web3.eth.subscribe('newBlockHeaders', function (error, result) {
    if (error) {
        console.log(error);
    }
}).on("data", function (blockHeader) {
    console.log("Last block received: #" + blockHeader.number);
})