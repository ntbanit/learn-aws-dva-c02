exports.handler = function(event, context, callback){
    let eventReceivedAt = new Date().toISOString();
    console.log('event received at: ' + eventReceivedAt);
    console.log('received event: ' + JSON.stringify(event, null, 2));

    context.callbackWaitsForEmptyEventLoop = false;
    if(event.Success){
        console.log('Success');
        callback(null);
    }else{
        console.log('Failure');
        callback(new Error('Failure from event'), 'Destination Function Error Thrown');
    }
}