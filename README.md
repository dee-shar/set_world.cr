# set_world.cr
Web-API for [set.world](https://set.world/) a fantasy role playing world where anyone can query and generate the entities inside of the world and reference them anywhere

## Example
```cr
require "./set_world"

set_world = SetWorld.new
skills = set_world.get_skills()
puts skills
```
