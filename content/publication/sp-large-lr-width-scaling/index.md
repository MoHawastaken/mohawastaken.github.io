---
title: 'On the Surprising Effectiveness of Large Learning Rates under Standard Width Scaling'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - Moritz Haas
  - Sebastian Bordt
  - Ulrike von Luxburg
  - Leena Chennuru Vankadara

# Author notes (optional)

date: '2025-05-28T00:00:00Z'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: '2025-05-28T00:00:00Z'

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
#publication_types: ['paper-conference']

# Publication name and optional abbreviated publication name.
publication: '*NeurIPS 2025 (spotlight)*'
#publication_short: In *ICW*

#abstract: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum. Sed ac faucibus dolor, scelerisque sollicitudin nisi. Cras purus urna, suscipit quis sapien eu, pulvinar tempor diam. Quisque risus orci, mollis id ante sit amet, gravida egestas nisl. Sed ac tempus magna. Proin in dui enim. Donec condimentum, sem id dapibus fringilla, tellus enim condimentum arcu, nec volutpat est felis vel metus. Vestibulum sit amet erat at nulla eleifend gravida.

# Summary. An optional shortened abstract.
#summary: "Naively scaling standard neural network architectures and optimization algorithms loses desirable properties such as feature learning in large models (see the Tensor Program series by Greg Yang et al.). We show the same for sharpness aware minimization (SAM) algorithms: There exists a unique nontrivial width-dependent and layerwise perturbation scaling for SAM that effectively perturbs all layers and provides in width-independent dynamics. A crucial practical benefit is transfer of optimal learning rate and perturbation radius jointly across model scales. In a second paper, we show that for the popular Mamba architecture, the maximal update parameterization and its related spectral scaling condition fail to induce the correct scaling properties, due to Mambas structured Hippo matrix and its selection mechanism. We derive the correct scaling using random matrix theory that necessarily goes beyond the Tensor Programs framework."

#tags:
#  - Large Language Models

# Display this page in the Featured widget?
featured: true
share: false
# commentable: true

# Custom links (uncomment lines below)
links:
- name: Blog
  url: https://sbordt.substack.com/p/why-can-we-train-large-models-with

url_pdf: 'https://arxiv.org/pdf/2505.22491'
url_code: 'https://github.com/tml-tuebingen/torch-module-monitor'
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
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
projects: []

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
#slides: example
---

A primary goal of infinite-width theory has always been explaining neural networks as they are initialized and trained in practice (called 'standard parameterization', short SP). But there has always remained a fundamental gap: Existing theory for SP predicts a kernel regime with vanishing feature learning under small learning rates, and instability due to logit divergence under large learning rates. But even extensively large models continue to effectively learn features in practice, which results in favorable performance at scale. While previous works suggest strong finite-width or long-training time effects, we show that these explanations do not suffice. These insights were only enabled by sufficiently fine-grained tracking of network-internal signal propagation. In refined coordinate checks, we disentangle propagating updates from previous layers from effective updates in the current layer, which show surprisingly clean predicted update exponents, even over the course of training. We released a [flexible, open-source package](https://github.com/tml-tuebingen/torch-module-monitor) that enables fine-grained tracking of GPT internals such as refined coordinate checks (RCC) in a few lines of code. RCCs are an essential diagnostic tool for understanding whether your layerwise initialization and learning rate choices achieve model-scale-invariant forward and backward signal propagation. Check out our [blog post](https://sbordt.substack.com/p/why-can-we-train-large-models-with) for an accessible introduction.

Instead this apparent gap between pessimistic infinite-width theory and well-performing practice can be fundamentally reconciled with the insight that logit divergence does not harm training stability when using torch.nn.CrossEntropyLoss (with a softmax before the cross-entropy loss). Consequently even extensively wide neural networks in SP trained with SGD (or Adam) under large learning rates effectively update all hidden layers. This has several important implications:

a) Our max-stable learning rate exponent predictions significantly constrain the search space for the optimal learning rate, even in practical settings like GPT pretraining. The optimal learning rate often even 'approximately transfers' across model scale under the scaling exponents predicted by our theory despite vanishing input layer feature learning and logit blowup in SP with large learning rates (for both SGD and Adam).

b) CE loss often outperforms MSE loss because large learning rates do not remain stable under MSE loss and consequently feature learning is lost at scale. Using muP at large model scale enables using other loss functions such as MSE loss.

c) We explain why SP-full-align from [Everett et al.](https://arxiv.org/pdf/2407.05872) works so well: At large width, SP-full-align lies at the feature learning edge of the controlled divergence regime, where it remains stable despite logit divergence. In language settings (width << output dimension), standard initialization non-asymptotically preserves the variance of propagating updates even better than muP.

d) Overall, Tensor Program width-scaling exponent predictions for layerwise updates and maximal stable learning rates hold surprisingly accurately already at moderate scale and over the course of training. This allows predicting sources of training or numerical instability and finding principled solutions.

These insights uncover many exciting questions for future work. For example, training points are memorized increasingly sharply with model scale. On the one hand this might speed up learning, but on the other hand it hurts calibration. Overall, when does logit divergence help and when does it harm performance? Is this a fundamental reason for overconfident predictions in SP, and muP might be more calibrated? Similarly, should we boost input- and normalization layer learning rates at large scale, or is it a beneficial inductive bias to learn these weights increasingly slowly in large models? Not only CE loss, but also normalization layers and Adam stabilize training against miss-scaled signals and extend the controlled divergence regime, but numerical underflows can induce sudden unexpected instabilities at sufficient scale. Can we prevent such instabilities and design numerically scalable training and representation strategies?