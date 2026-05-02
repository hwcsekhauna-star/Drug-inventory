# Drug Inventory Management System

A professional-grade, web-based pharmaceutical inventory management system. This application was digitally transformed from a complex 24-sheet Excel workbook into a high-performance, single-page web application.

## 🚀 Live Demo
Once deployed, the application will be available at your GitHub Pages URL:
`https://<username>.github.io/<repo-name>/`

## ✨ Key Features
- **Comprehensive Dashboard**: Real-time inventory statistics and system overview.
* **Dynamic Date Conversion**: Global transformation of Excel serial numbers into `DD-MMM-YYYY (Weekday)` format.
- **Interactive Monthly Tracking**: 2D grid views for 21 months of daily stock tracking.
- **Batch Management**: Searchable master register and receiving entry forms.
- **Local Persistence**: CRUD operations (Add/Edit Batches) are stored locally in the browser's `localStorage`.
- **Automated CI/CD**: Powered by GitHub Actions for seamless updates.

## 🛠 Project Structure
- `src/`: UI templates and core logic.
- `data/`: Inventory data in optimized JSON format.
- `scripts/`: Build automation scripts.
- `.github/`: CI/CD workflows for automated deployment.

## 📦 Local Development
To build the application locally, run the PowerShell script:
```powershell
./scripts/build.ps1
```
This will generate an `index.html` file in the root directory.

## 🚢 Deployment to GitHub
1. Create a new repository on GitHub.
2. Run the following commands:
```bash
git init
git add .
git commit -m "Initial commit: Professional structure and build system"
git branch -M main
git remote add origin https://github.com/<username>/<repo-name>.git
git push -u origin main
```
3. Enable **GitHub Pages** in your repository settings:
   - Go to **Settings > Pages**.
   - Under **Build and deployment > Source**, select **GitHub Actions**.

## 📄 License
This project is for internal pharmaceutical inventory use.
