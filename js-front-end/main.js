var testContainer = {}
const validCharacters = ['e','u','w','(',')','f','s','p','r']
const submitButton = document.querySelector(".submit-button")
const genotypeEntry = document.querySelector('.genotype-entry')

submitButton.addEventListener('click', function(event){
    let toExportEntry = {
        genes : []
    };
    let validSubmission = true
    Array.from(genotypeEntry.children).forEach(gene => {
        let isValidInput = validateInput(gene.value)
        if (!isValidInput){
            validSubmission = false
        };
        toExportEntry.genes.push(gene.value)
    });
    console.log(validSubmission)
    if (validSubmission){
        console.log(toExportEntry.genes)
    } else {
        delete toExportEntry
        return "error: invalid entry"
    }
});


function validateInput(string){
    let validInput = true
    let toValidate = string.toLowerCase().split('')
    toValidate.forEach(element => {
        if(!validCharacters.includes(element)){
            validInput = false
        }
    });
    return validInput;
}