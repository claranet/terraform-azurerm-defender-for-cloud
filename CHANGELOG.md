## 8.1.2 (2026-03-27)

### Bug Fixes

* **trivy:** 🐛 drop unsafe trivy pre-commit 🔒️ 2b396c8

### Code Refactoring

* update module structure and Github actions 👷 512b00d

### Miscellaneous Chores

* **AI:** 🤖 add AI Agents instructions for Contributing 41c1d51
* **deps:** 🔗 bump tflint rules version 280713f
* **deps:** update dependency trivy to v0.69.2 388ff9d
* **deps:** update dependency trivy to v0.69.3 b68064f
* **deps:** update pre-commit hook crate-ci/committed to v1.1.11 ba2c9ce

## 8.1.1 (2026-02-13)

### Code Refactoring

* **gitlab MR template:** ♻️ update default reviewers group with Azure Factory 🔧 e171a4e

### Miscellaneous Chores

* **⚙️:** ✏️ update template identifier for MR review 6aacf13
* 🗑️ remove old commitlint configuration files b54fea5
* **deps:** 🔗 bump AzureRM provider version to v4.31+ 5df5f55
* **deps:** update dependency opentofu to v1.10.0 7dbe897
* **deps:** update dependency opentofu to v1.10.1 38887f2
* **deps:** update dependency opentofu to v1.10.3 2ba9937
* **deps:** update dependency opentofu to v1.10.6 4eb26de
* **deps:** update dependency opentofu to v1.10.7 b40aa8d
* **deps:** update dependency opentofu to v1.11.2 0103c50
* **deps:** update dependency opentofu to v1.11.3 52af553
* **deps:** update dependency opentofu to v1.11.4 26ca4da
* **deps:** update dependency opentofu to v1.11.5 bc88379
* **deps:** update dependency pre-commit to v4.4.0 402eab2
* **deps:** update dependency pre-commit to v4.5.0 eac7f5f
* **deps:** update dependency pre-commit to v4.5.1 59f73ff
* **deps:** update dependency tflint to v0.58.1 591943a
* **deps:** update dependency tflint to v0.59.1 1a22aa7
* **deps:** update dependency tflint to v0.60.0 a3ee11c
* **deps:** update dependency tflint to v0.61.0 4c7b5a7
* **deps:** update dependency trivy to v0.66.0 0f10a78
* **deps:** update dependency trivy to v0.67.0 0a89977
* **deps:** update dependency trivy to v0.67.1 fd6ca02
* **deps:** update dependency trivy to v0.67.2 6b34cc5
* **deps:** update dependency trivy to v0.68.1 f4a2a75
* **deps:** update dependency trivy to v0.68.2 21395d9
* **deps:** update dependency trivy to v0.69.0 40468b4
* **deps:** update dependency trivy to v0.69.1 6555e5f
* **deps:** update pre-commit hook crate-ci/committed to v1.1.10 bf8edf4
* **deps:** update pre-commit hook crate-ci/committed to v1.1.8 3a27eb1
* **deps:** update pre-commit hook crate-ci/committed to v1.1.9 a52749d
* **deps:** update pre-commit hook pre-commit/pre-commit-hooks to v6 c08c3fa
* **deps:** update pre-commit hook tofuutils/pre-commit-opentofu to v2.2.2 fa80bf5
* **deps:** update tools bd67be3
* **deps:** update tools 84358c4
* **deps:** update tools dc42d35
* **deps:** update tools 6cb36fb

## 8.1.0 (2025-06-20)

### Features

* **AZ-1544:** add extension block option 8e6b094

### Miscellaneous Chores

* **AZ-1558:** 🗑️ remove deprecated services 10b2dc9
* **deps:** update dependency opentofu to v1.9.1 19fa80b
* **deps:** update dependency pre-commit to v4.2.0 9b434ad
* **deps:** update dependency terraform-docs to v0.20.0 1f43e27
* **deps:** update dependency tflint to v0.57.0 7ad528a
* **deps:** update dependency tflint to v0.58.0 281cd8b
* **deps:** update dependency trivy to v0.60.0 2f00795
* **deps:** update dependency trivy to v0.61.1 d0bfb45
* **deps:** update dependency trivy to v0.62.0 bbf8389
* **deps:** update dependency trivy to v0.62.1 8ae7d46
* **deps:** update dependency trivy to v0.63.0 73cb94a
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.22.0 166f09a
* **deps:** update pre-commit hook tofuutils/pre-commit-opentofu to v2.2.0 c91d48e
* **deps:** update pre-commit hook tofuutils/pre-commit-opentofu to v2.2.1 add4650
* **deps:** update tools 2ac1ac9

## 8.0.0 (2025-02-21)

### ⚠ BREAKING CHANGES

* **AZ-1088:** AzureRM Provider v4+ and OpenTofu 1.8+

### Features

* **AZ-1088:** module v8 structure and updates be7a835

### Miscellaneous Chores

* **deps:** update dependency opentofu to v1.8.3 dba3f50
* **deps:** update dependency opentofu to v1.8.4 b890510
* **deps:** update dependency opentofu to v1.8.6 5324ebb
* **deps:** update dependency opentofu to v1.8.8 efd197a
* **deps:** update dependency opentofu to v1.9.0 337d23e
* **deps:** update dependency pre-commit to v4 0d18fe4
* **deps:** update dependency pre-commit to v4.0.1 f8015e7
* **deps:** update dependency pre-commit to v4.1.0 56f2a16
* **deps:** update dependency tflint to v0.54.0 51be354
* **deps:** update dependency tflint to v0.55.0 234e889
* **deps:** update dependency trivy to v0.56.0 31e81c2
* **deps:** update dependency trivy to v0.56.1 6347016
* **deps:** update dependency trivy to v0.56.2 3d738a6
* **deps:** update dependency trivy to v0.57.1 8721a75
* **deps:** update dependency trivy to v0.58.1 9754ae6
* **deps:** update dependency trivy to v0.58.2 1ac8510
* **deps:** update dependency trivy to v0.59.1 cd304c6
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.19.0 fd460c5
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.20.0 f026905
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.21.0 975caaf
* **deps:** update pre-commit hook pre-commit/pre-commit-hooks to v5 24e9270
* **deps:** update pre-commit hook tofuutils/pre-commit-opentofu to v2.1.0 0acedd8
* **deps:** update tools 194de84
* **deps:** update tools 24e6b06
* **deps:** update tools a318aa4
* prepare for new examples structure 1e67c99
* update examples structure f836f25
* update Github templates 3cbffd9
* update tflint config for v0.55.0 4f5e9f3

## 7.1.1 (2024-10-03)

### Documentation

* update README badge to use OpenTofu registry 5cf41e6
* update README with `terraform-docs` v0.19.0 3d8af82

### Continuous Integration

* **AZ-1391:** enable semantic-release [skip ci] f1c57d2
* **AZ-1391:** update semantic-release config [skip ci] 08ebcb7

### Miscellaneous Chores

* **deps:** add renovate.json 3e51ad4
* **deps:** enable automerge on renovate a1b13e7
* **deps:** update dependency opentofu to v1.7.0 8cfd239
* **deps:** update dependency opentofu to v1.7.1 10e43c1
* **deps:** update dependency opentofu to v1.7.2 6ffce3a
* **deps:** update dependency opentofu to v1.7.3 8e4c2b2
* **deps:** update dependency opentofu to v1.8.0 96c0631
* **deps:** update dependency opentofu to v1.8.1 25db6a0
* **deps:** update dependency pre-commit to v3.7.1 5a76faa
* **deps:** update dependency pre-commit to v3.8.0 1c760c2
* **deps:** update dependency terraform-docs to v0.18.0 278c2b1
* **deps:** update dependency tflint to v0.51.0 36af9be
* **deps:** update dependency tflint to v0.51.1 50a9dd7
* **deps:** update dependency tflint to v0.51.2 a4ba177
* **deps:** update dependency tflint to v0.52.0 ee50611
* **deps:** update dependency tflint to v0.53.0 2f41999
* **deps:** update dependency trivy to v0.50.2 9ba772a
* **deps:** update dependency trivy to v0.50.4 eacae71
* **deps:** update dependency trivy to v0.51.0 67bdfe7
* **deps:** update dependency trivy to v0.51.1 e416275
* **deps:** update dependency trivy to v0.51.2 dc53761
* **deps:** update dependency trivy to v0.51.4 36789a7
* **deps:** update dependency trivy to v0.52.0 87973eb
* **deps:** update dependency trivy to v0.52.1 eb6735b
* **deps:** update dependency trivy to v0.52.2 15608fb
* **deps:** update dependency trivy to v0.53.0 bc81b56
* **deps:** update dependency trivy to v0.54.1 47fd998
* **deps:** update dependency trivy to v0.55.0 9ffec0f
* **deps:** update dependency trivy to v0.55.1 07a6cdb
* **deps:** update dependency trivy to v0.55.2 d0d544b
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.17.0 8a4b578
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.18.0 1905a25
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.0 bc41b59
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.1 557dc42
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.2 218afe2
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.3 9cdd8ad
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.93.0 94790fa
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.0 ed7c4c4
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.1 5358ea0
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.3 e0d6d8f
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.95.0 f6d1457
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.96.0 aeb7cdb
* **deps:** update renovate.json 804134c
* **deps:** update tools 2c8e07e
* **deps:** update tools b6d5bd4
* **pre-commit:** update commitlint hook 238a04c
* **release:** remove legacy `VERSION` file 359d5e6

# v7.1.0 - 2023-10-06

Added
 * [GH-2](https://github.com/claranet/terraform-azurerm-defender-for-cloud/pull/2): Set additional attributes for KeyVault and Arm subplan.

# v7.0.0 - 2023-06-09

Added
  * AZ-1087: Microsoft Defender for Cloud module first release
