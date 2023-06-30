/// <reference types="cypress" />
import { Given, Then, When } from "@badeball/cypress-cucumber-preprocessor";


const url = "https://www.automationexercise.com/login";


Given('User navigate to the automation exercise login page', () => {
    cy.visit(url);
})

When('The user types a {} in the username field', (username) => {
    cy.get('input[data-qa="login-email"]').type(username);
    
})

When('The user types a {} in the password field', (password) => {
    cy.get('input[data-qa="login-password"]').type(password);
    
})

When('The user presses Login button', () => {
    cy.get('button[data-qa="login-button"]').click();
    
})

Then('The User should be displayed a {string}', (errorMessage) => {
    cy.get('div[class="login-form"]>form>p').should('have.text', errorMessage);

})

Then('The user expect that the {string} is displayed', (logout_option) => {
    cy.get('.shop-menu>ul>li:nth-child(4)>a').should('have.text', logout_option);

})