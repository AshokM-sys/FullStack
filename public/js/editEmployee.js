document.addEventListener('DOMContentLoaded', () => {
    const familyContainer = document.getElementById('editFamilyDetailsContainer');
    const addFamilyButton = document.getElementById('addFamilyMember');

    // Function to add a new family member
    addFamilyButton.addEventListener('click', () => {
        const index = familyContainer.children.length;
        const familyMemberHtml = `
            <div class="family-member" data-index="${index}">
                <div class="form-group">
                    <label for="editfamName${index}">Family Member Name</label>
                    <input type="text" class="form-control" id="editfamName${index}" name="familyDetails[${index}][famName]" required>
                </div>
                <div class="form-group">
                    <label for="editfamRelation${index}">Relation</label>
                    <input type="text" class="form-control" id="editfamRelation${index}" name="familyDetails[${index}][famRelation]" required>
                </div>
                <div class="form-group">
                    <label for="editfamAge${index}">Age</label>
                    <input type="number" class="form-control" id="editfamAge${index}" name="familyDetails[${index}][famAge]" required>
                </div>
                <div class="form-group">
                    <label for="editfamOccupation${index}">Occupation</label>
                    <input type="text" class="form-control" id="editfamOccupation${index}" name="familyDetails[${index}][famOccupation]" required>
                </div>
                <button type="button" class="btn btn-danger remove-family-member" data-index="${index}">Remove</button>
            </div>
        `;
        familyContainer.insertAdjacentHTML('beforeend', familyMemberHtml);
    });

    // Function to remove a family member
    familyContainer.addEventListener('click', (e) => {
        if (e.target.classList.contains('remove-family-member')) {
            const familyMemberDiv = e.target.closest('.family-member');
            familyMemberDiv.remove();
            // Optionally, you can update the indices of remaining family members
        }
    });
});
