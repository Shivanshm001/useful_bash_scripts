# Shell Script Repository

This repository contains useful shell scripts for various tasks.

## Scripts

### createComponent.sh

This script is used to create a React JSX component. It takes three arguments:

1. `DIRECTORY_PATH`: The path where the component should be created.
2. `COMPONENT_NAME`: The name of the component.
3. `OPTION`: An optional `-s` flag. If provided, the component will be created inside a subfolder of the same name as the component.

#### Usage

```bash
bash createComponent.sh <DIRECTORY_PATH> <COMPONENT_NAME> [OPTION]
```
#### Example
```bash
bash createComponent.sh . Home -s
```
