# 🧪 Testing & Verification Guide (Razorpay Test Credentials)

Welcome to the Heritage Museum Website testing guide. This file provides the exact instructions and simulated test credentials required to test the booking chatbot and Razorpay payment flow successfully without spending real money.

---

## 🔑 1. User Authentication (Login / Signup)
* **Registration:** Open the website homepage and click on **Register** in the top navigation bar. You can create any username and password to log in.
* **Authentication is persistent:** Once registered, your session is saved, allowing you to use the dynamic chatbot booking assistant.

---

## 🤖 2. Interactive Chatbot Booking Flow
1. Click the circular **Chatbot Icon** in the bottom-right corner of the screen.
2. Type **`book`** and click send to start the interactive booking wizard.
3. Follow the chatbot prompts to choose an exhibition, number of tickets, visitor name, and contact details.
4. The chatbot will output a booking summary and render a blue **Pay** button. Click it to navigate to the secure payment gate.

---

## 💳 3. Razorpay Test Credentials (Sandbox Mode)

Since this project is configured in **Razorpay Test Mode**, you can use the following mock payment credentials to complete the simulated checkout flow:

### A. Domestic Indian Card (Recommended for Card Testing)
To bypass the "International cards are not supported" warning (which occurs on default Indian merchant accounts for standard global test cards), please use this domestic card details:
* **Card Number:** `6527 6589 0000 1005` (RuPay / Domestic India)
* **Expiry Date:** Any future date (e.g. `12/30` or `01/29`)
* **CVV:** `123` (or any 3-digit number)
* **Name:** `Any Name`
* **Mock Bank OTP:** Any 4-to-10 digit number (e.g. `1234`) and click **Submit**.

### B. UPI Test ID (Fastest Method)
* Select **UPI** as the payment method.
* Choose to pay via **UPI ID / VPA**.
* Enter the test UPI ID: **`success@razorpay`**
* Click **Pay Now** to immediately simulate a successful payment.

### C. Netbanking Simulation (Easiest Method)
* Select **Netbanking** as the payment method.
* Click **SBI** (State Bank of India) or **HDFC Bank**.
* Click the blue **Pay** button.
* On the mock bank auth page that opens, click the green **Success** button to authorize the transaction.

---

## 📬 4. Contact Form Testing
* Open the **Contact** page.
* Fill in the contact details and click send.
* The message will be securely stored in the database (`contact_messages` table in the `user_db` database).
