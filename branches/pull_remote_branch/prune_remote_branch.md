### Git删除远端分支，本地不同步问题的解决

* 执行`git remote update origin --prune`，清除掉远程已删除分支的本地记录。

   ![git update branch](git-remote-update.PNG)

* 执行`git remote update origin -p`，同步远程分支，删除无效分支。

   ![git update branch](git-remote-update-2.PNG)
