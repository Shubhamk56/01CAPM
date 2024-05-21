const myservice = function(srv){
    srv.on('myfunction' , (req,res) => {
        console.log("Hi" + req.data);
        return 'Hello' + req.data.msg;
        
    } )
}

module.exports = myservice;