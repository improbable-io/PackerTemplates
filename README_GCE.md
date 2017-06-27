# Google Compute Engine

## Prerequisites

* [Some GCE credentials (see packer docs) in a JSON file](https://www.packer.io/docs/builders/googlecompute.html#running-without-a-compute-engine-service-account)
* Choose a [source_image_family](https://www.packer.io/docs/builders/googlecompute.html#source_image_family) - this will choose the latest image in that lineage.
  * It's a good idea to snapshot the image that you take, so that you are in control of this starting dependency, and isolated from changes to it.
  * That said, Google [open source their bootstrapping automation for Windows](https://github.com/GoogleCloudPlatform/compute-image-windows), so you can read it and see if you're going to be affected.
* Choose a `provisioning_password` (to use as a packer variable) that meets the Windows complexity requirements of mixed case, number, symbol, 8+ characters.