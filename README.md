
# 🏛️ MuseBook

<div align="center">

### *Reimagining Museum Visits Through Smart Digital Booking*

<img src="https://img.shields.io/badge/Status-Live-success?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Built%20With-PHP-blue?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Database-MySQL-orange?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Payments-Razorpay-blueviolet?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Hosted%20On-InfinityFree-green?style=for-the-badge"/>

</div>

---

```bash
> Traditional museum booking is manual.
> Long queues waste visitor time.
> Payments happen offline.
> Booking management becomes inefficient.

Solution?

→ MuseBook 🚀
```

MuseBook is a **full-stack museum ticket booking platform** built to digitize the traditional museum reservation process by enabling **online booking, secure payments, chatbot-assisted reservations, exhibition discovery, and seamless visitor management**.

🌐 **Live Demo**
[Visit MuseBook Website](https://musebook.infinityfree.io)

---

# ⚡ What Problem Does MuseBook Solve?

```diff
- Manual ticket booking queues
- Offline payment dependency
- Poor visitor management
- Lack of instant booking assistance
- No automated reservation workflow

+ Fully digital booking experience
+ Secure online payments
+ AI-powered booking assistant
+ Better visitor experience
+ Reduced operational workload
```

---

# 🚀 Core Features

<table>
<tr>
<td width="50%">

### 🔐 Authentication System

* Secure user registration
* Login session management
* Protected user routes
* Password hashing security

</td>

<td width="50%">

### 🎟️ Smart Ticket Booking

* Exhibition selection
* Ticket quantity selection
* Time slot management
* Booking summary generation

</td>
</tr>

<tr>
<td width="50%">

### 🤖 Museum Assistant Chatbot

* Interactive guided booking
* User query assistance
* Step-by-step booking flow
* Login-based booking access

</td>

<td width="50%">

### 💳 Payment Integration

* Razorpay integration
* Secure payment verification
* Dynamic amount generation
* Online payment workflow

</td>
</tr>

<tr>
<td width="50%">

### 📩 Contact Management

* PHPMailer integration
* Automated email handling
* Inquiry management system

</td>

<td width="50%">

### 📱 Responsive UI

* Mobile friendly design
* Tailwind CSS components
* Smooth user interaction
* Modern museum themed UI

</td>
</tr>

</table>

---

# 🏗️ Project Architecture

```text
                   ┌────────────────────┐
                   │      Frontend       │
                   │ HTML + CSS + JS     │
                   │ Tailwind CSS        │
                   └──────────┬─────────┘
                              │
                              ▼
                   ┌────────────────────┐
                   │      PHP Backend    │
                   │ Session Management  │
                   │ Authentication      │
                   │ Booking Logic       │
                   └──────────┬─────────┘
                              │
               ┌──────────────┼──────────────┐
               ▼                             ▼
      ┌────────────────┐          ┌────────────────┐
      │    MySQL DB    │          │    Razorpay    │
      │ Users/Bookings │          │ Payment Gateway│
      └────────────────┘          └────────────────┘
                              │
                              ▼
                    ┌───────────────────┐
                    │   PHPMailer SMTP   │
                    │ Email Automation   │
                    └───────────────────┘
```

---

# 🛠️ Tech Stack

```yaml
Frontend:
  - HTML5
  - CSS3
  - JavaScript
  - Tailwind CSS

Backend:
  - PHP

Database:
  - MySQL

Integrations:
  - Razorpay Payment Gateway
  - PHPMailer SMTP

Deployment:
  - InfinityFree Hosting
```

---

# 📂 Folder Structure

```bash
MuseBook/
│
├── config/
│   └── database configuration
│
├── css/
│   └── website styling
│
├── js/
│   ├── chatbot.js
│   ├── main.js
│
├── includes/
│   ├── chatbot_handler.php
│   ├── header.php
│   ├── footer.php
│
├── images/
│
├── index.php
├── login.php
├── register.php
├── home.php
├── payment.php
│
└── README.md
```

---

# 🔄 Booking Workflow

```text
User Registration/Login
          ↓
Browse Museum Exhibitions
          ↓
Choose Show & Ticket Quantity
          ↓
Museum Assistant Guides Booking
          ↓
Generate Booking Summary
          ↓
Payment via Razorpay
          ↓
Booking Confirmation Completed
```

---

# 🔒 Security Layer

```bash
✔ Password Hashing
✔ Session Based Authentication
✔ SQL Injection Prevention
✔ Prepared Statements
✔ Protected Booking Routes
✔ Payment Verification Logic
✔ Form Validation
✔ Access Controlled Booking System
```

---

# 📊 Functional Modules

```javascript
const MuseBook = {
  Authentication: true,
  TicketBooking: true,
  PaymentGateway: "Razorpay",
  ChatbotAssistant: true,
  ContactSystem: "PHPMailer",
  ResponsiveDesign: true,
  SessionManagement: true,
  BookingWorkflow: "Automated"
}
```

---

# 📈 Engineering Concepts Implemented

```cpp
Data Structures Used:
→ Arrays
→ Session Storage
→ Database Relationships

Backend Concepts:
→ Authentication
→ CRUD Operations
→ Payment APIs
→ State Management
→ Dynamic Routing

Security:
→ Password Hashing
→ SQL Prepared Statements
→ Session Protection
```

---

# 🌟 Future Scope

```bash
[ ] Admin Dashboard Analytics
[ ] QR Code Digital Tickets
[ ] Booking History Tracking
[ ] Email Ticket Confirmation
[ ] AI Recommendation System
[ ] Multi-language Support
[ ] Real-Time Slot Availability
```

---

# 💻 Run Locally

```bash
git clone https://github.com/simonasingh22/MuseBook.git

cd MuseBook

# Start XAMPP / Apache

Import MySQL Database

Configure db.php

Run on localhost
```

---

# 🌍 Live Deployment

```bash
Status : LIVE 🚀
Hosting : InfinityFree
```

### 🔗 Live Project

[MuseBook Live Website](https://musebook.infinityfree.io)

---

<div align="center">

### Built with code, bugs, debugging & patience ☕

**Simona Singh**

</div>

---
