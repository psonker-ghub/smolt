# Tags to hunt for, as one ripgrep alternation
tags := 'TODO|FIXME|HACK|XXX'

# Lines of context to show around each match
ctx := '1'

# Paths ripgrep must skip (keep in mind that git ignore rules are respected):
skip := replace(trim('''
-g '!.git'
-g '!scripts/tasks.justfile'
'''), "\n", " ")

# skip := "-g '!.git' -g '!scripts/tasks.justfile'"

# Every TODO/FIXME/HACK/XXX: file, line, and surrounding context
[no-cd]
todo *args:
    @rg --line-number --context {{ctx}} --hidden {{skip}} '{{tags}}' . {{args}} || test $? -eq 1

# Same, but also descend into git-ignored files (node_modules/, target/, …)
[no-cd]
todo-everything *args:
    @rg --line-number --context {{ctx}} --hidden --no-ignore {{skip}} '{{tags}}' . {{args}} || test $? -eq 1

# One count per file instead of every line
[no-cd]
todo-count:
    @rg --count --hidden {{skip}} '{{tags}}' . || test $? -eq 1
