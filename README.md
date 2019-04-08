# README

## Create a tiny project to connect GitHub api.

## Requirements:
1. use gem octokit for this
2. create table users with `nickname, git_token` fields
3. add validations presence, uniqueness
4. for UI use gem  'bootstrap', '~> 4.3.1'
5. on the root page  show 2 inputs:  `nickname`, `git_token` and button `sign in`
6. when clicking `sign` do
  - create a user with  `nickname`, `git_token` and also create session
7. after sign in, on root page hide inputs, and show:
  - on the top nav --  user First Name(use git api for this ) and link to destroy session
  - should be a list of links user.rels
  -  onclick link - generate friendly dynamic routes like get “:git_url”, to: :some with params which you use later for url to get data, client.orgs  as an example
8. Also, deploy the project on Heroku

## Good to use
  - HTML/ Slim
  - ServiceObject pattern
  - proc and block usage
  - other high-level paradigms by your fantasy
