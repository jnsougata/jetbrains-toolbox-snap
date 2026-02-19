# JetBrains Toolbox
JetBrains Toolbox packaged as a Snap.

## Installation
```bash
sudo snap install jetbrains-toolbox
```

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request.

## How to Build
To build the Snap package locally, follow these steps:

1. Follow the instructions to set up `Snapcraft` and `lxd` on your system: https://documentation.ubuntu.com/snapcraft/8.6.1/howto/set-up-snapcraft/
   
2. Clone the repository
3. Run `build.sh` to build and pack the Snap package.
4. Install the generated Snap package using `sudo snap install jetbrains-toolbox_*.snap --dangerous --classic`
4. Test the application to ensure it works correctly.
5. Submit a pull request with your changes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
