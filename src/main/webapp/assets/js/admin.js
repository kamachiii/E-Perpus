
// Admin Interaction Logic
document.addEventListener('DOMContentLoaded', () => {

    // --- Delete Functionality ---
    let rowToDelete = null;
    const deleteModal = new bootstrap.Modal(document.getElementById('deleteModal'));

    // Attach event listeners to initial delete buttons
    document.querySelectorAll('.btn-delete').forEach(btn => {
        btn.addEventListener('click', function() {
            rowToDelete = this.closest('tr');
            deleteModal.show();
        });
    });

    // Confirm Delete
    document.getElementById('confirmDeleteBtn').addEventListener('click', () => {
        if (rowToDelete) {
            rowToDelete.remove();
            rowToDelete = null;
            deleteModal.hide();
            // Optional: Show success toast
        }
    });


    // --- Add Functionality ---
    const addModal = new bootstrap.Modal(document.getElementById('addBookModal'));

    document.getElementById('saveNewBookBtn').addEventListener('click', () => {
        // Get values
        const title = document.getElementById('addTitle').value;
        const author = document.getElementById('addAuthor').value;
        const category = document.getElementById('addCategory').value;

        if(!title || !author) {
            alert("Title and Author are required!");
            return;
        }

        // Add to Table
        const tbody = document.querySelector('.table-custom tbody');
        const newRow = document.createElement('tr');
        const newId = '#10' + (tbody.rows.length + 1).toString().padStart(2, '0'); // Mock ID

        newRow.innerHTML = `
            <td class="text-muted">${newId}</td>
            <td><div class="bg-light rounded d-flex align-items-center justify-content-center" style="width: 40px; height: 50px;"><i class="fas fa-book text-muted"></i></div></td>
            <td class="fw-bold text-dominant">${title}</td>
            <td>${author}</td>
            <td><span class="badge bg-light text-dark border">${category}</span></td>
            <td><span class="badge bg-success bg-opacity-10 text-success px-3 py-2 rounded-pill">Available</span></td>
            <td><i class="fas fa-star text-secondary small"></i> -</td>
            <td class="text-end">
                <button class="btn btn-action btn-edit me-1" title="Edit"><i class="fas fa-pen small"></i></button>
                <button class="btn btn-action btn-delete" title="Delete"><i class="fas fa-trash small"></i></button>
            </td>
        `;

        // Re-attach delete event (simple way)
        newRow.querySelector('.btn-delete').addEventListener('click', function() {
            rowToDelete = this.closest('tr');
            deleteModal.show();
        });
         // Re-attach edit event
         newRow.querySelector('.btn-edit').addEventListener('click', function() {
            openEditModal(this.closest('tr'));
        });

        tbody.appendChild(newRow);

        // Reset and Hide
        document.getElementById('addBookForm').reset();
        addModal.hide();
    });

    // --- Edit Functionality ---
    let currentRow = null;
    const editModal = new bootstrap.Modal(document.getElementById('editBookModal'));

    // Function to attach edit listeners
    function attachEditListeners() {
        document.querySelectorAll('.btn-edit').forEach(btn => {
            btn.addEventListener('click', function() {
                openEditModal(this.closest('tr'));
            });
        });
    }

    function openEditModal(row) {
        currentRow = row;
        // Populate form with current data
        const cells = row.cells;
        document.getElementById('editTitle').value = cells[2].innerText;
        document.getElementById('editAuthor').value = cells[3].innerText;
        // Mock Category extraction
        document.getElementById('editCategory').value = cells[4].innerText.trim();

        editModal.show();
    }

    attachEditListeners();

    document.getElementById('saveEditBtn').addEventListener('click', () => {
        if (currentRow) {
            const title = document.getElementById('editTitle').value;
            const author = document.getElementById('editAuthor').value;
            const category = document.getElementById('editCategory').value;

            currentRow.cells[2].innerText = title;
            currentRow.cells[3].innerText = author;
            currentRow.cells[4].innerHTML = `<span class="badge bg-light text-dark border">${category}</span>`;

            editModal.hide();
            currentRow = null;
        }
    });

});
