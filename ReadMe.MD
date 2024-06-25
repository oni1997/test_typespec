### Simple Test API Mock with Prism
### This document describes how to set up a mock API server for a simple Todo API using Prism and TypeSpec.

**Prerequisites:**
Node.js and npm installed on your system.

**Steps:**
**Install Dependencies:**

**Bash**
`npm install @typespec/http @typespec/rest @typespec/openapi3`
`npm install -g @stoplight/prism-cli`

Use code with caution.

Define Typespec (Optional):
You can define your API using Typespec, a static type language for APIs.
The provided commands assume you don't have a Typespec definition file.

Compile Typespec to OpenAPI (Optional):
**Bash**
`tsp compile . --emit @typespec/openapi3`

Use code with caution.
This generates an OpenAPI YAML file from your Typespec definition in the current directory (assumed to be named openapi.yaml).

**Start Mock Server:**
**Bash**
`prism mock tsp-output/@typespec/openapi3/openapi.yaml`

Use code with caution.
This starts a mock server using the OpenAPI definition file (openapi.yaml).
Expected Behavior:

The mock server will be listening on port 4010 by default.

You can interact with the mock server using HTTP clients like curl or Postman.
The mock server supports the following API endpoints for managing todos:

GET /todos: Retrieves all todos.
POST /todos: Creates a new todo.
GET /todos/{id}: Retrieves a specific todo by its ID.
PUT /todos/{id}: Updates a specific todo by its ID.
DELETE /todos/{id}: Deletes a specific todo by its ID.

**Verifying the Mock Server:**
Check if the server is running by accessing http://localhost:4010 in your web browser. Prism should display a welcome message.
You can use tools like curl or Postman to send requests to the mock server endpoints.
