Per component Power & Temperature Measurement of the OLCF Summit System
=======================================================================

# Overview

WIP


# Quickstart: Working with the Sample Data

This repository provides minimal example in make use of the dataset.
Sample datasets can be downloaded in the `./data` directory where `parquet`
files are `.gitinore`'d.  Make directives for a local jupyterlab instance to
run and test the examples are provided.

## Checkout the code

```shell
$ git clone git@github.com:at-aaims/summit_power_and_thermal_data.git
```

## Initialize python environment

The accompanied makefile provides basic convenience macros to initialize the 
python3 virtual environment that can run the examples.

```shell
$ make init
```

## Download the sample datasets into the `./data` directory

TBD: describe how to download the sample dataset from Constellation.

```shell
$ TBD
```

## Run jupyterlab

Command below will spawn a jupyterlab instance that can load and run the
accompanied jupyter notebooks.

```shell
$ make jupyter
```

Notebooks in the `./examples` directory is a good starting point for looking
into the dataset.



# Repository description

TBD


# Dataset Description

WIP

## Source dataset

The original dataset which is not included in this publication is a measurement
of the OLCF Summit system's power and temperature measurements

## `powtemp_10sec_mean`: aggregation - 10 second mean


## `powtemp_1min_mean`: aggregation - 1 minute mean



# Sampled datasets

Below are sampled datasets extracted from the primary datasets for convenience.

## `data/a_**`

## `data/b_snapshot_10sec_24h`

## `data/c_**`

## `data/d_sample_4626_24h`



# Dictionary

Below describes the common column names within the dataset.

## metadata

* `timestamp`: Timestamp of the row
* `hostname`: Hostname of the row `<column:[a-h]><row:[0-24]>n<node_in_rack:[1-18]>`
* `state`: State of the host if exists (always "Powered on")

## Node power

* `ps0_input_power`: AC input power consumption of the first node power supply (Watts)
* `ps1_input_power`: AC input power consumption of the second node power supply (Watts)

## CPU power

* `p0_power`: DC power consumption of the first Power9 CPU in the node
* `p1_power`: DC power consumption of the second Power9 CPU in the node


## CPU temperature

### Per-core CPU temperature (if exists)
* `p0_core_X_temp`: Temperature of the Xth core of the first Power9 CPU (celcius)
* `p1_core_X_temp`: Temperature of the Xth core of the second Power9 CPU (celcius)

## GPU power

* `p0_gpu0_power`: DC power consumption of the 1st NVidia V100 GPU attached to the first Power9 CPU (Watts)
* `p0_gpu1_power`: DC power consumption of the 2nd NVidia V100 GPU attached to the first Power9 CPU (Watts)
* `p0_gpu2_power`: DC power consumption of the 3rd NVidia V100 GPU attached to the first Power9 CPU (Watts)
* `p1_gpu0_power`: DC power consumption of the 1st NVidia V100 GPU attached to the second Power9 CPU (Watts)
* `p1_gpu1_power`: DC power consumption of the 2nd NVidia V100 GPU attached to the second Power9 CPU (Watts)
* `p1_gpu2_power`: DC power consumption of the 3rd NVidia V100 GPU attached to the second Power9 CPU (Watts)

## GPU temperature

* `gpu0_core_temp`: Core temperature of the 1st NVidia V100 GPU attached to the first Power9 CPU (celcius)
* `gpu1_core_temp`: Core temperature of the 2nd NVidia V100 GPU attached to the first Power9 CPU (celcius)
* `gpu2_core_temp`: Core temperature of the 3rd NVidia V100 GPU attached to the first Power9 CPU (celcius)
* `gpu3_core_temp`: Core temperature of the 1st NVidia V100 GPU attached to the second Power9 CPU (celcius)
* `gpu4_core_temp`: Core temperature of the 2nd NVidia V100 GPU attached to the second Power9 CPU (celcius)
* `gpu5_core_temp`: Core temperature of the 3rd NVidia V100 GPU attached to the second Power9 CPU (celcius)

* `gpu0_mem_temp`: Memory (HBM) temperature of the 1st NVidia V100 GPU attached to the first Power9 CPU (celcius)
* `gpu1_mem_temp`: Memory (HBM) temperature of the 2nd NVidia V100 GPU attached to the first Power9 CPU (celcius)
* `gpu2_mem_temp`: Memory (HBM) temperature of the 3rd NVidia V100 GPU attached to the first Power9 CPU (celcius)
* `gpu3_mem_temp`: Memory (HBM) temperature of the 1st NVidia V100 GPU attached to the second Power9 CPU (celcius)
* `gpu4_mem_temp`: Memory (HBM) temperature of the 2nd NVidia V100 GPU attached to the second Power9 CPU (celcius)
* `gpu5_mem_temp`: Memory (HBM) temperature of the 3rd NVidia V100 GPU attached to the second Power9 CPU (celcius)

