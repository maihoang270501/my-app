const express = require('express');
const app = express();

// Endpoint /health để kiểm tra tình trạng
app.get('/health', (req, res) => {
  res.status(200).send('OK');
});

// Chạy ứng dụng trên cổng 3000
app.listen(3000, () => {
  console.log('Server running on port 3000');
});
