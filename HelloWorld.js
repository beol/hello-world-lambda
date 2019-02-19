console.log('Loading function');

exports.handler = (event, context, callback) => {
  const message = { message: event };

  console.log('Message: ', JSON.stringify(message, null, 2));
  callback(null, 'Function completed');
};
