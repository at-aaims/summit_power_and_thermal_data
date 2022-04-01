.PHONY: help init fini jupyter env shell

PY3 ?= python3
VENV ?= ./venv
VBIN ?= $(VENV)/bin
VPY3 ?= $(VBIN)/python3
VPIP ?= $(VBIN)/pip
JUPYTER_OPTS ?= 

help:
	-@echo ""
	-@echo "[Summit power & temp data basic analysis support]"
	-@echo ""
	-@echo "  init/fini: initialize & finalize python virtual environment"
	-@echo "  jupyter: spawn a local jupyterlab instance for investigation"
	-@echo "  env: emit venv activation code - use eval \$$(make env) to activate the virtualenv"
	-@echo "  shell: python shell with the virtualenv enabled"
	-@echo ""

init:
	$(PY3) -m venv $(VENV)
	$(VPIP) install -U pip
	$(VPIP) install -r ./requirements.txt

fini:
	rm -rf $(VENV)

jupyter:
	$(VBIN)/jupyter-lab $(JUPYTER_OPTS)

env:
	-@echo "source $(VENV)/bin/activate"

shell:
	$(VPY3)
