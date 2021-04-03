# texcord
GitHub Actions workflow to build and send a PDF file built from LaTeX to a Discord webhook.

## :pencil2: Input
All inputs are required to run the workflow.
- **file** : Path to LaTeX file relative to the project root.
- **webhook-url**: Discord webhook url to send the PDF file to. Usage of [encrypted secrets](https://docs.github.com/en/actions/reference/encrypted-secrets) highly recommended.

## ℹ️ Info
To avoid unnecessary builds triggered by non-tex files, add [path filters](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#onpushpull_requestpaths) to your workflow trigger.
