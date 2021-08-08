const core = require('@actions/core');
const github = require('@actions/github');
const fs = require('fs');

try {
	const encodedU = encodeURI(process.env.API_USERNAME);
	const encodedP = encodeURI(process.env.API_PASSWORD);
	const content = `https://${encodedU}:${encodedP}@*`;
	fs.writeFile('WSDL_credentials.txt', content, (err) => {
		  if (err) throw err;
	});
	console.log('Written.');
} catch (error) {
	core.setFailed(error.message);
}
