
#!/bin/bash

# Set the default destination or use the custom path
DEST="${1:-$HOME/radius-projects/website-project}"

# Check whether the destination already exists
if [ -e "$DEST" ] || [ -L "$DEST" ]; then
    echo "Error: Destination already exists: $DEST"
    exit 1
fi

# Create the parent directory
mkdir -p "$(dirname "$DEST")" || exit 1

# Create the website directory structure
mkdir -p "$DEST/css" "$DEST/js" "$DEST/images" || exit 1

# Create the root README.md
cat > "$DEST/README.md" <<'EOF'
# Website Project

This is a starter website project built using HTML, CSS, and JavaScript.

It contains the main HTML page, styling files, JavaScript functionality, and an images directory.
EOF

# Create index.html
cat > "$DEST/index.html" <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Website</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/script.js" defer></script>
</head>
<body>
    <h1>Welcome to My Website!</h1>
    <p>This is my first automatically generated website project.</p>
</body>
</html>
EOF

# Create CSS README.md
cat > "$DEST/css/README.md" <<'EOF'
# CSS Directory

This directory contains CSS files used to style the website, including colors, layouts, fonts, and other visual properties.
EOF

# Create style.css
cat > "$DEST/css/style.css" <<'EOF'
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    color: #333;
    text-align: center;
    padding: 50px;
}

h1 {
    color: #007bff;
}

p {
    font-size: 18px;
}
EOF

# Create JavaScript README.md
cat > "$DEST/js/README.md" <<'EOF'
# JavaScript Directory

This directory contains JavaScript files that add interactivity and dynamic behavior to the website.
EOF

# Create script.js
cat > "$DEST/js/script.js" <<'EOF'
console.log("Welcome to my website!");
EOF

# Create Images README.md
cat > "$DEST/images/README.md" <<'EOF'
# Images Directory

This directory stores website images such as JPG, PNG, SVG, and WebP files.
EOF

# Display the completion message
FULL_PATH="$(cd "$DEST" && pwd)"

echo "Website project created successfully!"
echo "Project location: $FULL_PATH"

