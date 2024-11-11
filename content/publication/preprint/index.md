---
title: "Mind the spikes: Benign overfitting of kernels and neural networks in fixed dimension"
authors:
- admin
date: "2019-04-07T00:00:00Z"
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: "2017-01-01T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article"]

# Publication name and optional abbreviated publication name.
publication: ""
publication_short: ""


# Summary. An optional shortened abstract.
summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

tags:
- Benign overfitting
- Deep Learning Theory
- Kernel Regression

featured: true

url_pdf: https://arxiv.org/pdf/2305.14077
url_code: 'https://github.com/moritzhaas/mind-the-spikes'
url_dataset: '#'
url_poster: '#'
url_project: ''
url_slides: ''
url_source: '#'
url_video: '#'

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
#image:
#  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/s9CC2SKySJM)'
#  focal_point: ""
#  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
#projects:
#- internal-project

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
#slides: example
---

In this paper, we explored when kernel as well as neural network models that overfit noisy data can generalize nearly optimally. Previous literature had suggested that kernel methods can only exhibit such `benign overfitting' if the input dimension grows with the number of data points. We show that, while overfitting leads to inconsistency with common estimators, adequately designed spiky-smooth estimators can achieve benign overfitting in arbitrary fixed dimension. For neural networks with NTK parametrization, you just have to add tiny fluctuations to the activation function. It remains to study whether a similar adaptation of the activation function or some other inductive bias towards spiky-smooth functions can also lead to benign overfitting with feature-learning neural architectures and complex datasets.
