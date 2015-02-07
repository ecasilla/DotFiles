var fs = require('fs'),
    path = require('path'),
    npm = require('npm');

function npmGlobalInstaller(file){
  var modules = [];
  var global = '/usr/local/lib';
  fs.readFile(file,'utf-8',function(err,data){
    if(err) console.log(err);
    modulesStr = data.split('\n'); 
    for(var i=0; i < modulesStr.length; i++)
      if(modulesStr[i]){
        modules.push(modulesStr[i])
      }
  });
  npm.load({
    loaded: false
  }, function (err) {
    if(err){console.log(err)}
    npm.commands.install(global,modules, function (err, data) {
      if(err){console.log(err + " install Err ")}
      console.log(data)
    });
    npm.on("log", function (message) {
      // log the progress of the installation
      console.log(message);
    });
  })
}

npmGlobalInstaller('Npmfile')
