# GitHub Action

![github_action](https://github.com/user-attachments/assets/f33d0203-0234-49b2-a2d2-8603cf170a49)

This workflow automates testing and building on push to `main` or any tag.

## Table of Contents

- [GitHub Action](#github-action)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Workflow Triggers](#workflow-triggers)
    - [Tester](#tester)
    - [Build](#build)
  - [Usage](#usage)

## Introduction

This repository contains a GitHub Actions workflow that automates testing and building processes. The workflow is triggered on pushes to the `main` branch or any tag, ensuring continuous integration and delivery.


## Workflow Triggers

- Push to `main`
- Push with any tag

### Tester

1. **Checkout code**
2. **Set up Python 3.12**
3. **Install dependencies**
4. **Run tests with `pytest`**

### Build

1. **Depends on the Tester job**
2. **Checkout code**
3. **Build Docker image `mustafa3li/palestine:latest`**

## Usage

- Check the git_action.yml file before pushing it to GitHub, use the act tool:

```bash
act -W .github/workflows/git_action.yml
```
![img_9](https://github.com/user-attachments/assets/49632196-561e-485f-a331-7f086e71a023)

- Actions of repository

![img_10](https://github.com/user-attachments/assets/b7419a00-138c-4f02-adf7-b3bf9a9f1c06)
