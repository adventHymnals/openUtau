# Open Utau for Linux

This is an installer for [open utau](https://github.com/stakira/OpenUtau) for linux.

If you are here then you probably know what openUtau is. You can refer to it for documentation.

## Installation
Download from the [latest release](https://github.com/adventHymnals/openUtau/releases/latest)

Or use the commands below:

```bash
curl --silent "https://api.github.com/repos/adventHymnals/openUtau/releases/latest"|   grep "browser_download_url.*amd64.deb" | head -n 1 | cut -d : -f 2,3 | tr -d \"  | xargs wget -O tmp.deb && sudo dpkg -i tmp.deb
```

