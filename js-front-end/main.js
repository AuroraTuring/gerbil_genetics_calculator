const placeholderDatamodel = [];
const submitButton = document.querySelector('.submit-button')

submitButton.addEventListener('click', function(event){
    let element = event.target.parentElement;
    for (let i = 0; i < 6; i++) {
        const gene = element.children[i].value
        placeholderDatamodel.push(gene)
        element.children[i].value = ''
    }
    console.log(placeholderDatamodel)

})