## 71_setup_git.sh
## 1. Run once NOT as root
## 2. Setting your Git username/email for every repository on your computer

## 2020-07-31-A

echo "START: 71_setup_git.sh - run once"
git config --global init.defaultBranch main
git config --global user.name "burtrum"
git config --global user.email "robertbc36@gmail.com"
echo "END: 71_setup_git.sh - run once"
