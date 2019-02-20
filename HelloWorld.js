console.log('Loading function');

exports.handler = event => {
  const message = { message: event };

  console.log('Message: ', JSON.stringify(message, null, 2));
  return 'Function completed';
};
