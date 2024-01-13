## Make `fish` the default

1. check the fish path with `which fish`. In the examples below it was located at: `/opt/homebrew/bin/fish`. On older Macs the path might differ.
2. **Add fish to the know shells**
  run the command: `sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'`
3. Restart your terminal
4. **Set fish as the default shell**
   run the command: `chsh -s /opt/homebrew/bin/fish`
5. Restart your terminal and check if it launched with `fish` or not
6. **Add brew binaries in fish path**
   run the command: `fish_add_path /opt/homebrew/bin`
