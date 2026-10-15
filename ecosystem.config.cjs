{
  "apps": [
    {
      "name": "analisis-pub",
      "cwd": "/home/deploy/analisis-pruebapublica",
      "script": "node",
      "args": "dist/server/entry.mjs",
      "env": {
        "PORT": "3018",
        "HOST": "127.0.0.1",
        "ADMIN_SECRET": "CHANGE_ME"
      }
    }
  ]
}
