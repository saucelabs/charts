# Contributing to _projectname_

**Thank you for your interest in _projectname_. Your contributions are highly welcome.**

There are multiple ways of getting involved:

- [Report a bug](#report-a-bug) 
- [Suggest a feature](#suggest-a-feature) 
- [Contribute code](#contribute-code) 

Below are a few guidelines we would like you to follow.
If you need help, please reach out to us by opening an issue.

## Report a bug 
Reporting bugs is one of the best ways to contribute. Before creating a bug report, please check that an [issue](/issues) reporting the same problem does not already exist. If there is such an issue, you may add your information as a comment.

To report a new bug you should open an issue that summarizes the bug and set the label to "bug".

If you want to provide a fix along with your bug report: That is great! In this case please send us a pull request as described in section [Contribute Code](#contribute-code).

## Suggest a feature
To request a new feature you should open an [issue](../../issues/new) and summarize the desired functionality and its use case. Set the issue label to "feature".  

## Contribute code
This is an outline of what the workflow for code contributions looks like

- Check the list of open [issues](../../issues). Either assign an existing issue to yourself, or 
create a new one that you would like work on and discuss your ideas and use cases. 

It is always best to discuss your plans beforehand, to ensure that your contribution is in line with our goals.

- Fork the repository on GitHub
- Create a topic branch from where you want to base your work. This is usually master.
- Open a new pull request, label it `work in progress` and outline what you will be contributing
- Make commits of logical units.
- Make sure you sign-off on your commits `git commit -s -m "adding X to change Y"` 
- Write good commit messages (see below).
- Push your changes to a topic branch in your fork of the repository.
- As you push your changes, update the pull request with new infomation and tasks as you complete them
- Project maintainers might comment on your work as you progress
- When you are done, remove the `work in progess` label and ping the maintainers for a review
- Your pull request must receive a :thumbsup: from two [maintainers](MAINTAINERS)

### Technical Requirements

When submitting a PR make sure that it:

- Must pass CI jobs for linting and test the changes on top of different k8s platforms. (Automatically done by the Bitnami CI/CD pipeline).
- Must follow [Helm best practices](https://helm.sh/docs/chart_best_practices/).
- Implements changes in both files if the chart contains a _values-production.yaml_ and a _values.yaml_.
- Any change to a chart requires a version bump following [semver](https://semver.org/) principles. This is the version that is going to be merged in the GitHub repository, then our CI/CD system is going to publish in the Helm registry a new patch version including your changes and the latest images and dependencies.

### Documentation Requirements

- A chart's `README.md` must include configuration options.
- A chart's `NOTES.txt` must include relevant post-installation information.

### Adding a new chart to the repository

There are only three major requirements to add a new chart in our catalog:

- The chart should use Sauce Labs based container images. If they don't exist, you can [open a GitHub issue](https://github.com/saucelabs/charts/issues/new/choose) and we will work together to create them.
- Follow the same structure/patterns that the rest of the Sauce Labs charts and the [Best Practices for Creating Production-Ready Helm charts](https://docs.bitnami.com/tutorials/production-ready-charts/) guide.
- Use an [OSI approved license](https://opensource.org/licenses) for all the software.

### Commit messages
Your commit messages ideally can answer two questions: what changed and why. The subject line should feature the “what” and the body of the commit should describe the “why”.  

When creating a pull request, its description should reference the corresponding issue id.

### Sign your work / Developer certificate of origin
All contributions (including pull requests) must agree to the Developer Certificate of Origin (DCO) version 1.1. This is exactly the same one created and used by the Linux kernel developers and posted on http://developercertificate.org/. This is a developer's certification that he or she has the right to submit the patch for inclusion into the project. Simply submitting a contribution implies this agreement, however, please include a "Signed-off-by" tag in every patch (this tag is a conventional way to confirm that you agree to the DCO) - you can automate this with a [Git hook](https://stackoverflow.com/questions/15015894/git-add-signed-off-by-line-using-format-signoff-not-working)

```
git commit -s -m "adding X to change Y"
```

**Have fun, and happy hacking!**

---

Parts of these contributor guidelines were inspired by [Bitnami](https://github.com/bitnami/charts/blob/master/CONTRIBUTING.md) and [Helm](https://github.com/helm/charts/blob/master/CONTRIBUTING.md).