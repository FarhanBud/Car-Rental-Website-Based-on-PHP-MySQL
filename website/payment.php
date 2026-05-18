<?php
session_start();
error_reporting(0);
include('includes/config.php'); // Include for consistency

// Check if payment was confirmed (from previous redirect)
$paymentConfirmed = isset($_GET['confirmed']) && $_GET['confirmed'] == 1;
?>

<!DOCTYPE HTML>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Rental | Payment</title>
    <!-- Bootstrap and other styles -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/owl.transitions.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
        .payment-header {
            margin-bottom: 40px;
        }

        .payment-section {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 40px 0;
            background-color: #f9f9f9;
            border-radius: 8px;
            min-height: 300px; /* Ensures sufficient height for centering */
        }

        .payment-title {
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
        }

        .payment-section p {
            font-size: 16px;
            margin-bottom: 30px;
        }

        .btn {
            padding: 10px 20px;
            font-size: 16px;
        }

        .info-text {
            font-size: 14px;
            color: #555;
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>

<body>
    <!-- Header -->
    <?php include('includes/header.php'); ?>

    <section class="page-header payment-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-heading text-center" style="position: relative;">
                        <!-- Background overlay -->
                        <div style="
                            position: absolute;
                            top: 0;
                            left: 0;
                            width: 100%;
                            height: 100%;
                            background-color: rgba(0, 0, 0, 0.5);
                            z-index: 1;
                            border-radius: 8px;
                        "></div>
                        
                        <!-- Content -->
                        <h1 style="position: relative; z-index: 2; color: #fff;">Payment</h1>
                        <p class="text-muted" style="position: relative; z-index: 2; color: #e0e0e0;">
                            Confirm your payment for the booking below.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="payment-section">
        <h3 class="payment-title text-center">Payment Confirmation</h3>
        <p class="text-center">This page is to confirm the payment mentioned in the booking page.</p>
        <form method="POST" action="my-booking.php" class="text-center">
            <input type="hidden" name="confirmed" value="1">
            <button type="submit" class="btn btn-success">Confirm Payment</button>
        </form>
        <p class="info-text">
            After confirming the payment, the admin will process it within a certain time.
        </p>
    </section>

    <!-- Footer -->
    <?php include('includes/footer.php'); ?>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>

</html>
