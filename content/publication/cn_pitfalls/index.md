---
title: 'Pitfalls of Climate Network Construction - A Statistical Perspective'

authors:
  - Moritz Haas
  - Bedartha Goswami
  - Ulrike Luxburg


date: '2023-04-20T00:00:00Z'
doi: ''

publishDate: '2023-04-20T00:00:00Z'

publication: '*Journal of Climate*'

featured: true
share: false

url_pdf: 'https://journals.ametsoc.org/view/journals/clim/36/10/JCLI-D-22-0549.1.xml?tab_body=pdf'
url_code: 'https://github.com/moritzhaas/climate_nets_from_random_fields'
url_dataset: ''
url_poster: 'https://mohawastaken.github.io/publication/cn_pitfalls/pitfalls_cn_poster_egu23.pdf'
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

---

In this paper, we explore in which ways estimation errors distort climate networks through false and missing edges. We find several mechanisms through which finite-sample noise can systematically distort climate networks. Most notably, spatially heterogenous estimation variance (for example caused by heterogenous autocorrelation patterns in different locations) causes large biases toward overestimating the importance of the particularly noisy locations. But even on isotropic data, many graph measures like betweenness or clustering coefficients can be heavily distorted, and spurious high-degree clusters and link-bundle teleconnections emerge.

We also find that common resampling procedures to quantify significant behaviour in climate networks do not adequately capture intrinsic network variance. While we propose a new resampling framework, the question of how to reliably quantify intrinsic network variance from complex climatic time series remains a matter of ongoing work.