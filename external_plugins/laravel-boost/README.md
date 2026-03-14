# Laravel Boost Plugin

[Laravel](https://laravel.com) is a PHP web application framework. This plugin provides an intelligent Laravel development toolkit via MCP, offering deep assistance for Artisan commands, Eloquent queries, routing, migrations, and framework-specific code generation.

## Setup

### 1. Install Laravel

Make sure you have a Laravel project with Composer dependencies installed:

```bash
composer install
```

### 2. Enable the Boost MCP Server

The plugin starts the MCP server via:

```bash
php artisan boost:mcp
```

This requires the `laravel-boost` package to be installed in your Laravel project:

```bash
composer require laravel/boost
```

### 3. Install the Plugin

Add this plugin to your Claude Code session from within your Laravel project directory.

## Available Tools

Once connected, Claude Code can:

- **Artisan Commands** — Run and explain any `php artisan` command
- **Eloquent Queries** — Generate, optimize, and explain Eloquent ORM queries
- **Routing** — View and manage route definitions, middleware, and controllers
- **Migrations** — Create and run database migrations with proper syntax
- **Code Generation** — Scaffold models, controllers, form requests, jobs, and more

## Example Usage

Ask Claude Code to:
- "Create a migration to add a `status` column to the `orders` table"
- "Generate a resource controller for the `Product` model"
- "Show me all registered routes for the API"
- "Write an Eloquent query to get users with pending orders"
- "Run the database seeders"

## Requirements

- PHP 8.1+
- Laravel 10+
- Composer

## Documentation

For more information, visit the [Laravel documentation](https://laravel.com/docs).
