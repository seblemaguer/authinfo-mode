# colored-authinfo-mode

This mode provides a colorful variation to read the .authinfo files.
It derives from authinfo-mode from emacs-version is above 27, else it derives from fundamental-mode.

## Installation

Here is an example of installation using use-package

```elisp
  (use-package colored-authinfo-mode
    :straight (colored-authinfo-mode :repo "seblemaguer/colored-authinfo-mode"
                                     :type git
                                     :host github)
    :mode ("\\.authinfo\\(?:\\.gpg\\)\\'" . colored-authinfo-mode))
```
