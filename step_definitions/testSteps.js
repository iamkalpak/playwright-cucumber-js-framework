/**
 * Example Step Definitions
 * 
 * This file contains example step definitions for Cucumber scenarios.
 * Replace these with your actual application-specific step implementations.
 * 
 * @author Kalpak Kannaujia
 * @version 1.0.0
 * @since 2026
 */

const { Given, When, Then } = require('@cucumber/cucumber');
const { expect } = require('@playwright/test');

Given("I visit the page", async function() {
  await this.page.goto('https://www.automationteststore.com/');
});

Then("I should see the title {string}", async function(msg) {
  await expect(this.page).toHaveTitle(msg);
});