![JetBrains Toolbox](/snap/gui/icon.svg)

# JetBrains Toolbox
JetBrains Toolbox packaged as a Snap.

## Installation
```bash
sudo snap install jetbrains-toolbox
```
> Note: The current published version is in _**beta**_ and confined as `strict` as well. Currently waiting for the manual review from the Snap Store team to move it to **stable** and `classic` confinement. The current released **beta** doesn't behave as expected due to the confinement, so please wait for the **stable** release.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request.

## How to Build
To build the Snap package locally, follow these steps:

1. Follow the instructions to set up `Snapcraft` and `lxd` on your system: https://documentation.ubuntu.com/snapcraft/stable/how-to/set-up-snapcraft/
   
2. Clone the repository
3. Run `build.sh` to build and pack the Snap package.
4. Install the generated Snap package using `sudo snap install jetbrains-toolbox_*.snap --dangerous --classic`
4. Test the application to ensure it works correctly.
5. Submit a pull request with your changes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
