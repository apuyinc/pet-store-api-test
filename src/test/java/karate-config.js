function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'local';
    loginUrl = 'login';
    userUrl = 'user';
    petUrl = 'pet';
    environment = env;
  }
  var config = {
    baseUrl : 'http://localhost:8080',
    environment : env
  };
  
  if (env == 'local') {
    config.baseUrl = 'http://localhost:8080/api/v3/'
  } else if (env == 'qa') {
    config.baseUrl = 'https://petstore3.swagger.io/api/v3/'
  }
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}