<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>My Shop | UPI Commission Payment</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background: #f0f0f0;
    }

    header {
      background-color: #2c3e50;
      color: white;
      padding: 20px;
      text-align: center;
    }

    .container {
      max-width: 600px;
      margin: 30px auto;
      background: white;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      text-align: center;
    }

    h2 {
      margin-bottom: 10px;
    }

    p {
      font-size: 16px;
      margin-bottom: 20px;
    }

    .upi-button {
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      font-size: 16px;
      text-decoration: none;
      border-radius: 5px;
      display: inline-block;
    }

    .upi-button:hover {
      background-color: #388E3C;
    }

    .qr-img {
      margin-top: 20px;
      max-width: 220px;
      border-radius: 10px;
    }

    footer {
      text-align: center;
      padding: 20px;
      background-color: #2c3e50;
      color: white;
    }
  </style>
</head>
<body>

<header>
  <h1>My Shop - Buy & Sell</h1>
  <p>Pay ₹10–₹20 Commission via UPI</p>
</header>

<div class="container">
  <h2>Pay Commission</h2>
  <p>Click the button below or scan the QR code to pay ₹20 commission:</p>

  <!-- UPI Payment Button -->
  <a class="upi-button" href="upi://pay?pa=9445745067@fam&pn=Akash%20Billing&am=20&cu=INR">
    Pay ₹20 via UPI
  </a>

  <!-- UPI QR Code Image -->
  <p style="margin-top: 20px;">Or scan this QR Code:</p>
  <img class="qr-img" src="Screenshot_20250513-142545.png" alt="UPI QR Code" />

  <p style="margin-top: 10px;">UPI ID: <strong>9445745067@fam</strong></p>
</div>

<footer>
  Contact: <a href="mailto:akashbilliniar@gmail.com" style="color:#ccc;">akashbilliniar@gmail.com</a><br />
  All Rights Reserved © 2025 | Built by Akash
</footer>

</body>
</html>
