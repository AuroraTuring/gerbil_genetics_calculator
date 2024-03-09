import { readFileSync, writeFileSync } from 'fs'
const validCharacters = ['e','u','w','(',')','f','s','p','r']
const submitButton = document.querySelector(".submit-button")
const parent1 = document.getElementById('parent1')
const parent2 = document.getElementById('parent2')
const userInput = readFileSync('user_input.json');
const jsonData = JSON.parse(userInput)
document.addEventListener('DOMContentLoade', function(){

});
submitButton.addEventListener('click', function(){
    let toGenerate = Array.from(parent1.children);
    let entry1 = generateParent('m',toGenerate);
    toGenerate = Array.from(parent2.children)
    let entry2 = generateParent('f',toGenerate)
    console.log(entry1, entry2);
    if (entry1 === "error" || entry2 === "error") {
       //print error message
    } else {
        jsonData.parents.push
        writeFileSync('user_input.json', JSON.stringify(jsonData))
    }
});

function generateParent(parent, entry){
    let parentObj = {
        parent : parent,
        genes : []
    };
    let validSubmission = true;
    entry.forEach(gene => {
        let isValidInput = validateInput(gene.value);
        if (!isValidInput){
            validSubmission = false;
        };
        parentObj.genes.push(gene.value);
    });
    if (validSubmission){
        return parentObj;
    } else {
        delete parentObj;
        return "error";
    };
};

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