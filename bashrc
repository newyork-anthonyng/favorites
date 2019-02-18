# Colors for directory
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

# display Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# This function creates a copy of the current git branch. It
# adds the date to the end of the branch name.
# This is useful before rebasing a branch.
function backup()
{
  # Get current git branch
  branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
  # Get today's date
  date=$(date +%Y-%m-%d)
  counter="0"
  branchName=$branch$date-$counter

  while [ `git branch --list $branchName` ]
  do
    counter=$[$counter+1]
    branchName=$branch$date-$counter
  done

  echo $branchName will be created
  git checkout -b $branchName

  echo Checking out $branch
  git checkout $branch
}
