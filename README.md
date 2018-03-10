# scad_bundler_example

This is an example project for using [scad_bundler](https://github.com/lostapathy/scad_bundler) with your [OpenSCAD](https://openscad.org) projects.

## Before you Begin

You will need to have scad_bundler installed before using this example.  See the scad_bundler docs for help with that.

## How this example was created


First, a `Scadfile` was created in the project:

```
scad_bundle init
```

This created our Scadfile.  To add the `openscad_soften` library to our project, add this line to Scadfile:

```
gem 'openscad_soften'
```

Then to install openscad_soften, along with any dependencies it has, run:

```
scad_bundle install
```

This resolves compatible versions of all libraries in the Scadfile, along with their dependencies, and installs them for use.

## How to use this example

Fork and clone this repository.  To install the libraries in the `Scadfile`, you'll need to run:

```
scad_bundle install
```

Now to run OpenSCAD, we execute:

```
scad_bundle exec openscad
```

The command `scad_bundle exec` exports an environment variable OPENSCADPATH and runs whatever command follows, including whatever command line options are passed.  For example, to run openscad-nightly and open demo.scad, we can execute `scad_bundle exec openscad-nightly demo.scad`

From there, OpenSCAD runs exactly as you're used to.

To update the libraries packaged with your project, execute `scad_bundle update`.  You can lock your dependencies to certain versions using [bundler's syntax](http://bundler.io/v1.16/guides/using_bundler_in_applications.html#adding-gems)
