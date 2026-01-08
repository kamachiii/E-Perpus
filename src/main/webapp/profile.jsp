<%-- 
    Document   : profile
    Created on : Jan 7, 2026, 7:40:49 AM
    Author     : hengk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile - E-Library</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        .profile-header {
            background: linear-gradient(135deg, var(--color-dominant) 0%, #34495e 100%);
            height: 200px;
            border-radius: 0 0 24px 24px;
            position: relative;
            margin-bottom: 60px;
        }

        .profile-img-container {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            border: 4px solid white;
            background-color: var(--color-accent);
            position: absolute;
            bottom: -50px;
            left: 50%;
            transform: translateX(-50%);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 40px;
            font-weight: bold;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }
    </style>
</head>
<body>

     <%@include file="includes/navbar.jsp" %>

    <!-- Header Banner -->
    <div class="profile-header">
        <div class="profile-img-container">
            SU
        </div>
    </div>

    <div class="container pb-5">
        <div class="text-center mb-5">
            <h3 class="fw-bold mb-1">Scholar User</h3>
            <p class="text-muted">Computer Science Student • Member since 2023</p>
        </div>

        <div class="row g-4">

            <!-- Left: Stats -->
            <div class="col-md-4">
                <div class="card card-custom p-4 mb-3">
                    <h6 class="fw-bold text-muted text-uppercase small mb-3">Reading Stats</h6>
                    <div class="d-flex align-items-center mb-3">
                        <div class="bg-primary bg-opacity-10 text-primary rounded p-2 me-3"><i class="fas fa-book-reader fa-lg"></i></div>
                        <div>
                            <h4 class="mb-0 fw-bold">12</h4>
                            <small class="text-muted">Books Read</small>
                        </div>
                    </div>
                    <div class="d-flex align-items-center mb-3">
                        <div class="bg-success bg-opacity-10 text-success rounded p-2 me-3"><i class="fas fa-hand-holding-heart fa-lg"></i></div>
                        <div>
                            <h4 class="mb-0 fw-bold">3</h4>
                            <small class="text-muted">Active Loans</small>
                        </div>
                    </div>
                    <div class="d-flex align-items-center">
                        <div class="bg-danger bg-opacity-10 text-danger rounded p-2 me-3"><i class="fas fa-exclamation-circle fa-lg"></i></div>
                        <div>
                            <h4 class="mb-0 fw-bold">Rp 16.000</h4>
                            <small class="text-muted">Unpaid Fines</small>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right: Edit Form -->
            <div class="col-md-8">
                <div class="card card-custom p-4">
                    <div class="d-flex justify-content-between align-items-center mb-4">
                         <h5 class="fw-bold mb-0">Personal Information</h5>
                         <button class="btn btn-sm btn-outline-primary rounded-pill px-3">Edit Profile</button>
                    </div>

                    <form>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <label class="form-label small text-muted fw-bold">Full Name</label>
                                <input type="text" class="form-control form-control-custom" value="Scholar User" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label small text-muted fw-bold">Student ID</label>
                                <input type="text" class="form-control form-control-custom" value="123456789" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label small text-muted fw-bold">Email Address</label>
                                <input type="email" class="form-control form-control-custom" value="student@university.ac.id" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label small text-muted fw-bold">Phone Number</label>
                                <input type="text" class="form-control form-control-custom" value="+62 812 3456 7890" readonly>
                            </div>
                            <div class="col-12">
                                <label class="form-label small text-muted fw-bold">Address</label>
                                <textarea class="form-control form-control-custom" rows="3" readonly>Jl. Pendidikan No. 1, Kampus Merdeka, Jakarta Selatan</textarea>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>