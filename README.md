## What We'll Build
We'll use all three Claude tools to analyze, visualize, and organize cloud role salary data, building a different output with each tool to experience their unique strengths.

Diagram shows 
![alt images](Diagram.png)

The same dataset flows into: 
`Claude.ai` for conversational analysis. It is a chat interface where users uploads files, ask questions in plain English, and receive interactive visual outputs called "Artifacts", making it ideal for quick data exploration.
`Claude Code` for a local dashboard build. It is a terminal based AI coding agent that interacts directly with files on the user's machine, reading data, writing code, and creating files autonomously, always seeking explicit permission for file operations. 
`Cowork` for project organization.  It is an autonomous agent in the Claude Desktop app designed to organize files, automate tasks, and manage project structures directly on the local filesystem, operating within a sandboxed environment for security. 

By the end of this project, we'll have:  
• Interactive charts exploring cloud role salary data, built with `Claude.ai` Artifacts.  
• A local HTML dashboard with Chart.js visualizations, built entirely by `ClaudeCode` in your terminal.  
• An organized project folder with a summary document, created using `Cowork`.  
• Secret Mission: Build a personal "when to use which Claude tool" cheat sheet based on your hands-on experience.  

NOTE: For this project, I used Ubuntu24 as my os therefore, to interpret and execute the commands I used is in `bash`. It will be different if you use Windows unless you active WSL (Windows Subsystem Linux) in your pc. 


## Do I need to pay to do this project?
Yes. All three Claude tools require a Claude Pro subscription ($28/mo) at minimum. Claude Pro gives you access to `Claude.ai`, `Claude Code`, and `Cowork` (via the Claude Desktop app). This project includes instructions on setting up your subscription. The free plan gives you limited access to Claude.ai chat only. Claude Pro ($28/mo) unlocks the full suite of tools you will use in this project: Claude.ai for interactive conversations, Claude Code for terminal-based development, and Cowork for desktop project management. You need Claude Pro at minimum because the free plan does not include access to Claude Code or Cowork.


## Step 1. Sign In and Download the Dataset
To explore the different ways Claude.ai, Claude Code, and Cowork can help you work with data, you first need two things: a Claude account with a Pro subscription, and a dataset to analyze.  

• Go to [claude.ai](https://claude.ai/login) and click Sign up.  
• Enter your email address and create a password.  
• Verify your email.  
• Once logged in, click "Upgrade" in the center of the page.  
• Select the Pro plan ($28/mo) and complete the payment.  


## Create Your Project Folder
Before downloading the dataset, create a folder to keep all your project files organized.
• Press `Ctrl+alt+t` to open a `terminal`. If you're using `VScode` use the shortcut key``Ctrl+Shift+``.  
• Navigate to your Desktop and create a new folder:
```bash
cd ~/Desktop
mkdir "Claude_Compare"
```

• Run the following command to list the folders on your Desktop and once you see the `Claude_Compare` folder, you now have an empty folder ready for your project files.  
```bash
ls 
```  

## Download the Cloud Salary Dataset
• Move to your `Claude_Compare` folder and download the dataset file from this link: [cloud_salaries.csv](https://nextwork.ai/projects/static/ai-claude-compare/cloud_salaries.csv?_gl=1*u0jrdw*_ga*NTkwMDcwNTU1LjE3ODQ1ODk3NTg.*_ga_P3ZJGC0XCG*czE3OTA0MTE0NzMkbzU3JGcxJHQxNzkwNDExOTA3JGozMCRsMCRoMA..)  
• Save the file inside the `Claude_Compare` folder you just created. I renamed the file to `dataset.csv`.  
```bash
wget -O dataset.csv <cloud_salaries.csv>
```

💡 What is in this dataset?  
The CSV contains around 300 rows of realistic cloud job market data. Each row includes a Job Title, City, Salary, Experience Level, Cloud Platform, and Company Size. You will use this data throughout the project to create charts and build a dashboard.  

•  Open the CSV file in any text editor or spreadsheet app to preview its structure.  
