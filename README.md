# Personal Dotfiles

My dotfiles are based on [Nicola Paolucci's post](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/). 

I am using shortened bit.do links to the raw file versions of shell scripts. Each script ends with the next url to `curl` so they can be installed in order for a full set-up or independently as needed by following the breadcrumbs. Just to be clear, the curl commands are hitting URLs and running whatever is there so check them out before running.

To get everything started, [`curl -Lks http://bit.do/cfsanderson`](https://raw.githubusercontent.com/cfsanderson/cfg-dotfiles/master/.dotfiles-scripts/name.sh) . This command doesn't actually do anything, it just echoes out some ascii art and gives you the next url to `curl`. The curl command that it gives you _will_ run the script at the URL it hits.

