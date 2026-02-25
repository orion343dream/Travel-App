const { Storage } = require('@google-cloud/storage');

// This script sets CORS on the Firebase Storage bucket
// Run: node set-cors.js <path-to-service-account-key.json>

const keyFile = process.argv[2];
if (!keyFile) {
  console.error('Usage: node set-cors.js path/to/serviceAccountKey.json');
  process.exit(1);
}

const storage = new Storage({ keyFilename: keyFile });
const bucket = storage.bucket('travel-app-753a6.firebasestorage.app');

const corsConfig = [
  {
    origin: ['*'],
    method: ['GET', 'HEAD', 'PUT', 'POST', 'DELETE'],
    maxAgeSeconds: 3600,
    responseHeader: ['Content-Type', 'Authorization', 'Content-Length', 'X-Requested-With'],
  },
];

bucket.setCorsConfiguration(corsConfig).then(() => {
  console.log('CORS configuration set successfully!');
}).catch((err) => {
  console.error('Error setting CORS:', err.message);
});
