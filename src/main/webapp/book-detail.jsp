<%-- 
    Document   : book-detail
    Created on : Jan 7, 2026, 7:37:28 AM
    Author     : hengk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clean Code - Detail</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

     <%@include file="includes/navbar.jsp" %>

    <div class="container py-5">
        <!-- Breadcrumb -->
        <nav aria-label="breadcrumb" class="mb-4">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="dashboard.jsp" class="text-decoration-none text-muted">Home</a></li>
                <li class="breadcrumb-item"><a href="dashboard.jsp" class="text-decoration-none text-muted">Catalog</a></li>
                <li class="breadcrumb-item active" aria-current="page">Clean Code</li>
            </ol>
        </nav>

        <div class="row g-5">
            <!-- Left Column: Cover -->
            <div class="col-md-4 col-lg-3">
                <div class="card card-custom border-0 shadow-lg" style="overflow: hidden;">
                    <div style="height: 400px; background-color: #e9ecef; display: flex; align-items: center; justify-content: center;">
                        <i class="fas fa-book fa-5x text-secondary"></i>
                    </div>
                </div>
                <div class="d-grid gap-2 mt-4">
                    <button class="btn btn-primary-custom shadow" onclick="mockBorrow('Clean Code', 'Robert C. Martin')">
                        <i class="fas fa-book-reader me-2"></i>Borrow Now
                    </button>
                <a href="wishlist_proses.jsp?judul=Clean Code" class="btn btn-outline-secondary rounded-pill text-decoration-none d-flex align-items-center justify-content-center" style="height: 38px;">
                    <i class="far fa-heart me-2"></i> Add to Wishlist
                </a>
                </div>
            </div>

            <!-- Right Column: Details -->
            <div class="col-md-8 col-lg-9">
                <div class="d-flex justify-content-between align-items-start">
                    <div>
                        <h1 class="fw-bold mb-2">Clean Code</h1>
                        <h4 class="text-muted fw-light mb-3">A Handbook of Agile Software Craftsmanship</h4>
                        <div class="mb-3 text-warning">
                             <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                             <span class="text-dark ms-2 fw-semibold">4.5</span>
                             <span class="text-muted ms-1 text-sm">(120 Reviews)</span>
                        </div>
                    </div>
                    <span class="badge bg-success rounded-pill px-3 py-2">Available</span>
                </div>

                <div class="d-flex gap-4 mb-4 text-muted small">
                    <div><i class="fas fa-user-edit me-1"></i> Robert C. Martin</div>
                    <div><i class="fas fa-calendar-alt me-1"></i> 2008</div>
                    <div><i class="fas fa-layer-group me-1"></i> Programming</div>
                </div>

                <hr class="text-muted my-4">

                <h5 class="fw-bold mb-3">Synopsis</h5>
                <p class="text-secondary lh-lg mb-5">
                    Even bad code can function. But if code isn't clean, it can bring a development organization to its knees.
                    Every year, countless hours and significant resources are lost because of poorly written code. But it doesn't have to be that way.
                    <br><br>
                    Noted software expert Robert C. Martin presents a revolutionary paradigm with Clean Code: A Handbook of Agile Software Craftsmanship.
                    Martin has teamed up with his colleagues from Object Mentor to distill their best agile practice of cleaning code “on the fly” into a book that will instill within you the values of a software craftsman and make you a better programmer—but only if you work at it.
                </p>

                <!-- Reviews Section -->
                <h5 class="fw-bold mb-4">Reviews & Discussion</h5>

                <div class="vstack gap-3">
                    <!-- Review 1 -->
                    <div class="d-flex gap-3">
                        <div class="flex-shrink-0">
                            <div class="rounded-circle bg-primary text-white d-flex align-items-center justify-content-center fw-bold shadow-sm" style="width: 48px; height: 48px;">JD</div>
                        </div>
                        <div class="flex-grow-1">
                            <div class="bg-white p-3 rounded-4 shadow-sm border border-light">
                                <div class="d-flex justify-content-between mb-1">
                                    <h6 class="fw-bold mb-0">John Doe</h6>
                                    <small class="text-muted">2 days ago</small>
                                </div>
                                <p class="mb-0 text-muted small">Must read for every developer. Changed the way I write functions completely.</p>
                            </div>
                        </div>
                    </div>

                    <!-- Review 2 -->
                    <div class="d-flex gap-3">
                        <div class="flex-shrink-0">
                            <div class="rounded-circle bg-warning text-dark d-flex align-items-center justify-content-center fw-bold shadow-sm" style="width: 48px; height: 48px;">AS</div>
                        </div>
                        <div class="flex-grow-1">
                            <div class="bg-white p-3 rounded-4 shadow-sm border border-light">
                                <div class="d-flex justify-content-between mb-1">
                                    <h6 class="fw-bold mb-0">Alice Smith</h6>
                                    <small class="text-muted">1 week ago</small>
                                </div>
                                <p class="mb-0 text-muted small">Great concepts, though some examples are a bit dated (Java). Still very relevant!</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Add Comment Input -->
                <div class="mt-4">
                     <h6 class="fw-bold mb-3">Add Your Review</h6>
                     <div class="card card-custom bg-light border-0 p-3">
                        <div class="mb-3">
                            <label class="form-label small fw-bold">Your Rating</label>
                            <div class="text-warning">
                                <i class="far fa-star"></i> <i class="far fa-star"></i> <i class="far fa-star"></i> <i class="far fa-star"></i> <i class="far fa-star"></i>
                                <span class="ms-2 small text-muted">(Click stars to rate)</span>
                            </div>
                        </div>
                        <div class="d-flex gap-3 align-items-start">
                             <div class="flex-shrink-0">
                                <div class="rounded-circle bg-secondary text-white d-flex align-items-center justify-content-center fw-bold" style="width: 40px; height: 40px;">SU</div>
                            </div>
                            <div class="flex-grow-1">
                                <textarea class="form-control form-control-custom mb-3" rows="3" placeholder="Write your thoughts about this book..."></textarea>
                                <button class="btn btn-primary-custom px-4 rounded-pill">Submit Review</button>
                            </div>
                        </div>
                     </div>
                </div>

            </div>
        </div>
    </div>

     <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>