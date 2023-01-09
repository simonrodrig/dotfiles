# Gnome Setup

## Extensions

## Keybinds

### Brightness Keys
```yaml
Name: Brightness Down
Command: ddcutil setvcp 10 - 10
Shortcut: Monitor brightness down
```

```yaml
Name: Brightness Up
Command: ddcutil setvcp 10 + 10
Shortcut: Monitor brightness up
```

## Tweaks

### Unbind Brightness Keys
Useful for when you have a keyboard with brightness keys and wish to remap them
to something that actually works.

```bash
gsettings set org.gnome.settings-daemon.plugins.media-keys screen-brightness-down-static "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys screen-brightness-up-static "['']"
```