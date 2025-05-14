<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Shop</title>
  <style>
    /* Popup Style */
    #payment-popup {
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background-color: rgba(0, 0, 0, 0.5);
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .popup-content {
      background-color: white;
      padding: 20px;
      border-radius: 5px;
      text-align: center;
    }
  </style>
</head>
<body>

  <h1>Welcome to My Shop</h1>

  <!-- Product Categories -->
  <select name="category" id="category">
    <option value="electronics">Electronics</option>
    <option value="clothing">Clothing</option>
    <option value="accessories">Accessories</option>
  </select>

  <!-- Login Form -->
  <div id="login-form">
    <h2>Login</h2>
    <input type="text" id="username" placeholder="Username" required />
    <input type="password" id="password" placeholder="Password" required />
    <button onclick="login()">Login</button>
    <p>Don't have an account? <a href="javascript:showSignup()">Sign up</a></p>
  </div>

  <!-- Signup Form -->
  <div id="signup-form" style="display:none;">
    <h2>Sign Up</h2>
    <input type="text" id="new-username" placeholder="Username" required />
    <input type="password" id="new-password" placeholder="Password" required />
    <button onclick="signup()">Sign Up</button>
    <p>Already have an account? <a href="javascript:showLogin()">Login</a></p>
  </div>

  <!-- Image Upload -->
  <form id="upload-form">
    <input type="file" id="image-upload" accept="image/*" required />
    <button type="submit">Upload Image</button>
  </form>

  <!-- UPI Payment Reminder Popup -->
  <div id="payment-popup" style="display:none;">
    <div class="popup-content">
      <h2>UPI Payment Reminder</h2>
      <p>Please complete your payment via UPI.</p>
      <button onclick="closePopup()">Close</button>
    </div>
  </div>

  <script>
    function login() {
      let username = document.getElementById("username").value;
      let password = document.getElementById("password").value;
      alert("Logged in successfully!");
    }

    function signup() {
      let username = document.getElementById("new-username").value;
      let password = document.getElementById("new-password").value;
      alert("Signed up successfully!");
    }

    function showSignup() {
      document.getElementById("login-form").style.display = "none";
      document.getElementById("signup-form").style.display = "block";
    }

    function showLogin() {
      document.getElementById("signup-form").style.display = "none";
      document.getElementById("login-form").style.display = "block";
    }

    document.getElementById("upload-form").onsubmit = function(e) {
      e.preventDefault();
      let file = document.getElementById("image-upload").files[0];
      if (file) {
        alert("Image uploaded successfully!");
      }
    };

    function showPaymentReminder() {
      document.getElementById("payment-popup").style.display = "block";
    }

    function closePopup() {
      document.getElementById("payment-popup").style.display = "none";
    }

    setTimeout(showPaymentReminder, 10000);
  </script>

</body>
</html>
