#!/bin/bash

#Name: GILBERT NDEKWA SIMON
#CLASS: LINUX AND BASH SCRIPTING
#TOPIC: FINAL PROJECT

#################################################################################################################################################

#1) Write a bash script that does something cool. You can use an existing project stig and stig viewer and extend its functionality. Make sure that you properly comment your code and that it is thoroughly tested

#2) Write a readme for your script that explains what it does and how to use it, along with examples of properly formatted command line entries.

#3) Create a Github and put your project on it (you still need to turn it in on Canvas

#4) Provide any input files needed to test your script (if applicable)

#####################################################################################################################################################################


# Script: stig_report_generator.sh
# Description: This script generates reports based on STIG files using stig and stig viewer.
# Usage: ./stig_report_generator.sh <STIG_FILE> <OUTPUT_DIR>
# Example: ./stig_report_generator.sh my_stig_file.xml reports/

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: ./stig_report_generator.sh <STIG_FILE> <OUTPUT_DIR>"
    exit 1
fi

# Assign arguments to variables
STIG_FILE=$1
OUTPUT_DIR=$2

# Check if output directory exists, if not, create it
if [ ! -d "$OUTPUT_DIR" ]; then
    mkdir -p "$OUTPUT_DIR"
fi

# Generate reports using stig viewer
echo "Generating reports..."
stig-viewer -f csv -o "$OUTPUT_DIR/stig_report.csv" "$STIG_FILE"
stig-viewer -f html -o "$OUTPUT_DIR/stig_report.html" "$STIG_FILE"
echo "Reports generated successfully in $OUTPUT_DIR"



