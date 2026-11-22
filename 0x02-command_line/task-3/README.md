Task 3: File Searching with find and grep

1. Purpose of find

The "find" command is used to search for files and directories based on their names, types, locations, and other conditions.

Example:

find practice/search-lab -type f

This command displays all files inside the search-lab directory.

2. Purpose of grep

The "grep" command is used to search for specific words or patterns inside files.

Example:

grep -in "Git" practice/search-lab/logs/development.txt

This command searches for the word Git inside development.txt and displays the matching line number.

3. Difference Between find and grep

- "find" searches for file and directory names.
- "grep" searches for text or words inside files.

Examples:

- "find" locates development.txt.
- "grep" searches for a specific word inside development.txt.

4. Combining find and grep

The "find" and "grep" commands can be combined to locate files and search their contents.

Example:

find practice/search-lab -type f -name "*.txt" -exec grep -in "Git" {} \;

This command finds all text files inside search-lab and searches for the word Git inside them.

Conclusion

I learned how to locate files and directories using "find", search for text inside files using "grep", and combine both commands to search multiple files efficiently.
