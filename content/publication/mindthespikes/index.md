---
title: 'Mind the spikes: Benign overfitting of kernels and neural networks in fixed dimension'

authors:
  - Moritz Haas*
  - David Holzmüller*
  - Ulrike Luxburg
  - Ingo Steinwart


date: '2023-05-23T00:00:00Z'
doi: ''

publishDate: '2023-05-23T00:00:00Z'

publication: '*NeurIPS 2023*'

featured: true

url_pdf: 'https://arxiv.org/pdf/2305.14077'
url_code: 'https://github.com/moritzhaas/mind-the-spikes'
url_dataset: ''
url_poster: 'https://mohawastaken.github.io/publication/mindthespikes/mindthespikes_poster_neurips.pdf'
url_project: ''
url_slides: 'https://mohawastaken.github.io/publication/mindthespikes/mindthespikes_slides1123.pdf'
url_source: ''
url_video: ''

---

When can kernel or neural network models that overfit noisy data generalize nearly optimally?

Previous literature had suggested that kernel methods can only exhibit such "benign overfitting", also called "harmless interpolation", if the input dimension grows with the number of data points. We show that, while overfitting leads to inconsistency with common estimators, adequately designed spiky-smooth estimators can achieve benign overfitting in arbitrary fixed dimension. For kernels, we show how you can mimick kernel ridge regression while interpolating the training data by adding a sharp spike to your kernel. For neural networks with NTK parametrization, you just have to add tiny fluctuations to the activation function. Remarkably, adding a Gaussian kernel with small bandwidth to the NTK or to the NNGP approximately translates into adding a high-frequency low-amplitude shifted sin-curve to the activation function.

It remains to study whether a similar adaptation of the activation function or some other inductive bias towards spiky-smooth functions can also lead to benign overfitting with feature-learning neural architectures on complex datasets.