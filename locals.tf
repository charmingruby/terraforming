locals {
  servers = flatten([
    for filepath in fileset(path.module, "servers/*.yaml") : flatten([
      for file in yamldecode(file(filepath)) : [
        for server in file.servers : {
          name = "${server.name}-${file.environment}"
          size = server.size
          type = server.type
        }
      ]
    ])
  ])
}
