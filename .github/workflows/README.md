# GitHub Action

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
![alt text](images/img_9.png)

![alt text](images/img_10.png)