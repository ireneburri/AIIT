# Use official Python 3.10 image as base
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files
COPY . .

# Set default command to run the notebook
# CMD ["jupyter", "nbconvert", "--to", "notebook", "--execute", "main.ipynb", "--output", "executed_main.ipynb"]

CMD ["bash"]