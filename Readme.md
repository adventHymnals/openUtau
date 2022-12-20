# Open Utau for Linux

This is an installer for [open utau](https://github.com/stakira/OpenUtau) for linux.

If you are here then you probably know what openUtau is. You can refer to it for documentation.

## Installation
Download from the [latest release](https://github.com/adventHymnals/openUtau/releases/latest)

Or use the commands below:

```bash
curl --silent "https://api.github.com/repos/adventHymnals/openUtau/releases/latest"|   grep "browser_download_url.*amd64.deb" | head -n 1 | cut -d : -f 2,3 | tr -d \"  | xargs wget -O tmp.deb && sudo dpkg -i tmp.deb
```

## Usage
The github workflow handles the creating of the deb packages. Once you clone the repo, you can run:

```bash
git tag v1.0
git push origin v1.0
```

On your local machine you can use:
```bash
./build.sh
```

It's a big hussle implementing the download in the makefile when it can so easily be handled in the bash file.
