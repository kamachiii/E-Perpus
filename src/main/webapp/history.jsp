<%-- 
    Document   : history
    Created on : Jan 7, 2026, 7:38:46 AM
    Author     : hengk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Borrowing History - E-Library</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

    <%@include file="includes/navbar.jsp" %>

    <div class="container py-4">
        <h3 class="fw-bold mb-4">Borrowing History</h3>

        <div class="card card-custom border-0 shadow-sm">
            <div class="table-responsive">
                <table class="table table-hover align-middle mb-0">
                    <thead class="bg-light">
                        <tr>
                            <th class="ps-4 py-3">Book Title</th>
                            <th>Author</th>
                            <th>Borrowed Date</th>
                            <th>Returned Date</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="ps-4 fw-bold">Harry Potter</td>
                            <td>J.K. Rowling</td>
                            <td>Oct 10, 2023</td>
                            <td>Oct 17, 2023</td>
                            <td><span class="badge bg-success bg-opacity-10 text-success rounded-pill px-3">Returned</span></td>
                        </tr>
                         <tr>
                            <td class="ps-4 fw-bold">Introduction to Algorithms</td>
                            <td>Thomas H. Cormen</td>
                            <td>Sep 05, 2023</td>
                            <td>Sep 19, 2023</td>
                            <td><span class="badge bg-success bg-opacity-10 text-success rounded-pill px-3">Returned</span></td>
                        </tr>
                         <tr>
                            <td class="ps-4 fw-bold">Design Patterns</td>
                            <td>Erich Gamma</td>
                            <td>Aug 20, 2023</td>
                            <td>Sep 01, 2023</td>
                            <td><span class="badge bg-warning bg-opacity-10 text-warning rounded-pill px-3">Returned Late</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>