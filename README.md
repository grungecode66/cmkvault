cmkvault

There are two types of component in this system. 
	- The file server (cmkvault)
	- The applications (app/a etc)

Applications can be developed and deployed on the cmkvault system. However, they should be called from their own repos into the apps folder. So the apps folder shouldn't be included in the vault's .git scope.

cmkvault is the file server. It serves as the Single Point of Truth (SPOT) for content. It consists of:
- file server for dropoff
- web server for basic view
- Content database

It can also function as content host via www but the manipulation of content should be handled by the applications.

- All applications should be able to come to their server on the fly and work. There should be no backups of installers or scripts outside of github/bitbucket repos.

The vault handles additions. 

There is also the notion of an application server. It should be installed on its own vm and developed there. If content is modified there it will be up to the application to modify the SPOT (single point of truth) provided by the vault.


- 
