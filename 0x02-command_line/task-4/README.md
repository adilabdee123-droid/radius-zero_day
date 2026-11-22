Task 4: Bash Script for Website Project Generation

1. Purpose of the Script

The "create_website.sh" script automatically creates a complete website project using Bash.

It generates the required directories and files, including HTML, CSS, JavaScript, and README documentation files. It also adds meaningful starter content to each file.

2. How to Execute the Script

Navigate to the project root directory and execute:

bash task-4/create_website.sh

The script will automatically generate the website project.

3. Default Output Location

When no custom directory is provided, the script creates the project at:

~/radius-projects/website-project/

4. Custom Output Location

The script accepts an optional directory path as its first command-line argument.

Example:

bash task-4/create_website.sh "$HOME/my-custom-website"

When a custom path is provided, the website project is generated at that location instead of the default location.

5. Generated Directory Structure

The script creates the following structure:

website-project/
├── README.md
├── index.html
├── css/
│   ├── README.md
│   └── style.css
├── js/
│   ├── README.md
│   └── script.js
└── images/
    └── README.md

6. Protection of Existing Directories

Before creating the project, the script checks whether the destination directory already exists.

If the directory exists, it displays an error message and stops execution.

This prevents existing files from being overwritten, modified, or deleted.

7. Completion Message

After successfully creating the website project, the script displays a success message and the full location of the generated project.

8. Conclusion

Through this task, I learned how to write and execute Bash scripts, use command-line arguments, create directories and files automatically, generate meaningful file contents, and protect existing directories.
