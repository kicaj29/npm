# npm audit

## create package.json

```
PS D:\GitHub\kicaj29\npm> npm init -y
Wrote to D:\GitHub\kicaj29\npm\package.json:

{
  "name": "npm",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "repository": {
    "type": "git",
    "url": "git+https://github.com/kicaj29/npm.git"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "bugs": {
    "url": "https://github.com/kicaj29/npm/issues"
  },
  "homepage": "https://github.com/kicaj29/npm#readme"
}
```

## install sample package that has some vulnerabilities

```
PS D:\GitHub\kicaj29\npm> npm install express@4.8.0
npm notice created a lockfile as package-lock.json. You should commit this file.
+ express@4.8.0
added 35 packages from 24 contributors and audited 35 packages in 4.237s
found 22 vulnerabilities (8 low, 9 moderate, 5 high)
  run `npm audit fix` to fix them, or `npm audit` for details
```

## audit levels

There are 4 levels: low, moderate, high, critical. Default is low.

Fail an audit only if the results include a vulnerability with a level of low or higher:
```npm audit --audit-level=low```

Fail an audit only if the results include a vulnerability with a level of moderate or higher:
```npm audit --audit-level=moderate```

Fail an audit only if the results include a vulnerability with a level of high or critical:
```npm audit --audit-level=high```

Fail an audit only if the results include a vulnerability with a level of critical:
```npm audit --audit-level=critical```

Audit level can also be set in ```.npmrc```.

Set in ```.npmrc``` value ```audit-level = low``` and run ```run-audit.ps1```. Based on the exit code it will print information "there are vulnerabilities".   


Set in ```.npmrc``` value ```audit-level = critical``` and run ```run-audit.ps1```. Based on the exit code it will print information "no problems with vulnerabilities".   

I was not able create working correctly bat file - I was not able catch exit code from ```npm audit``` command.

# resources
https://docs.npmjs.com/cli/v6/commands/npm-audit   
https://docs.npmjs.com/cli/v6/using-npm/config#audit-level   
https://docs.npmjs.com/cli/v6/commands/npm-audit#examples   
https://stackoverflow.com/questions/334879/how-do-i-get-the-application-exit-code-from-a-windows-command-line   
https://devblogs.microsoft.com/oldnewthing/2008/09/26   
https://superuser.com/questions/194662/how-to-check-the-exit-code-of-the-last-command-in-batch-file   
