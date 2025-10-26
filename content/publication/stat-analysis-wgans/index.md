---
title: 'Statistical Analysis of Wasserstein GANs with Applications to Time Series Forecasting'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - Moritz Haas
  - Stefan Richter

# Author notes (optional)
#author_notes:
#  - 'Equal contribution'
#  - 'Equal contribution'

date: '2020-11-05T00:00:00Z'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: '2020-11-05T00:00:00Z'

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
#publication_types: ['arXiv-preprint']

# Publication name and optional abbreviated publication name.
publication: '*arXiv:2011.03074*'
#publication_short: In *ICW*

#abstract: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum. Sed ac faucibus dolor, scelerisque sollicitudin nisi. Cras purus urna, suscipit quis sapien eu, pulvinar tempor diam. Quisque risus orci, mollis id ante sit amet, gravida egestas nisl. Sed ac tempus magna. Proin in dui enim. Donec condimentum, sem id dapibus fringilla, tellus enim condimentum arcu, nec volutpat est felis vel metus. Vestibulum sit amet erat at nulla eleifend gravida.

# Summary. An optional shortened abstract.
#summary: "Naively scaling standard neural network architectures and optimization algorithms loses desirable properties such as feature learning in large models (see the Tensor Program series by Greg Yang et al.). We show the same for sharpness aware minimization (SAM) algorithms: There exists a unique nontrivial width-dependent and layerwise perturbation scaling for SAM that effectively perturbs all layers and provides in width-independent dynamics. A crucial practical benefit is transfer of optimal learning rate and perturbation radius jointly across model scales. In a second paper, we show that for the popular Mamba architecture, the maximal update parameterization and its related spectral scaling condition fail to induce the correct scaling properties, due to Mambas structured Hippo matrix and its selection mechanism. We derive the correct scaling using random matrix theory that necessarily goes beyond the Tensor Programs framework."

#tags:
#  - Large Language Models

# Display this page in the Featured widget?
featured: True
share: false

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: 'https://arxiv.org/pdf/2011.03074'
url_code: ''
url_dataset: ''
url_poster: 'https://mohawastaken.github.io/publication/stat-analysis-wgans/WGAN_poster.pdf'
url_project: ''
url_slides: 'https://mohawastaken.github.io/publication/stat-analysis-wgans/IMPRSIS_presentation.pdf'
url_source: ''
url_video: ''

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
#image:
#  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/pLCdAaMFLTE)'
#  focal_point: ''
#  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
#slides: example
---

 We analyse Wasserstein GANs statistically. Interestingly, our excess risk bound for unconditional WGANS (from 2020!) captures a key advantage of generative models: Since we can generate as many samples as we want, the generalization error is only limited by the critic network and the dataset size. If we generate enough samples (and assume to find a global optimizer), the generator network may be arbitrarily large. We also show that large critic networks metrize weak convergence, that is they are able to distinguish arbitrary pairs of distributions and guide the generator to reproduce the data distribution.

<!--
In a [second paper](https://mohawastaken.github.io/publication/featurelearning-ssms/), we show that for the popular Mamba architecture, the maximal update parameterization and its related spectral scaling condition fail to induce the correct scaling properties, due to Mambas structured Hippo matrix and its selection mechanism. We derive the correct scaling using random matrix theory that necessarily goes beyond the Tensor Programs framework.
-->