var cssjanus = require('cssjanus');
var fs       = require('fs');

fs.readFile(process.argv[2], 'utf8', function (err,data) {
  console.log(cssjanus.transform(data, true, true));
});
