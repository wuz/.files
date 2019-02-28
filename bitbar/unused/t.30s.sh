#!/bin/bash

function t {
  ~/bin/t.py --task-dir ~/.tasks --list tasks
}

echo "$(t | wc -l) tasks"

echo "---"
t
