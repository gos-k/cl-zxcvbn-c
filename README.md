# cl-zxcvbn-c

cl-zxcvbn-c is a Common Lisp bindings for [zxcvbn-c](https://github.com/tsyrogit/zxcvbn-c) password strength estimator.
The original version is [zxcvbn](https://github.com/dropbox/zxcvbn) .

## Setup

### Require


Install swig.

```
apt install swig
```

Install lake and rove.

```
ros install lake
```

Build zxcvbn-c.

```
git clone --depth 1 https://github.com/gos-k/cl-zxcvbn-c
cd cl-zxcvbn-c/swig
lake
cd ..
```

## Test

```
ros install rove
LD_LIBRARY_PATH=. rove cl-zxcvbn-c.asd
```

## Usage

```
(ql:quickload '(:cl-zxcvbn-c :cffi))
(cl-zxcvbn-c:zxcvbn-match "password" (cffi:null-pointer) (cffi:null-pointer))
```

It return `1.0d0`.

## Verification environments

* Ubuntu 18.04
* SBCL 1.5.6 x86-64
* SWIG 3.0.12
* zxcvbn-c 5d7ef7c537b0ae8bf8c8696ea4241cf29a572853

## Author

gos-k (mag4.elan@gmail.com)

## License

This software is released under the MIT License, see LICENSE.txt.
