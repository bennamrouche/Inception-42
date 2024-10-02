# Inception Project Presentation

## 🎉 Welcome to the Inception Project!

This project aims to enhance your system administration skills by utilizing Docker to create a fully virtualized infrastructure within a personal virtual machine.

---

## 📚 Project Overview

The **Inception** project will guide you through the setup of a small infrastructure composed of various services, all managed through Docker. You'll learn to create, configure, and connect different services while adhering to industry best practices.

---

## 🛠️ Key Objectives

1. **Virtualization**: Utilize Docker to create isolated environments for each service.
2. **Service Management**: Set up and configure essential services including:
   - NGINX
   - WordPress
   - MariaDB
3. **Networking**: Establish a network to facilitate communication between your containers.
4. **Best Practices**: Understand and implement best practices for Dockerfile creation and container management.

---

## 📋 Project Requirements

To successfully complete the project, you'll need to adhere to the following guidelines:

- The project must be executed within a Virtual Machine.
- All configuration files should be placed in the `srcs` folder.
- A `Makefile` is required at the root of your directory to automate the setup and build the Docker images using `docker-compose.yml`.

---

## 🚀 Mandatory Setup

You will be required to set up the following services in Docker containers:

1. **NGINX**:
   - Configure a Docker container with NGINX using TLSv1.2 or TLSv1.3 only.

2. **WordPress + PHP-FPM**:
   - Set up a Docker container for WordPress with PHP-FPM (without NGINX).

3. **MariaDB**:
   - Create a Docker container running only MariaDB.

4. **Volumes**:
   - One volume for the WordPress database.
   - A second volume for the WordPress website files.

5. **Docker Network**:
   - Establish a docker network to connect all containers.

6. **Container Restart Policy**:
   - Ensure that the containers restart in case of a crash.

### 🚫 Important Restrictions

- Do not use pre-built Docker images (except for Alpine/Debian).
- Avoid commands that run infinite loops (e.g., `tail -f`, `bash`, `sleep infinity`, `while true`).
- Store sensitive information in a `.env` file and ensure it's ignored by git.


