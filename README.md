## What We'll Build
We'll use all three Claude tools to analyze, visualize, and organize cloud role salary data, building a different output with each tool to experience their unique strengths.

Diagram shows 
![alt images](Diagram.png)

The same dataset flows into: 
• `Claude.ai` for conversational analysis. It is a chat interface where users uploads files, ask questions in plain English, and receive interactive visual outputs called "Artifacts", making it ideal for quick data exploration.  
• `Claude Code` for a local dashboard build. It is a terminal based AI coding agent that interacts directly with files on the user's machine, reading data, writing code, and creating files autonomously, always seeking explicit permission for file operations. 
• `Cowork` for project organization.  It is an autonomous agent in the Claude Desktop app designed to organize files, automate tasks, and manage project structures directly on the local filesystem, operating within a sandboxed environment for security. 

By the end of this project, we'll have:  
• Interactive charts exploring cloud role salary data, built with `Claude.ai` Artifacts.  
• A local HTML dashboard with Chart.js visualizations, built entirely by `ClaudeCode` in your terminal.  
• An organized project folder with a summary document, created using `Cowork`.  
• Secret Mission: Build a personal "when to use which Claude tool" cheat sheet based on your hands-on experience.  

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
• Press `Ctrl+alt+t` to open a `terminal`. 
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
The CSV contains around 300 rows of realistic cloud job market data. Each row includes a `Job Title`, `City`, `Salary`, `Experience Level`, `Cloud Platform`, and `Company Size`. We will use this data throughout the project to create charts and build a dashboard.  

• Open the CSV file in any text editor or spreadsheet app to preview its structure. See `dataset.csv` if you want to preview the dataset.


## Step 2. Explore Data with Claude.ai
You have your cloud salary CSV downloaded and you are signed in to Claude.ai. But what can you actually do with this data? The goal of this project is to explore, build, and organize using three different Claude tools. The first tool you will use is `Claude.ai` itself.  

In this step, we'll:  
• Upload and explore cloud salary data conversationally.  
• Generate interactive charts with Artifacts.  

### Upload and Explore the Data
Let's start a new conversation on [claude.ai](https://claude.ai/login).  

• Click on the plus sign on the bottom left corner of the text box.  
• Next, click the attachment button (paperclip icon) and upload the cloud salary CSV you downloaded in Step 1.  
![alt images](claudeai-upload-icon.png)

• Type a question in the chat. Start with something like:
```bash
What are the highest paying cloud roles in this dataset?
```

• Ask a follow-up question:
```bash
Which cities offer higher salaries?
```

• Try one more:
```bash
How do salaries compare across AWS, Azure, and GCP roles?
```

Notice how Claude.ai responds conversationally with formatted text, tables, and explanations. You control every step. Claude responds to each question individually.  

💡 Why is this useful?  
Instead of writing code or building formulas, you can explore your data by simply asking questions in plain English. This makes `Claude.ai` perfect for quick analysis and getting familiar with a new dataset.  


### Generate Interactive Charts with Artifacts
Now let's go beyond text responses and generate interactive charts.

Ask Claude:
```bash
Create an interactive bar chart as an Artifact comparing average salaries across the top 10 cloud roles
```

• Look at the Artifact panel that appears on the right side of the screen. This is an interactive, live-rendered chart that you can hover over and explore, unlike the inline text responses from earlier.  
• Hover over the bars in the chart to see tooltips with exact salary values.  

![alt images](interactive-bar-chart.png)  


• Try generating another chart. Type:
```bash
Now create an Artifact with a chart showing salary ranges by city, colored by experience level
```  

![alt images](salary-ranges-city-experience-artifact.png)

💡 What are `Artifacts`?
`Artifacts` are interactive visual outputs that Claude.ai renders live in your browser. They can be charts, code snippets, documents, or even small applications. You can interact with them, download them, or iterate on them with follow-up prompts.  


## Step 3. Build a Dashboard with Claude Code
You've explored your salary data conversationally and generated some great charts inside Claude.ai. But those charts live in a chat window. What if you want a real dashboard you can open anytime, deploy to share with others, or customize further?  

That's where `Claude Code` comes in. It's a terminal-based coding agent that reads and writes files on your computer. You type natural language, it writes code. In this step, you'll install Claude Code, then use it to build an interactive HTML dashboard from the same salary data.  

In this step, we'll:
• Install Claude Code and authenticate.  
• Explore the salary data directly from your terminal.  
• Build an interactive dashboard with Chart.js charts.  

`Claude Code` is best for building things. Unlike Claude.ai where you upload files to a chat window, Claude Code works directly with files on your machine. It can read your data, write code, run scripts, and create files autonomously.
