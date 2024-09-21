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
![img_9](https://github.com/user-attachments/assets/a456833a-7bf6-4bb8-ace6-05e89c655bea)

- Actions of repository

![img_10](https://github.com/user-attachments/assets/6bbb2014-ac51-4c7a-9ffc-a2b7b54534c4)

- Image is pushed
![docker hub](https://github.com/user-attachments/assets/a56ea330-ce13-40e1-b811-cee7f3f766b5)

