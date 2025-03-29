---
title: " Neovim "
date: 2024-01-31T13:37:00+00:00  # Creation timestamp
lastmod: 2024-01-31T14:20:00+00:00  # Last modified
draft: true
---


ciw = change inner word

shift + j appends next line at the end of current

create `compile_commands.json` for c projects
```bash
find . -name "*.c" -o -name "*.h" | xargs -I{} echo '{"directory":"'$(pwd)'","file":"'$(pwd)'/{}","command":"clang -I'$(pwd)'/unix -c {}"}' > compile_commands.json.entries
echo '[' > compile_commands.json
cat compile_commands.json.entries | tr '\n' ',' | sed 's/,$//' >> compile_commands.json
echo ']' >> compile_commands.json
rm compile_commands.json.entries
```
