"""
Encapsulate the importing of python utils and logging setup, things
that every script should do.
"""

import sys, os, logging

_LIB_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "utils", "python")
sys.path.append(_LIB_DIR)

import cime_util
cime_util.check_minimum_python_version(2, 7)
cime_util.stop_buffering_output()

logging.basicConfig()