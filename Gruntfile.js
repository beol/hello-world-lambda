const grunt = require('grunt');

grunt.loadNpmTasks('grunt-aws-lambda');

grunt.initConfig({
  lambda_invoke: {
    default: {
      options: {
        file_name: 'HelloWorld.js',
      },
    },
  },
  lambda_deploy: {
    default: {
      function: 'HelloWorld',
      options: {
        region: 'ap-southeast-1',
        handler: 'HelloWorld.handler',
      },
    },
  },
  lambda_package: {
    default: {},
  },
});

grunt.registerTask('deploy', ['lambda_package', 'lambda_deploy']);
