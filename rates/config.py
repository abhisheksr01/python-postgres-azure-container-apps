import os
DB = {
    "name": str(os.getenv("name", "postgres")),
    "user": str(os.getenv("user", "postgres")),
    "host": str(os.getenv("host", "localhost"))
}
