# Shell Script Repository

This repository contains useful shell scripts for various tasks.

## Scripts

### create_jsx_component.sh

This script is used to create a React JSX component. It takes three arguments:

1. `DIRECTORY_PATH`: The path where the component should be created.
2. `COMPONENT_NAME`: The name of the component.
3. `OPTION`: An optional `-s` flag. If provided, the component will be created inside a subfolder of the same name as the component.

#### Usage

```bash
bash create_jsx_component.sh <DIRECTORY_PATH> <COMPONENT_NAME> [OPTION]
```
#### Example

  1. Creating Home.jsx component at the current location inside a new subdirectory 'Home' :
       
   ```bash
   bash create_jsx_component.sh . Home -s
   ```
 
   This will create a ```Home.jsx``` file in a new Home directory at the current location.

  2. Creating Home.jsx component at the different location without creating a subdirectory :

  ```bash
  bash create_jsx_component.sh ../pages/ Home
  ```

  This will create a ```Home.jsx``` file inside the pages/ directory without creating a new directory for ```Home.jsx```.
    
    
