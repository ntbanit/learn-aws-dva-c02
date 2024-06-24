// this code is use for event source mapping (video 76)
exports.handler = async function(event, context){
    event.Records.forEach(record => {
        const { body }  = record;
        console.log( body );
    });
    return {  };
}