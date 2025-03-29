+++
title = "Generate compile_commands.json"
author = ["Pranchal Shah"]
draft = false
+++

# Script to generate compile_commands.json

Necessary to create for LSP to work fine with neovim

```bash
#!/bin/bash
# create_compile_commands.sh - Generate compile_commands.json with smart include detection

# Default compiler if not specified
COMPILER=${1:-"clang"}

echo "🔍 Scanning project structure..."

# Find all directories containing header files
HEADER_DIRS=$(find . -name "*.h" -o -name "*.hpp" | xargs dirname | sort | uniq)

# Build include flags
INCLUDE_FLAGS=""
for dir in $HEADER_DIRS; do
  INCLUDE_FLAGS="$INCLUDE_FLAGS -I$(pwd)/$dir"
done

echo "📦 Found $(echo "$HEADER_DIRS" | wc -l | tr -d ' ') header directories"
echo "🔧 Creating compile_commands.json..."

# Create the compile_commands.json file
echo '[' > compile_commands.json

# Process all source files
find . -name "*.c" -o -name "*.cpp" -o -name "*.cc" | while read -r file; do
  # Trim the leading ./
  clean_file=$(echo "$file" | sed 's|^\./||')
  
  # Add entry for this file (without trailing comma)
  echo '  {
    "directory": "'$(pwd)'",
    "file": "'$(pwd)/$clean_file'",
    "command": "'$COMPILER' '$INCLUDE_FLAGS' -c '$clean_file'"
  },' >> compile_commands.json
done

# Remove trailing comma from the last entry
sed -i.bak '$ s/,$//' compile_commands.json
echo ']' >> compile_commands.json
rm -f compile_commands.json.bak

echo "✅ Done! Created compile_commands.json with $(grep -c "file" compile_commands.json) entries"
echo "🚀 Restart your LSP server to apply changes"
```
