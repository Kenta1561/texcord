# 📖 texcord
GitHub Actions workflow to build and send a PDF file built from LaTeX to a Discord webhook.

## Input
All inputs are required to run the workflow.
- **file** : Path to LaTeX file relative to the project root.
- **webhook-url**: Discord webhook url to send the PDF file to. Usage of [encrypted secrets](https://docs.github.com/en/actions/reference/encrypted-secrets) highly recommended.
