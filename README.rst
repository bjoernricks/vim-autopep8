vim-autopep8
============

A vim plugin that uses autopep8_ to format your (selected) python code in a vim
buffer to conform to the `PEP 8`_ style guide.

.. _autopep8: https://github.com/hhatto/autopep8/
.. _PEP 8: http://www.python.org/dev/peps/pep-0008/

In difference to the vim vim-autopep8_ it doesn't require to install the
autopep8 python script in $PATH.

.. _vim-autopep8: https://github.com/tell-k/vim-autopep8

Installation
------------

Please use pathogen_ to install vim-autopep8 as a bundle::

    cd ~/.vim/bundle
    git clone https://github.com/bjoernricks/vim-autopep8.git

.. _pathogen: https://github.com/tpope/vim-pathogen

Either install autopep8_ via pip::

   pip install autopep8

or run::

   cd ~/.vim/bundle/vim-autopep8.git
   git submodule update --init


Usage
-----

Open a python file and press `<F9>` to format the complete buffer. Also you can
select a piece of code in visual mode and press `<F9>` to only reformat the
selection.
