# dotfiles

## packages

### look into what should be global, probably all of them since they'll make up my dev toolbox

- nodemon (as a global dev dependency...see if global dev dependencies can be part of dotfiles... might add other global node dev dependencies that can be used on any project as you find useful tools for nodejs development) (actually an npm install)

## extensions

- dotenv (vscode ext)
- eslint (vscode ext)
- docker (vscode ext)
- sass (vscode ext)
- Live Sass Compiler (vscode ext)
- liveserver (vscode ext)
- quokkajs (vscode ext)
- settings sync (vscode ext)
- prettier (yay for autoformatting! dont forget to enable format on save and set default formatter in vscode settings to prettier-vscode.). also maybe prettier config file? (see nodefarm part 1 from jonas, its just a .prettierrc file, though it might just be a project by project basis) (vscode ext)
- todo highlight (vscode ext)
- pug beautify (maybe? apparently its used for building templates in node, according to jonas?)

---

## themes

- tokyo night (from the extensions tab)
- catppuccin (they have a github repo)

---

## general programs

- firefox
- npm i -g typescript
- vscode (duh. and themes: see below)
- nodejs
- postman
- gitbash (if still on windows)
- mongoDB (incl compass)
- wireshark
- burpsuite
- https://httpie.io/
- linode (idk if it actually has an app, maybe its just the webapp)
- https://cli.github.com/

---

## links for dotfiles pointers

https://www.webpro.nl/articles/getting-started-with-dotfiles
https://dotfiles.github.io/
https://dotfiles.github.io/tutorials/
https://kalis.me/dotfiles-automating-macos-system-configuration/
https://pawelgrzybek.com/sync-vscode-settings-and-snippets-via-dotfiles-on-github/







---

# ORRRRRRRRRRRRRRRRR

all you need is bashrc, vimrc, and tmuxconfig and you can do anything, anywhere.  especially tmux config, you can add status bars (more than one, even. requires a tmux within a tmux), split a pane.

tmux is a gnome terminal that comes with pop!os.  can also get it for other stuff.  you can put it on anything.  can be configured to behave like `screen`.  extremely powerful and configurable, even if you dont buy in to the plugin stuff since they defeat the whole purpose of being portable.  stick with basics to keep things simple and portable.  universally available, even during cert exams.  makes it great for multitasking with more than one terminal, and avoiding being bogged down by web browser which poorly emulates the web.  better than opening a million web browser tabs.  persistent sessions

can use tmxu to make a monitoring station for k8s.  health checks, things running in other windows, running in a beaitiful big split screen console with no annoying borders.

absolute, immedaite control over all windows and panes with tmux.  dont need i3.  all you need is tmux because it gets you everything you need.  it manages you windows, you work real estate, panes.  all you need is tmux.conf

all the bindings are also compeltely transferrable.  configuration is centralized and portable in a single file.  tmux config.  i.e. k8 cert has tmux, can easily take your tmux.conf file, along with your bashrc and vimrc, and youre good to go.  cant do i3, cant change the distro.  but you can easily run a docker container, copy those configs over and youre already set.

Tired of configuring loads of stuff and tweaking with a different program, i decided to just do something like this. It may not be as cool as some custom gentoo or even LFS things, but at this point, I just want 2 things: easy to set up and easy to replicate. Im just using the default plasma terminal that came with Alpine linux and I'm building my tmux and neovim/vim config. That's it 

https://www.youtube.com/watch?v=krXhsb1FSDU 

in fairness, you dont really need to worry about tmux and vim and such right now, esp not before you get your first job.  get your first job, THEN worry about this tmux and vim stuff.  until then, you can get by just fine with vscode and bash and alttabbing.