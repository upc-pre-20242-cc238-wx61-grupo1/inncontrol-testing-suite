# InnControl Testing Suite

Welcome to the **InnControl Testing Suite**. This suite is designed to help developers and QA engineers test key functionalities of the InnControl application using **Gherkin** syntax and **Acceptance Criteria**.

## Table of Contents
- [InnControl Testing Suite](#inncontrol-testing-suite)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Installation](#installation)
  - [Gherkin Overview](#gherkin-overview)
    - [Gherkin Syntax](#gherkin-syntax)

---

## Introduction

This document describes how we are testing the main functionalities of the InnControl application. We use **Gherkin** for writing test scenarios in a human-readable format, and validate them against **Acceptance Criteria** to ensure correctness.

The purpose of this testing suite is to:

- Ensure that each feature of the application behaves as expected.
- Automate the validation of business logic.
- Facilitate communication between technical and non-technical team members.

## Installation

Before running the tests, make sure you have the necessary dependencies installed.

1. Clone the repository:
    ```bash
    git clone https://github.com/your-repo/inncontrol-testing-suite.git
    ```
   
2. Navigate to the testing suite folder:
    ```bash
    cd inncontrol-testing-suite
    ```

3. Install dependencies:
    ```bash
    npm install
    # Or for Python-based tests
    pip install -r requirements.txt
    ```

4. Configure environment variables (if necessary).

## Gherkin Overview

Gherkin is a language used to define test scenarios in a structured format using simple, readable sentences. It bridges the gap between business and development by enabling non-technical stakeholders to understand test cases.

### Gherkin Syntax

Each scenario in Gherkin is composed of **features**, **scenarios**, and **steps**. Here's a simple example:

```gherkin
Feature: User login

  Scenario: Successful login with valid credentials
    Given the user is on the login page
    When the user enters valid credentials
    Then the user should be redirected to the dashboard
