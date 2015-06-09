var fs = require('fs'),
    path = require('path'),
    npm = require('npm');

function npmGlobalInstaller(file){
  var modules = [];
  var global = '/usr/local/lib';
  fs.readFile(file,'utf-8',function(err,data){
    if(err) {
      HandleError(err)
    }
    modulesStr = data.split('\n'); 
    modules = modulesStr.filter(function(value,index){
      console.log(value);
      return !!value;
    });
  });
  npm.load({
    loaded: false
  }, function (err) {
    if(err){
      HandleError(err);
    }
    npm.commands.install(global,modules, function (err, data) {
      if(err){
        HandleError(err + " install Err ")
      }
      console.log(data)
    });
    npm.on("log", function (message) {
      // log the progress of the installation
      console.log(message);
    });
  })
}

function HandleError(){
 console.log.apply(arguments)
}

npmGlobalInstaller('Npmfile');
