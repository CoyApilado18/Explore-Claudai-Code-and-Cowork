## What We'll Build
We'll use all three Claude tools to analyze, visualize, and organize cloud role salary data, building a different output with each tool to experience their unique strengths.

Diagram shows 
![alt images](https://github.com/CoyApilado18/Explore-Claudai-Code-and-Cowork/blob/78b2002fd6ca234e29809137d4f473c302d4e3aa/images/Diagram.png)

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
![alt images](https://github.com/CoyApilado18/Explore-Claudai-Code-and-Cowork/blob/78b2002fd6ca234e29809137d4f473c302d4e3aa/images/claudeai-upload-icon.png)

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

![alt images](https://github.com/CoyApilado18/Explore-Claudai-Code-and-Cowork/blob/78b2002fd6ca234e29809137d4f473c302d4e3aa/images/interactive-bar-chart.png)  


• Try generating another chart. Type:
```bash
Now create an Artifact with a chart showing salary ranges by city, colored by experience level
```  

![alt images](https://github.com/CoyApilado18/Explore-Claudai-Code-and-Cowork/blob/78b2002fd6ca234e29809137d4f473c302d4e3aa/images/salary-ranges-city-experience-artifact.png)

💡 What are `Artifacts`?
`Artifacts` are interactive visual outputs that Claude.ai renders live in your browser. They can be charts, code snippets, documents, or even small applications. You can interact with them, download them, or iterate on them with follow-up prompts.  


## Step 3. Build a Dashboard with Claude Code
You've explored your salary data conversationally and generated some great charts inside Claude.ai. But those charts live in a chat window. What if you want a real dashboard you can open anytime, deploy to share with others, or customize further?  

That's where `Claude Code` comes in. It's a terminal-based coding agent that reads and writes files on your computer. You type natural language, it writes code. In this step, you'll install Claude Code, then use it to build an interactive HTML dashboard from the same salary data.  

In this step, we'll:
• Install Claude Code and authenticate.  
• Explore the salary data directly from your terminal.  
• Build an interactive dashboard with Chart.js charts.  

`Claude Code` is best for building things. Unlike `Claude.ai` where you upload files to a chat window, `Claude Code` works directly with files on your machine. It can read your data, write code, run scripts, and create files autonomously.


💡 When should I use Claude Code instead of Claude.ai?
Use `Claude.ai` (the browser chat) when you want to explore data, ask questions, and generate quick visuals without touching your file system. 
Use `Claude Code` (the terminal tool) when you want to "build" something that lives on your computer, like a dashboard, a script, or a full application. `Claude Code` reads and writes real files, so the output is permanent.

• Open a terminal window and navigate to your dataset folder:
```bash
cd ~/Desktop/Claude_Compare/
```

• Start Claude Code:
```bash
claude
```

• Confirm you see the Claude Code interactive prompt ready for input.
![alt images](https://github.com/CoyApilado18/Explore-Claudai-Code-and-Cowork/blob/78b2002fd6ca234e29809137d4f473c302d4e3aa/images/claude.png)


💡 What is Claude Code?
`Claude Code` is a terminal-based AI coding agent by Anthropic. You run it from your command line, give it natural language instructions, and it reads, writes, and executes code directly on your computer. It's best for building tools, writing code, and creating files that live on your machine.  


### Explore the Data with Claude Code
Now let's see how Claude Code interacts with local files differently from Claude.ai.

• In the Claude Code prompt, type this message and press `Enter`:  
```bash
Look at the cloud salary CSV in this folder and tell me what's in it
```

`Claude Code` reads the file directly from your local filesystem. There's no uploading involved. It scans the CSV, understands the columns and rows, and gives you a summary.  

💡 What's different from Claude.ai?
In Step 2, you uploaded the CSV to Claude.ai's chat window. Here, Claude Code reads the file directly from your computer's file system. This means it can work with files of any size and access multiple files at once without manual uploads.  


### Build an Interactive HTML Dashboard
This is where Claude Code really shines. You're going to ask it to build an entire interactive dashboard with a single prompt.

• In the Claude Code prompt, type this message and press `Enter`:
```bash
Create an interactive HTML dashboard that visualizes this cloud salary data. Use Chart.js loaded from a CDN, no Python. Include: a bar chart of average salary by role, a city comparison chart, and a breakdown by cloud platform. Save it as dashboard.html.
```

Watch Claude Code work. It creates the HTML file with embedded Chart.js charts, all in one go.
• If Claude Code asks for permission to create or write files, type `y` and press `Enter` to grant access.


💡 Why is Claude Code asking for permission?
`Claude Code` runs on your local machine and needs your explicit approval before it creates, edits, or deletes any files. This keeps you in control of what changes are made to your computer. You will see these permission prompts each time Claude Code wants to write a new file or modify an existing one.  


• Open `dashboard.html` in your browser. You can double-click the file in your file explorer.
![alt images](https://github.com/CoyApilado18/Explore-Claudai-Code-and-Cowork/blob/78b2002fd6ca234e29809137d4f473c302d4e3aa/images/dashboard-html.png)

- Your dashboard is a standalone HTML file with interactive charts. You can hover over data points, and it all runs locally in your browser with zero dependencies.
- Your dashboard may already include some filtering or interactive features depending on what Claude Code generated. Take a look at what you have before iterating.

• Now iterate on your dashboard. Try this prompt in `Claude Code`:
```bash
Add a search bar
```
![alt images](https://github.com/CoyApilado18/Explore-Claudai-Code-and-Cowork/blob/78b2002fd6ca234e29809137d4f473c302d4e3aa/images/dashboard-html-search-bar.png)

💡 Why is this powerful?
`Claude Code` writes and executes code autonomously. The output files appear directly in your folder. You can keep iterating with natural language prompts to add features like responsive layouts, dark mode toggles, or entirely new charts.

Now we have got an interactive dashboard on our machine.


## Step 4. Organize our Project with Cowork
Our interactive dashboard is built and running locally. But if we take a look at our Claude_Compare/ directory, tt has the original CSV, chart images, and an HTML dashboard all mixed together. Before wrapping up, let's get everything organized.

"Claude Desktop" has a built-in autonomous agent called `Cowork` that works directly on our local files. We describe what we want, it handles the rest. In this step, we will install the Claude Desktop app, share our project folder with `Cowork`, and let it organize everything into a clean structure with a polished summary document.  

In this step, we'll:
• Install and set up the Claude Desktop app.  
• Share our project folder with `Cowork`.  
• Use `Cowork` to organize files and generate a summary document.  


### Install the Claude Desktop App
`NOTE`: My Ubuntu24 is running on my Oracle Virtual Box and hence, I'm getting an error installing Claude Desktop as the Hardware Virtualization should be turned on. It gives me an error something like "..this cannot be turned on on this machine". In summary, I don't think the Claude Desktop will work in my Ubuntu machine. Afterall, in Linux, this is still in Beta test as what the [Claude Documentation](https://code.claude.com/docs/en/desktop-linux) states. It was tedious troubleshooting this so I switched to my Windows machine to finish the project. This step is more of a friendly "drag-and-drop" web based activity as long as you're using the same Claude acoount. The only thing I did so far is to install Claude in the git bash/wsl terminal. See [macOS, Linux, WSL](https://code.claude.com/docs/en/overview#terminal). So this step can be completed even if switching to Windows.  

So far we have used `Claude.ai` in the browser and `Claude Code` in the terminal. Now it is time to set up the Claude Desktop app so we can use `Cowork`.  

• Go to [claude.ai/download](https://claude.com/download)
• Download the `.msix` installer.  
• Open the downloaded installer and follow the setup wizard.  
• Launch Claude from the Start menu once installation finishes.  
• Sign in with the same Anthropic account you used for `Claude.ai`.  
• It will launched the Claude Desktop app then just sign-in. 

Once you're in, now let's switch to `Cowork` mode.

💡 Why install a separate app when you already have Claude.ai?
`Claude.ai` runs in your browser and works with uploaded files. `Cowork` runs inside the desktop app and works directly on files on your computer. It can read folder contents, rename files, create new documents, and move things around, all without you typing terminal commands.  

### Switch to Cowork Mode and Share Your Folder

• Look for the `Cowork` tab in the Claude Desktop app. It may appear in the sidebar on the left or at the top of the window, depending on your app version. Click it to switch modes.

💡 What is `Cowork` best for?
`Cowork` excels at organizing files, automating repetitive tasks, and hands-off work. You describe a goal in plain language, and Cowork handles the steps autonomously.

`Cowork` can only access folders you explicitly share. This sandboxed approach keeps the rest of your computer safe.  
• Click the Work in a folder button at the bottom left of the Cowork window.  
• Select your Claude_Compare/ folder.  

`Cowork` confirms it now has access to the folder and lists the files it can see.  

💡 Why do I have to share a folder?  
Cowork runs in a sandboxed environment. It cannot see or modify any files on your computer unless you grant access to a specific folder. This protects your system while still letting Cowork do useful work.  

How is Cowork different from Claude Code?  
Both tools can work with files on your computer, but they are designed for different workflows. `Claude Code` runs in your terminal and is best for writing and executing code. `Cowork` runs in the Claude Desktop app and is best for organizing, renaming, and managing files without touching the terminal. Think of `Claude Code` as your coding assistant and `Cowork` as your project manager.  

### Organize Your Files
We might only have a CSV and an HTML file in our folder right now. That's okay! This exercise is about understanding what `Cowork` can do. Imagine we had dozens of files from a longer project. `Cowork` would save us serious time sorting through them. After this project, try pointing `Cowork` at a busy folder like your `Downloads` to see it really shine.

I'll use this task into the Cowork chat and let's watch `Cowork` work autonomously:  
```bash
Organize all the files in this folder. Create subfolders: charts/ for image files, dashboard/ for the HTML dashboard, and data/ for the CSV. Rename files with clear, descriptive names. Then create a summary document (summary.md) listing every file, which Claude tool created it, and a one-line description of what it contains.
```

Cowork will read each file, create the subfolders, move and rename files, and generate the summary document. This may take a minute or two.  

• Once Cowork finishes, let's review the organized folder structure.  
• I'll open `summary.md` and review the contents. You can also view actual the file in this repo.  
![alt images](https://github.com/CoyApilado18/Explore-Claudai-Code-and-Cowork/blob/78b2002fd6ca234e29809137d4f473c302d4e3aa/images/summary-md.png)


## Extra Credit
We have explored data with Claude.ai, built a dashboard with Claude Code, and organized files with Cowork. But which tool should we reach for next time?  
In this extra credit, we will create a personal decision framework -- a cheat sheet that maps each Claude tool to the situations where it works best.  

In this extra credit, we'll:  
• Decide which Claude tool to use for building your cheat sheet.  
• Create a "when to use which" decision framework based on your hands-on experience.  
• Save your cheat sheet for future reference.  

💡 Why build a cheat sheet?  
You have used all three Claude tools in this project. Each one has a sweet spot, but it is easy to forget the differences once you move on. A cheat sheet gives you a quick reference you can pull up whenever you start a new task.  

Use Claude Code if you want a tool you can run from your terminal anytime. Instead of a static document, Claude Code will write a small script that asks you what you need and recommends the right Claude tool.  
Open your terminal and navigate to your project folder:
```bash
cd ~/Claude_Compare/
```

• Start Claude Code:
```bash
claude
```

• I'll use this following prompt:
```bash
Create a file called which-claude.sh that helps me decide which Claude tool to use. The script should:

1. Ask me "What do you need to do?" and show these options:
   a) Explore data or ask questions
   b) Write code or build something
   c) Organize files or automate tasks

2. Based on my answer, recommend the right tool with a one-line explanation:
   - a → Claude.ai: best for uploading files, asking questions, and generating Artifacts
   - b → Claude Code: best for writing code, reading files, and building projects
   - c → Cowork: best for organizing folders, renaming files, and hands-off tasks

3. After showing the recommendation, print a quick tip for getting started with that tool.

Make the script executable.
```

• Open a new terminal window and run your new tool:
```bash
bash ~/claude-compare/which-claude.sh
```

### Review Your Cheat Sheet
Whatever tool you chose, review your cheat sheet and make sure it covers:  

• Claude.ai -- best for exploring, quick Q&A, and generating visual Artifacts.  
• Claude Code -- best for building, writing code, and creating files on your machine.  
• Cowork -- best for organizing, automating file tasks, and hands-off work.  






