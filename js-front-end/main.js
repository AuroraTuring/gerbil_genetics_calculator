const placeholderDatamodel = [];
const submitButton1 = document.querySelector(".submit-button")

submitButton1.addEventListener('click', function(event){
    let element = event.target.parentElement;
    Array.from(element.children).forEach(gene => {
        placeholderDatamodel.push(gene.value)
        gene.value=''     
    });
});