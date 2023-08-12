# Progineer Task 2

This repository contains the code and resources for Task #2, focusing on deploying an application in a containerized environment. The deployment includes one container for the application and one for the database.

## Repository Structure

- `web-app/`: directory contains the main application code and related resources.
- `docker-compose.yml/`: The Docker Compose file that defines the services, networks, and volumes for the application and database containers. It ensures that the application container runs after the database container is up and includes a restart on failure strategy.
- `.env.sample`: Sample environment file.


## Usage

### Prerequisites

- Docker installed

### Instructions

1. **Clone the Repository**
   ```
   git clone https://github.com/Alaa-Bishtawi/alaa-bishtawi-progineer-task2.git
   ```
2. **Navigate to the Repository**
   ```
   cd alaa-bishtawi-progineer-task2
   ```

3. **Prepare Env File**

    Create  env file to specify your ENV variables.


4. **Build and run the image**
   ```
   docker-compose build
   docker-compose up
   ```
