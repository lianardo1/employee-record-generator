#!/bin/bash

# ------------------------------------------
# MY CUSTOM EMPLOYEE GENERATOR
# Built by Liam Murray
# Project: Linux Automation Onboarding Tool
# ------------------------------------------

# Make my storage folder if it doesn't exist
mkdir -p my_staff_files

# Move inside the folder to keep files organized
cd my_staff_files || exit

# Find the highest existing employee number 
last_used_id=$(ls employee*.txt 2>/dev/null | \
	      sed -E 's/employee([0-9]+)\.txt/\1/' | \
	      sort -n | \
 	      tail -1)

# If no files exist yet, start counting from 0 
if [ -z "$last_used_id" ]; then 
	last_used_id=0
fi

# Calculate range for next batch of 60
next_start=$((last_used_id + 1))
next_end=$((last_used_id + 60))

# Make each employee file
for ((id=next_start; id<=next_end; id++))
do 
cat > "employee${id}.txt" << END_OF_MY_RECORD
Employee ID: $id
Status: Active 
END_OF_MY_RECORD
done

# Show completion results
echo "🎉 My custom generator finished!"
echo "Created files: employee${next_start}.txt → employee${next_end}.txt"
echo "Total records I have now $(ls employee*.txt | wc -l)"


