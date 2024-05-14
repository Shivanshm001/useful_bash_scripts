# Shell Script Repository

This repository contains useful shell scripts for various tasks.


- [Shell Script Repository](#shell-script-repository)
  - [create\_jsx\_component.sh](#create_jsx_componentsh)
    - [Usage](#usage)
    - [Example](#example)
  - [create-next-app-default.sh](#create-next-app-defaultsh)
    - [Usage](#usage-1)
    - [Example](#example-1)
  - [cd\_up.sh](#cd_upsh)
    - [Usage](#usage-2)
    - [Example](#example-2)


## create_jsx_component.sh

This script is used to create a React JSX component. It takes three arguments:


**Arguments**

1. `DIRECTORY_PATH`: The path where the component should be created.
2. `COMPONENT_NAME`: The name of the component.
3. `OPTION`: An optional `-s` flag. If provided, the component will be created inside a subfolder of the same name as the component.

### Usage

```bash
bash create_jsx_component.sh <DIRECTORY_PATH> <COMPONENT_NAME> [OPTION]
```
### Example

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
    
    




## create-next-app-default.sh

This script is used to create a new nextjs app with default configrations.
It runs ```bash npx create-next-app ``` in the background and passes default values for prompts.

**Arguments** 

1. `[DIRECTORY_PATH]`: The optional name where the nextjs app should be created.

### Usage

```bash
bash create-next-app-default.sh [DIRECTORY_PATH]
```
### Example

  1. Creating nextjs app when `DIRECTORY_PATH` is specified:
       
   ```bash
   bash create-next-app-default.sh ecommerce
   ```
 
   This will initalize a Nextjs app inside a new directory at `./ecommerce`.

   2. Creating nextjs app when `DIRECTORY_PATH` is not specified:

  ```bash
  bash create-next-app-default.sh
  ```

   This will initalize a Nextjs app inside a new default directory at `./next-app`.


## cd_up.sh

This script contains a function `up` that can be used in place of `cd` to 'move up' multiple directories at once.

**Arguments**

1. `NUMBER_OF_DIR`: The number of directories you want to move up.
   
### Usage

```bash
bash create_jsx_component.sh <NUMBER_OF_DIR>
```
### Example

  1. Moving from `/src/app/products/[id]/reviews/[id]` to `/src/app`:
       
   ```bash
   bash cd_up 4
   ```
  or 
  *if the script has been added to ~/.bashrc*

  ```bash
  up 4
  ```
   This will run `cd` in the background $4$ times and change the present working directory to `/src/app`.
