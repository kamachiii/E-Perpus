<%-- 
    Document   : loans
    Created on : Jan 7, 2026, 7:39:41 AM
    Author     : hengk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Loans - E-Library</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

    <%@include file="includes/navbar.jsp" %>

    <div class="container py-4">
        <h3 class="fw-bold mb-4">Active Loans</h3>

        <!-- Loans Container populated by app.js -->
        <div id="loans-container" class="row g-4">
           <div class="col-12 text-center py-5">
               <div class="spinner-border text-primary" role="status">
                   <span class="visually-hidden">Loading...</span>
               </div>
           </div>
        </div>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>
</html>