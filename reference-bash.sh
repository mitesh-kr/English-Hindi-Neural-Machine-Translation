#!/bin/bash

# Create virtual environment
python -m venv env

# Activate virtual environment
source env/bin/activate  # On Windows, use: env\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Download NLTK data
python -c "import nltk; nltk.download('punkt')"

# Create directories for models
mkdir -p models

echo "Setup completed! Now download the dataset from Google Drive:"
echo "https://drive.google.com/file/d/1bEK6RCdnXIqg8JGrJIMvDaAM-baalGwt/view?usp=sharing"
echo "Extract the files and place them in the current directory."
