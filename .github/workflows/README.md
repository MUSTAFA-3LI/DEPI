# GitHub Action

![github_action](https://github.com/user-attachments/assets/f33d0203-0234-49b2-a2d2-8603cf170a49)

This workflow automates testing and building on push to `main` or any tag.

## Workflow Triggers

- Push to `main`
- Push with any tag

## Jobs

1. **Tester**
   - Checkout code
   - Set up Python 3.12
   - Install dependencies
   - Run tests with `pytest`

2. **Build**
   - Depends on Tester job
   - Checkout code
   - Build Docker image `mustafa3li/palestine:latest`

#### The CI/CD workflow automatically runs on each push to the main branch or when tags are pushed. To manually trigger the workflow or customize it, you can modify the .github/workflows/ci.yml file.

to check the git_action.yml file before push it in github we can use tool `act`

```bash
act -W .github/workflows/git_action.yml
```
![img_9](https://github.com/user-attachments/assets/49632196-561e-485f-a331-7f086e71a023)
![img_10](https://github.com/user-attachments/assets/b7419a00-138c-4f02-adf7-b3bf9a9f1c06)
