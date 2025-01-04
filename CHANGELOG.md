# Changelog
All notable changes to this project will be documented in this file. See [conventional commits](https://www.conventionalcommits.org/) for commit guidelines.

- - -
## [v0.1.0](https://github.com/abhisheksr01/python-postgres-azure-container-apps/compare/9db227416b6eafd80f871f4b0479bee5b383403d..v0.1.0) - 2025-01-04
#### Bug Fixes
- **(#26)** add cocogitto config file to avoid merge commit validation - ([f2c261c](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/f2c261c11d253ded5d3eff30b061f192ecd55969)) - abhisheksr01
- **(#27)** bump dependencies in the requirements.txt.lock - ([ccd620d](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/ccd620dd30289fcd3d2c9241ddec8c809a3a2425)) - abhisheksr01
- change the cidr config to min requirement of /23 cidr - ([23c5643](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/23c56431d11d3711b40f81687450040d5ef6ebfa)) - abhisheksr01
- typo in the az container app name in TF code - ([af6a6b8](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/af6a6b86f8b35f1af549aa5fa07d6561da537334)) - abhisheksr01
- TF fmt error - ([518e4fe](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/518e4fe4af5ae489b95cff8b9a5d8f05515a6f3c)) - abhisheksr01
- tflint errors - ([8b8d079](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/8b8d079c0a4eeb7ad546987cc5032b655ab04293)) - abhisheksr01
#### Build system
- **(Dockerfile)** use a non-root user for building image - ([86c6cf7](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/86c6cf7eb5ccc1340372505df689c599c0063974)) - abhisheksr01
- **(requirements.txt.lock)** bump dependencies and use python 3.13 - ([81c6c6d](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/81c6c6d46714d0b23262375e4de1a29fcc140754)) - abhisheksr01
#### Continuous Integration
- update current version reference for tags and add conventional commits checks in all pipelines - ([7808408](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/780840895010994dc9ec4bb3bbe8b93df0a0b81c)) - abhisheksr01
- add conventional commit check in the app pipeline - ([5f70136](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/5f70136041fd51264dae7c55baf1a9cbaabb5dca)) - abhisheksr01
- prefix version with v for github-actions/bump-version - ([1562ae8](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/1562ae88f8d599c457bdfb0a4359e6b9e3103562)) - abhisheksr01
- update ci permision to write the content - ([595f993](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/595f99309e47bc8340c8d5e8d19e14716c1f9daf)) - abhisheksr01
- implement semver for docker images and create release in pipeline - ([72171d2](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/72171d231b2959228c14a004a9109c2685ddd131)) - abhisheksr01
- update the pr github action dependencies - ([f2d87fa](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/f2d87fa53a093e8b6a38083281b575bdc9cf9d75)) - abhisheksr01
- fix dev infra apply in pipeline - ([bf97ad9](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/bf97ad9ef1a819456f4220bd199bb574127a41c5)) - abhisheksr01
- pr and infra pipeline - ([79fc3cf](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/79fc3cf60d37fe9d959f7a3b3b09619d39a5b358)) - abhisheksr01
- add repository visualization github action job - ([ca792b5](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/ca792b5b212dfe45e4cea4c1967c768a78ebf2a2)) - abhisheksr01
- fix failing jobs in the infra pipeline - ([28734d4](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/28734d429c6113a6f632130b5b26fe57cda00d65)) - abhisheksr01
- add placeholder jobs in bootstrap infra pipeline - ([c65b767](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/c65b767bd39251063b4def877dbcfe029d44bedd)) - abhisheksr01
- add placeholder jobs until prod application deployment - ([f6465cc](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/f6465cc09e02706fcf5098e76246fbe226176db2)) - abhisheksr01
- enable dependabot and mergify - ([17ed298](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/17ed2989f0427d058f46b80b39fd3c5328f82666)) - abhisheksr01
- add github action in dependabot alerts - ([bcc2f8b](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/bcc2f8b9e71861b13af763513d8cc8374c93971b)) - abhisheksr01
- create dependabot.yml - ([283e7e4](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/283e7e43feaeb315177a0ff4549150d367b01cab)) - Abhishek Singh Rajput
- update the job dependency for app pipeline - ([c82f1b7](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/c82f1b7c6513f1c3da2afa14cd2bb10238bf3513)) - abhisheksr01
- use az commands for app deployment - ([7534840](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/753484017520b1e36f0bcc4873bb95c2358a5a81)) - abhisheksr01
- set terraform_wrapper: false in unittest job of infra pipeline - ([5d5be61](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/5d5be61a9cbb05dc69870c7e24094aef67489ca5)) - abhisheksr01
- add tf plan and apply job in infra pipeline - ([380d0b6](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/380d0b6468a0d480ef4cd3012384c30f22d55733)) - abhisheksr01
- fix lint job in infra pipeline - ([8d3af12](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/8d3af12187d1f3c0b1cc065303ee73a8bf87ca34)) - abhisheksr01
- fix failing ci infra jobs - ([2df42ad](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/2df42adc63a1e6fd8c0368c8434a32b1be8880b1)) - abhisheksr01
- add TF init step for infra-pipeline jobs - ([a68b219](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/a68b2194a108a6240cc784f9782bc9a1bf02b80f)) - abhisheksr01
- pass docker creds in az coontainer app job - ([edbc1d1](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/edbc1d118b79f7c62f470fa61ac550ada2671362)) - abhisheksr01
- prefix imageToDeploy to docker.io for container app deploy job - ([2585fa8](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/2585fa8799f5b386db2c537a3ac9fdf7f81551a9)) - abhisheksr01
- grant id-token: write permission app pipeline - ([f8afa25](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/f8afa25aea7c75a96f916a09edbb4b98445a15ff)) - abhisheksr01
- add deploy app to az container app job - ([b6a81ba](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/b6a81bab5e19805cbcddc86984fe47e670069d9b)) - abhisheksr01
- update github secret reference from AZURE_ to AZ_ - ([4de1ddd](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/4de1ddd9a2592fb7fcd32e2aa7586f7e191cb059)) - abhisheksr01
- export OIDC variables as env in infra pipeline - ([527675a](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/527675abc96f522ffe9485b7a4896ac7dfb258b5)) - abhisheksr01
- add bootstrap infrastructure pipeline - ([2432ab1](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/2432ab1d8b3e812e43227056351e9d6031df1975)) - abhisheksr01
- use github repository name as docker image name in the job - ([466ab8f](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/466ab8f6437bab9e939cf7bc480cc4125eee1f3e)) - abhisheksr01
- update docker hub user reference in docker build job - ([bfb28a4](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/bfb28a474f61213b41cf5535486a730c9d7e02ff)) - abhisheksr01
- push docker image to docker hub - ([0aef7a7](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/0aef7a71b32bc7a76f6b82246ee89a70f2641396)) - abhisheksr01
- use sudo for trivy installation - ([6548eef](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/6548eefbf85b9eb0e60745be67a67a3ea3863103)) - abhisheksr01
- increase allowed code like length to 100 - ([35c0014](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/35c0014f6c529db6ca99e98bd000e5016cffe26b)) - abhisheksr01
- use trivy for docker image scan - ([0381d36](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/0381d362aba915dc507e32d1674ab07e54cba5d6)) - abhisheksr01
- use github.run_id as image tag - ([4bfe50e](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/4bfe50e9e028f24db2f5c11d84ac789dd984a754)) - abhisheksr01
- add missing requests pip module in bdd test job - ([24fdbde](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/24fdbdecaa6dc3457193f4cb24d5da8fba6b72a3)) - abhisheksr01
- perform dependency vulnerability scan against requirements.txt.lock - ([0cf2ee2](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/0cf2ee2c969c0eb72daf1c54669db4304a6e27ae)) - abhisheksr01
- add dependency vulnerability checks - ([61f6ddb](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/61f6ddb5d3917f791ce52e776f818fb304df8d26)) - abhisheksr01
- update code path in the static analysis job - ([37479f7](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/37479f718588fd95f5f350fc6765c3edeab4fc04)) - abhisheksr01
- implement static code analysis - ([d50a0b0](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/d50a0b03befa02589736290cf009c9ea628a858d)) - abhisheksr01
- exclude venv dir in flake8 linting - ([d785915](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/d785915771674af309403fc4b2250a94e9984522)) - abhisheksr01
- add Check Formatting and linting step in pipeline - ([ef447ea](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/ef447ea74b75d0051c6655024e61c5eaf6719cdf)) - abhisheksr01
- set default working dir in github actions - ([d8904bb](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/d8904bb2475bef29680bc05785dc443e1e5cc91e)) - abhisheksr01
- add github actions pipeline skeleton - ([05c4be5](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/05c4be5bb13e3cd74ac06a3f539c6733420570cf)) - abhisheksr01
#### Documentation
- update assumptions - ([918a51b](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/918a51bf57fd1b34394fd358e888691ea82e0d2d)) - abhisheksr01
- update the db secure access request flow dig - ([b869976](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/b869976e949b40e1de2b4ea5de7ebc57b32623e5)) - abhisheksr01
- Repo visualizer: update diagram - ([9a77e78](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/9a77e7898417c64d36a774242c6c7168a8c03eab)) - repo-visualizer
- update secure database access instructions - ([6af0dbe](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/6af0dbe654497d041f7f90792497edcf18c1ebdc)) - abhisheksr01
- update CICD instructions - ([deaed0b](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/deaed0b0c5f013a836e327b09910916b2e4bf34c)) - abhisheksr01
- update IAC instructions - ([f0ef0b4](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/f0ef0b4a0b93519923067cbf18fc7875d1445676)) - abhisheksr01
- todo section in readme - ([9bb8358](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/9bb8358603ebe9199657ec4bbab5aa3e945e5f97)) - abhisheksr01
- update tools used and local setup instructions in readme - ([a1c099d](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/a1c099d1a4ac17c63b50ed69d1b99f17431dbe30)) - abhisheksr01
#### Features
- add TF configs for dev pre and prod envs - ([25e7732](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/25e7732f9ff1c1473416f46efce12defb1f0442c)) - abhisheksr01
- add TF Code for App Infrastructure and automate deployment - ([24010fe](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/24010feb36d75e98dfce39a980554595fbca885b)) - abhisheksr01
- TF code service principal creation - ([676c4a1](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/676c4a1f29e149d412105a0a9b32914c83ab5c2c)) - abhisheksr01
- add bootstrap azure infrastructure through terraform - ([acf6d27](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/acf6d27b0e934cc7d66e9592f0360ab4928ff16f)) - abhisheksr01
- use non root use in the Dockerfile and add docker build lint scan job in pipeline - ([e0229c2](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/e0229c2f4202a80c91f1d17cf79f805f8f5e3cc3)) - abhisheksr01
- load app variables from env variables and disable password auth - ([ecbf584](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/ecbf584b117a491e30599e628a3d43d190be074a)) - abhisheksr01
- add CRUD python app and postgres datadump - ([5dec3ac](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/5dec3aca4613d9d261590bbe743713207814477e)) - abhisheksr01
#### Miscellaneous Chores
- **(deps)** bump golang.org/x/crypto - ([33ff832](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/33ff83285d3113fc3543c3b223b8422fd68f74b1)) - dependabot[bot]
- **(deps)** bump golang.org/x/net - ([c05ea9d](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/c05ea9d8f26ce2a392595c3d75db1814cf3ad0fc)) - dependabot[bot]
- **(deps)** bump hashicorp/setup-terraform from 2 to 3 - ([b73b669](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/b73b66982d7f9e753cc7e164cc04150b82da5918)) - dependabot[bot]
- **(deps)** bump actions/download-artifact from 3 to 4 - ([e90b303](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/e90b3038f1f6b0343f833ffde44f4ff2660d5bdc)) - dependabot[bot]
- **(deps)** bump terraform-linters/setup-tflint from 3 to 4 - ([85c134d](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/85c134dfa6316e69420ee445a1c3c2736bc5b15b)) - dependabot[bot]
- **(deps)** bump actions/setup-python from 3.0.0 to 4.7.1 - ([49ccc63](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/49ccc635b298fde7081039709e93a6361b60603d)) - dependabot[bot]
- **(deps)** bump actions/checkout from 3 to 4 - ([0266ce7](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/0266ce73674dc3f1608c6bb83a08691bba275a38)) - dependabot[bot]
- update mergify and db access diagram - ([b6e3440](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/b6e3440dbc73b57f6db6b9dc63ac7eb38889735f)) - abhisheksr01
- add app-infra TF code config for differencet envs - ([d814d5f](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/d814d5f969a5593c15f9478597a4ca33e38bb84f)) - abhisheksr01
- add TF bootstrap code config for differencet envs - ([51449ca](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/51449ca784fbaff21adf2b9780dbf9426279b763)) - abhisheksr01
- enable TF backend for app infra - ([9b592cf](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/9b592cf8a030aa1ced0b09793cb18a3b4d715c79)) - abhisheksr01
- use image variable in app infra for latest docker image deployment - ([e5b9578](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/e5b957836921d6816c49d03c1fc36c165dcd0c92)) - abhisheksr01
- add TF lifecycle ignore_changes - ([62e6d37](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/62e6d37ba24e0fd26d221e39507b5ffa3b7e7f5c)) - abhisheksr01
- update az ad service principal name - ([43fba3a](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/43fba3aed18bf20f618e7278aa4ea6dcaa0d70b0)) - abhisheksr01
- use python:3.11-alpine base image with no vurnerabilites - ([97eb301](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/97eb3014ad8de9fc0737f58d81fa4f0abebc0199)) - abhisheksr01
- use requirements.txt.lock file for dependency management - ([88e329d](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/88e329d1e6c0d9dcddc4eb8b89ab76a8f3f958c5)) - abhisheksr01
#### Refactoring
- rename the pipeline.yml to app-pipeline.yml - ([e4a16b1](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/e4a16b18078e6cffb18cafed725f17cb57cb0fbd)) - abhisheksr01
- fix formatting and linting errors - ([0b598f9](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/0b598f9f734261b9bd9eac3bdea389bcd7b14f04)) - abhisheksr01
- extract commands from Makefile to bash scripts - ([bb053a7](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/bb053a7130a59ffd24b9fc651528e2b99b38abca)) - abhisheksr01
#### Tests
- add unit and compliance test for bootstrap infrastructure - ([eea3b76](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/eea3b76af55fc80eafb3f51fbd9e4467e13d247a)) - abhisheksr01
- update expected response for rates api bdd test - ([19cf3fb](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/19cf3fb83642380b66c71575ca99c538dd3d0718)) - abhisheksr01
- add new BDD feature - ([ef09664](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/ef096645f872bd63866d02204aa5fee0af806b13)) - abhisheksr01
- implement behave driven BDD tests - ([17f7b15](https://github.com/abhisheksr01/python-postgres-azure-container-apps/commit/17f7b15a7490b1ca0a8ade3251cffa9abc1be089)) - abhisheksr01

- - -

Changelog generated by [cocogitto](https://github.com/cocogitto/cocogitto).