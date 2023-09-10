By default, NixOS does not support binaries running and updating outside of those provided by the packagemanger. But there is away to around this.

In the folder (directory) you installed Mozilla Firefox, create a shell.nix file in that directory with the following content:

```bash
{ pkgs }: mkShell {
  buildInputs = [
    pkgs.alsaLib
    pkgs.libXcomposite
    pkgs.libXcursor
    pkgs.libXdamage
    pkgs.libXext
    pkgs.libXi
    pkgs.libXt
    pkgs.libXtst
    pkgs.libXrandr
    pkgs.pulseaudio
  ];
}
```
Run nix-shell in the same terminal where you created the shell.nix file. This command will load the required dependencies and set up an environment where Firefox can run.

Keep in mind that using Nix Shell this way doesn't provide automatic updates.

To allow Firefox, installed manually from Mozilla, to update itself on NixOS, you need to make sure it has the necessary permissions to write to its installation directory for updates. By default, NixOS mounts /nix and /nix/var as read-only, which could prevent Firefox from updating itself.

To enable automatic updates for Firefox on NixOS, you can do the following:

Modify the NixOS configuration to allow write access to the Firefox installation directory. Add the following lines to your NixOS configuration (typically located at /etc/nixos/configuration.nix):

```bash
environment.systemPackages = [
  # Your other packages...
  pkgs.firefox
];

systemd.services.firefox-updater = {
  wantedBy = [ "multi-user.target" ];
  serviceConfig = {
    Type = "oneshot";
    ExecStart = ''${pkgs.firefox}/bin/updater '' + '/path/to/firefox/folder';
  };
};

```
Replace /path/to/firefox/folder with the actual path where you have installed Firefox.

After adding the configuration, apply the changes by rebuilding NixOS:

```bash
sudo nixos-rebuild switch
```

Reboot and going forward, Firefox should have the permissions to automatically update and run as normal, as it would in any other distro. 
