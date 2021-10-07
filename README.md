This repo is a interesting work for using hugo to deploy randomly generated posts by script.

# Prerequisite
- hugo
- fortune
- git
- sed
- Github account

You also need to setup github pages on repository settings.

# How to post new document
Just clone the project and run ```./random-add-post.sh``` by linux or macos CLI.

# How it works
1. Create website code by hugo; 
2. Update posts by fortune;
3. push to github and;
4. trigger github action to deploy;
5. posts deployed to github pages;

Check final page at https://acearth.github.io/diary-1/
