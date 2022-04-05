Per component Power & Temperature Measurement of the OLCF Summit System
=======================================================================

# Overview

As we move into the exascale era, the power and energy footprints of
high-performance computing (HPC) systems have grown significantly larger.  Due
to the harsh power and thermal conditions the system components are exposed to,
operation of such modern HPC systems requires deep insights into long term
system behavior to maintain its efficiency as well as its longevity. 

To help the HPC community to gain such insights, we provide a dataset that
records the long-term power and thermal behavior of the 200PF pre-exascale
supercomputer at the Oak Ridge Leadership Computing Facility (OLCF), Summit.
This system is an IBM AC922 based system that has 9,252 IBM Power9 CPUs and
27,756 Nvidia V100 GPUs and can consume up to 13MW power at peak.  Heat removal
is performed using medium temperature direct liquid cooling and rear-door heat
exchanger based secondary cooling loop.

Originally extracted from a high-resolution (1Hz) per-component (GPUs, CPUs)
measurements from the system, we primarily provide a dataset that has
10-second and 1-minute mean power & thermal measurements selected from five
month-long segments over the course of 2020 (January & August), 2021
(February & August), and 2022 (January).  For convenience, we also provide
various sub datasets randomly sampled from the time and space (hosts) of
the cluster.


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


# GENERAL INFORMATION

1. Title of Dataset: Long term per-component power and thermal measurements of the OLCF Summit supercomputer
   
2. Author Information
    1. Principal Investigator Contact Information
        - Name: Woong Shin
        - Institution: Oak Ridge National Laboratory
        - Address: 1 Bethel Valley Road, Oak Ridge, Tennessee, 37830
        - Email: shinw@ornl.gov
    2. Associate or Co-investigator Contact
        - Name: J. Austin Ellis
        - Institution: Oak Ridge National Laboratory
        - Address: 1 Bethel Valley Road, Oak Ridge, Tennessee, 37830
        - Email: ellisja@ornl.gov
    3. Associate or Co-investigator Contact
        - Name: Ahmad Maroof Karimi
        - Institution: Oak Ridge National Laboratory
        - Address: 1 Bethel Valley Road, Oak Ridge, Tennessee, 37830
        - Email: karimiahmad@ornl.gov
    4. Associate or Co-investigator Contact
        - Name: Vladyslav Oles
        - Institution: Oak Ridge National Laboratory
        - Address: 1 Bethel Valley Road, Oak Ridge, Tennessee, 37830
        - Email: olesv@ornl.gov
    5. Associate or Co-investigator Contact
        - Name: Sajal Dash
        - Institution: Oak Ridge National Laboratory
        - Address: 1 Bethel Valley Road, Oak Ridge, Tennessee, 37830
        - Email: dashs@ornl.gov
    6. Alternate Contact Information
        - Name: Feiyi Wang
        - Institution: Oak Ridge National Laboratory
        - Address: 1 Bethel Valley Road, Oak Ridge, Tennessee, 37830
        - Email: fwang2@ornl.gov
3. Date of data collection: 2022-03-31
4. Geographic location of data collection: Oak Ridge, Tennessee, USA
5. Information about funding sources that supported the collection of the data:

> 	This work was supported by, and used the resources of, the
> 	Oak Ridge Leadership Computing Facility, located in the National
> 	Center for Computational Sciences at ORNL, which is managed
> 	by UT Battelle, LLC for the U.S. DOE (under the contract No. DE-AC05-00OR22725).


# SHARING / ACCESS INFORMATION

1. Licenses/restrictions placed on the data:
	- [Creative Commons - Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/)
2. Links to publications that cite or use the data: 
	- [Woong Shin, Vladyslav Oles, Ahmad Maroof Karimi, J. Austin Ellis, and Feiyi Wang. 2021. Revealing power, energy and thermal dynamics of a 200PF pre-exascale supercomputer. In Proceedings of the International Conference for High Performance Computing, Networking, Storage and Analysis (SC '21). Association for Computing Machinery, New York, NY, USA, Article 12, 1–14. DOI:https://doi.org/10.1145/3458817.3476188](https://doi.org/10.1145/3458817.3476188)
3. Links to other publicly accessible locations of the data:
	- [https://doi.org/10.13139/OLCF/1861068](https://doi.org/10.13139/OLCF/1861068)
4. Links/relationships to ancillary data sets:
	- N/A
5. Was data derived from another source? Yes
	- This dataset is derived from a high-resolution (1Hz) per-component (CPU and GPU) power and thermal measurements of the Summit supercomputer internally used at the OLCF to support medium temperature water cooling operations.
6. Recommended citation for this dataset:

> Woong Shin, Vladyslav Oles, Ahmad Maroof Karimi, J. Austin Ellis, and Feiyi Wang. 2021. Revealing power, energy and thermal dynamics of a 200PF pre-exascale supercomputer. In Proceedings of the International Conference for High Performance Computing, Networking, Storage and Analysis (SC '21). Association for Computing Machinery, New York, NY, USA, Article 12, 1–14. DOI:https://doi.org/10.1145/3458817.3476188

```bibtex
@inproceedings{10.1145/3458817.3476188,
author = {Shin, Woong and Oles, Vladyslav and Karimi, Ahmad Maroof and Ellis, J. Austin and Wang, Feiyi},
title = {Revealing Power, Energy and Thermal Dynamics of a 200PF Pre-Exascale Supercomputer},
year = {2021},
isbn = {9781450384421},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
url = {https://doi.org/10.1145/3458817.3476188},
doi = {10.1145/3458817.3476188},
abstract = {As we approach the exascale computing era, the focused understanding of power consumption and its overall constraint on HPC architectures and applications are becoming increasingly paramount. Summit, located at the Oak Ridge Leadership Computing Facility (OLCF), is one of the fastest and largest pre-exascale platforms in operation today. This paper provides a first-order examination and analysis of power consumption at the component-level, node-level, and system-level, from all 4,626 Summit compute nodes, each with over 100 metrics at 1Hz frequency over the entire year of 2020. We also investigate the power characteristics and energy efficiency of over 840k Summit jobs and 250k GPU failure logs for further operational insights. To the best of our knowledge, this is the first systematic analysis of power data of HPC system at this scale.},
booktitle = {Proceedings of the International Conference for High Performance Computing, Networking, Storage and Analysis},
articleno = {12},
numpages = {14},
keywords = {energy, telemetry, HPC, power, data analysis, reliability, GPU},
location = {St. Louis, Missouri},
series = {SC '21}
}
```


# DATA & FILE OVERVIEW

1. File List:
    1. Primary
    	- `powtemp_10sec_mean/`: per-component power and temperature 10-second mean aggregates from the original high-resolution (1Hz) data collected in 2020 January & August, 2021 February & August, and 2022 January.  Month segments are organized as directories with per-day parquet formatted files.  Total 492GB.
    	- `powtemp_1min_mean/`: per-component power and temperature 1-minute mean aggregates from the original high-resolution (1Hz) data collected in 2020 January & August, 2021 February & August, and 2022 January.  Month segments are organized as directories with per-day parquet formatted files.  Total 120GB.
    2. Samples
    	- `a_fullperiod_10sec_58hosts_decomp.tar`: Sample of 58 Summit nodes for the months of 2020 January & August, 2021 February & August, and 2022 January.  The dataset is organized by hostname and month such that the directory hierarchy looks like; `a_fullperiod_10sec_58hosts_decomp/hostname/month/yyyymmdd.parquet`.  Total 4.6GB.
    	- `a_fullperiod_10sec_100hosts.tar`: Sample of 100 Summit nodes for the months of 2020 January & August, 2021 February & August, and 2022 January.  Node list is maintained throughout the entire period.  The dataset is organized a one file per day where this file contains data of all 100 nodes on that day.  Node list is maintained throughout the entire period.  Total 4.2GB
    	- `b_snapshot_10sec_24h.tar`: Uniform random sampling of 3k Summit node snapshots. Each snapshot contains thermal and power averages of 10-second intervals over 1 day.  Total 1.1GB.
    	- `c_snapshot_1min_24h.tar`: Uniform random sampling of \textcolor{red}{4.6k (all nodes for one day) +} 14k Summit node snapshots. Each snapshot contains thermal and power averages of 1-minute intervals over 1 day, which results in a dataset of 1.9 GB.
    	- `d_snapshot_1min_4626hosts_24h/`: Sample of five 24h periods from the `powtemp_1min_mean/` dataset that includes all 4,626 hosts.  Total 4.1GB.

2. Relationship between files:
    - `powtemp_10sec_mean/` derived from 1Hz measurement of power & temperature internally available only to the OLCF (not included in this dataset)
    - `powtemp_1min_mean/` derived from `powtemp_10sec_mean/`
    - `a_fullperiod_10sec_58hosts_decomp.tar` derived from `powtemp_10sec_mean/`
    - `a_fullperiod_10sec_100hosts.tar` derived from `powtemp_10sec_mean/`
    - `b_snapshot_10sec_24h.tar` derived from `powtemp_10sec_mean/`
    - `c_snapshot_1min_24h.tar` derived from `powtemp_1min_mean/`
    - `d_snapshot_1min_4626hosts_24h/` derived from `powtemp_1min_mean/` 

3. Additional related data collected that was not included in the current data package:
    - The original 1Hz dataset in which the primary `powtemp_1min_mean/` dataset is derived from is not included in this package.

4. Are there multiple versions of the dataset? No - this is the first version of this dataset
    - 2022-04-06: initial submission


# METHODOLOGICAL INFORMATION

1. Description of methods used for collection/generation of data: 
	- The original dataset relies on the out-of-band telemetry streams pushed to the
telemetry system at a 1Hz data rate from the baseboard management
controllers (BMCs) of each Summit compute node using the [OpenBMC event subscription protocol](https://github.com/openbmc/docs/blob/master/rest-api.md).  Each per-node datastreams are merged into a single datastream at a 288:1 fan-in ratio by the IBM-CRASSD daemons as described in [Thaler2020](https://ieeexplore.ieee.org/document/9286239) and has been pushed and archived in a telemetry data processing & analysis system described in [Shin2021](https://doi.org/10.1145/3458817.3476188).

2. Methods for processing the data:  
	- Leveraging a parallel data analytics and computing tool [Dask](https://dask.org/), the primary dataset `powtemp_10sec_mean/` is a result of extracting essential power and thermal measurements from the original aforementioned dataset and taking mean values of the samples at 10-second intervals.  This resulted in a dataset of 492 GB stored in [parquet](https://parquet.apache.org/) format using the [pyarrow](https://arrow.apache.org/docs/python/index.html) engine when using [Pandas](https://pandas.pydata.org/) or [Dask](https://dask.org/).  In doing so, each column has been compressed using the [Snappy algorithm](https://github.com/google/snappy) and has been partitioned either in [parquet](https://parquet.apache.org/) rowgroups or individual [parquet](https://parquet.apache.org/) files sized for interactive analysis in small scale machines that has less than 8GB of memory (i.e., 8GB memory per Dask worker).

3. Instrument- or software-specific information needed to interpret the data: 
	- Tools that can read [Snappy algorithm](https://github.com/google/snappy) compressed [parquet](https://parquet.apache.org/) files are necessary.  If using Python, one can use the aforementioned libraries such as [pyarrow](https://arrow.apache.org/docs/python/index.html), [python-snappy](https://pypi.org/project/python-snappy/), [Pandas](https://pandas.pydata.org/), and [Dask](https://dask.org/) to handle the dataset.  Examples are supplied through a [companion github repository provided by the authors.](https://github.com/at-aaims/summit_power_and_thermal_data).

4. Standards and calibration information, if appropriate: N/A

5. Environmental/experimental conditions: N/A

6. Describe any quality-assurance procedures performed on the data:
	- The original data streams for this dataset has been maintained by OLCF staff with a response time from 24-hour to 1-week fixing any ongoing failures and disruptions.
	- This dataset has been extracted from periods that has minimal data loss caused by regular scheduled downtimes, firmware device errors or other misc. failures.
	- When processing the dataset, we first filtered out rows from hosts that are not "Powered On" which gives invalid sensor readings (i.e., Pandas NA).

7. People involved with sample collection, processing, analysis and/or submission:
	1. Raw data collection, maintenance, operation, processing, and analysis
		- Woong Shin
	2. Sample data creation, processing and analysis
		- Woong Shin, Vladyslav Oles, Ahmad Maroof Karimi
	3. Sample data design and submission
		- J. Austin Ellis, Woong Shin, Ahmad Maroof Karimi, Vladyslav Oles, Sajal Dash
	4. [Companion github repository](https://github.com/at-aaims/summit_power_and_thermal_data)
		- Woong Shin, J. Austin Ellis, Ahmad Maroof Karimi, Vladyslav Oles, Sajal Dash
	5. [SMC2022 data challenge](https://smc-datachallenge.ornl.gov/) associated with this dataset
		- Woong Shin, J. Austin Ellis, Ahmad Maroof Karimi, Vladyslav Oles, Sajal Dash, Feiyi Wang


# DATA-SPECIFIC INFORMATION

## Variables

Description of variables commonly used across all datasets.

### Sample information

* `timestamp`: Timestamp of the row
* `hostname`: Hostname of the node `<column:[a-h]><row:[0-24]>n<node_in_rack:[1-18] bottom (1) to top (18)>`
* `state`: State of the host if exists (always "Powered on")

### Node power

* `ps0_input_power`: AC input power consumption of the first node power supply (Watts)
* `ps1_input_power`: AC input power consumption of the second node power supply (Watts)

### CPU power

* `p0_power`: DC power consumption of the first Power9 CPU in the node (Watts)
* `p1_power`: DC power consumption of the second Power9 CPU in the node (Watts)


### CPU temperature

#### Per-core CPU temperature (if exists)
* `p0_core_X_temp`: Temperature of the Xth core of the first Power9 CPU (Celsius)
* `p1_core_X_temp`: Temperature of the Xth core of the second Power9 CPU (Celsius)

#### Per-core CPU temperature aggregates
* `p0_core_temp_[mean,min,max]` or `p0_temp_[mean,min,max]`: aggregates (min, max, mean) of the core temperatures of the first Power9 CPU within the row (Celcius)
* `p1_core_temp_[mean,min,max]` or `p1_temp_[mean,min,max]`: aggregates (min, max, mean) of the core temperatures of the second Power9 CPU within the row (Celcius)

#### GPU power

* `p0_gpu0_power`: DC power consumption of the 1st Nvidia V100 GPU attached to the first Power9 CPU (Watts)
* `p0_gpu1_power`: DC power consumption of the 2nd Nvidia V100 GPU attached to the first Power9 CPU (Watts)
* `p0_gpu2_power`: DC power consumption of the 3rd Nvidia V100 GPU attached to the first Power9 CPU (Watts)
* `p1_gpu0_power`: DC power consumption of the 1st Nvidia V100 GPU attached to the second Power9 CPU (Watts)
* `p1_gpu1_power`: DC power consumption of the 2nd Nvidia V100 GPU attached to the second Power9 CPU (Watts)
* `p1_gpu2_power`: DC power consumption of the 3rd Nvidia V100 GPU attached to the second Power9 CPU (Watts)

#### GPU temperature

* `gpu0_core_temp`: Core temperature of the 1st Nvidia V100 GPU attached to the first Power9 CPU (Celsius)
* `gpu1_core_temp`: Core temperature of the 2nd Nvidia V100 GPU attached to the first Power9 CPU (Celsius)
* `gpu2_core_temp`: Core temperature of the 3rd Nvidia V100 GPU attached to the first Power9 CPU (Celsius)
* `gpu3_core_temp`: Core temperature of the 1st Nvidia V100 GPU attached to the second Power9 CPU (Celsius)
* `gpu4_core_temp`: Core temperature of the 2nd Nvidia V100 GPU attached to the second Power9 CPU (Celsius)
* `gpu5_core_temp`: Core temperature of the 3rd Nvidia V100 GPU attached to the second Power9 CPU (Celsius)
* `gpu0_mem_temp`: Memory (HBM) temperature of the 1st Nvidia V100 GPU attached to the first Power9 CPU (Celsius)
* `gpu1_mem_temp`: Memory (HBM) temperature of the 2nd Nvidia V100 GPU attached to the first Power9 CPU (Celsius)
* `gpu2_mem_temp`: Memory (HBM) temperature of the 3rd Nvidia V100 GPU attached to the first Power9 CPU (Celsius)
* `gpu3_mem_temp`: Memory (HBM) temperature of the 1st Nvidia V100 GPU attached to the second Power9 CPU (Celsius)
* `gpu4_mem_temp`: Memory (HBM) temperature of the 2nd Nvidia V100 GPU attached to the second Power9 CPU (Celsius)
* `gpu5_mem_temp`: Memory (HBM) temperature of the 3rd Nvidia V100 GPU attached to the second Power9 CPU (Celsius)


## Primary Datasets

### `powtemp_10sec_mean/`

1. Number of variables: 71 variables
2. Number of cases/rows: 5,880,257,490 rows (total 492GB)
3. Variable list
    - `timestamp`
    - `hostname`
    - `node_state`
    - `ps0_input_power`
    - `ps1_input_power`
    - `p0_gpu0_power`
    - `p0_gpu1_power`
    - `p0_gpu2_power`
    - `p1_gpu0_power`
    - `p1_gpu1_power`
    - `p1_gpu2_power`
    - `p0_power`
    - `p1_power`
    - `gpu0_core_temp`
    - `gpu1_core_temp`
    - `gpu2_core_temp`
    - `gpu3_core_temp`
    - `gpu4_core_temp`
    - `gpu5_core_temp`
    - `gpu0_mem_temp`
    - `gpu1_mem_temp`
    - `gpu2_mem_temp`
    - `gpu3_mem_temp`
    - `gpu4_mem_temp`
    - `gpu5_mem_temp`
    - `p0_core[0,1,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21,22,23]_temp`: total 23 variables (index - 0 to 23 without 13)
    - `p1_core[0,1,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21,22,23]_temp`: total 23 variables (index - 0 to 23 without 13)
    
4. Missing data codes:
    - `NaN`: Fillers for missing data for float32 data types in the Pandas library
5. Specialized formats or other abbreviations used: N/A

### `powtemp_1min_mean/`

1. Number of variables: 71 variables
2. Number of cases/rows: 1,116,818,861 rows (total 120GB)
3. Variable list
    - `timestamp`
    - `hostname`
    - `node_state`
    - `ps0_input_power`
    - `ps1_input_power`
    - `p0_gpu0_power`
    - `p0_gpu1_power`
    - `p0_gpu2_power`
    - `p1_gpu0_power`
    - `p1_gpu1_power`
    - `p1_gpu2_power`
    - `p0_power`
    - `p1_power`
    - `gpu0_core_temp`
    - `gpu1_core_temp`
    - `gpu2_core_temp`
    - `gpu3_core_temp`
    - `gpu4_core_temp`
    - `gpu5_core_temp`
    - `gpu0_mem_temp`
    - `gpu1_mem_temp`
    - `gpu2_mem_temp`
    - `gpu3_mem_temp`
    - `gpu4_mem_temp`
    - `gpu5_mem_temp`
    - `p0_core[0,1,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21,22,23]_temp`: total 23 variables (index - 0 to 23 without 13)
    - `p1_core[0,1,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21,22,23]_temp`: total 23 variables (index - 0 to 23 without 13)
4. Missing data codes:
    - `NaN`: Fillers for missing data for float32 data types in the Pandas library
5. Specialized formats or other abbreviations used: N/A

## Sample datasets

For convenience, this dataset includes five sample datasets that are derived from the two primary datasets.

### Sample: `a_fullperiod_10sec_58hosts.tar_decomp.tar`

1. Number of variables: 30 variables
2. Number of cases/rows: 73,904,353 rows (total 4.6GB)
3. Variable list
    - `timestamp`
    - `hostname`
    - `ps0_input_power`
    - `ps1_input_power`
    - `p0_gpu0_power`
    - `p0_gpu1_power`
    - `p0_gpu2_power`
    - `p1_gpu0_power`
    - `p1_gpu1_power`
    - `p1_gpu2_power`
    - `p0_power`
    - `p1_power`
    - `gpu0_core_temp`
    - `gpu1_core_temp`
    - `gpu2_core_temp`
    - `gpu3_core_temp`
    - `gpu4_core_temp`
    - `gpu5_core_temp`
    - `gpu0_mem_temp`
    - `gpu1_mem_temp`
    - `gpu2_mem_temp`
    - `gpu3_mem_temp`
    - `gpu4_mem_temp`
    - `gpu5_mem_temp`
    - `p0_core_temp_mean`
    - `p0_core_temp_min`
    - `p0_core_temp_max`
    - `p1_core_temp_mean`
    - `p1_core_temp_min`
    - `p1_core_temp_max`
4. Missing data codes:
    - `NaN`: Fillers for missing data for float32 data types in the Pandas library
    - Number of NaNs: 23487449 which is 1.2% of the dataset
5. Specialized formats or other abbreviations used: N/A


### Sample: `a_fullperiod_10sec_100hosts.tar`

1. Number of variables: 30 variables
2. Number of cases/rows: 127,007,113 rows (total 4.2GB)
3. Variable list
    - `timestamp`
    - `hostname`
    - `ps0_input_power`
    - `ps1_input_power`
    - `p0_gpu0_power`
    - `p0_gpu1_power`
    - `p0_gpu2_power`
    - `p1_gpu0_power`
    - `p1_gpu1_power`
    - `p1_gpu2_power`
    - `p0_power`
    - `p1_power`
    - `gpu0_core_temp`
    - `gpu1_core_temp`
    - `gpu2_core_temp`
    - `gpu3_core_temp`
    - `gpu4_core_temp`
    - `gpu5_core_temp`
    - `gpu0_mem_temp`
    - `gpu1_mem_temp`
    - `gpu2_mem_temp`
    - `gpu3_mem_temp`
    - `gpu4_mem_temp`
    - `gpu5_mem_temp`
    - `p0_temp_mean`
    - `p0_temp_min`
    - `p0_temp_max`
    - `p1_temp_mean`
    - `p1_temp_min`
    - `p1_temp_max`
4. Missing data codes:
    - `NaN`: Fillers for missing data for float32 data types in the Pandas library
    - Number of NaNs: 53284099 which is 1.5%  of the dataset
5. Specialized formats or other abbreviations used: N/A


### Sample: `b_snapshot_10sec_24h.tar`

1. Number of variables: 30 variables
2. Number of cases/rows: 27,367,428 rows (1.1GB)
3. Variable list
    - `timestamp`
    - `hostname`
    - `ps0_input_power`
    - `ps1_input_power`
    - `p0_gpu0_power`
    - `p0_gpu1_power`
    - `p0_gpu2_power`
    - `p1_gpu0_power`
    - `p1_gpu1_power`
    - `p1_gpu2_power`
    - `p0_power`
    - `p1_power`
    - `gpu0_core_temp`
    - `gpu1_core_temp`
    - `gpu2_core_temp`
    - `gpu3_core_temp`
    - `gpu4_core_temp`
    - `gpu5_core_temp`
    - `gpu0_mem_temp`
    - `gpu1_mem_temp`
    - `gpu2_mem_temp`
    - `gpu3_mem_temp`
    - `gpu4_mem_temp`
    - `gpu5_mem_temp`
    - `p0_core_temp_mean`
    - `p0_core_temp_min`
    - `p0_core_temp_max`
    - `p1_core_temp_mean`
    - `p1_core_temp_min`
    - `p1_core_temp_max`
4. Missing data codes:
    - `NaN`: Fillers for missing data for float32 data types in the Pandas library
5. Specialized formats or other abbreviations used: N/A

### Sample: `c_snapshot_1min_24h.tar`

1. Number of variables: 30 variables
2. Number of cases/rows: 30,973,416 rows (1.9GB)
3. Variable list
    - `timestamp`
    - `hostname`
    - `ps0_input_power`
    - `ps1_input_power`
    - `p0_gpu0_power`
    - `p0_gpu1_power`
    - `p0_gpu2_power`
    - `p1_gpu0_power`
    - `p1_gpu1_power`
    - `p1_gpu2_power`
    - `p0_power`
    - `p1_power`
    - `gpu0_core_temp`
    - `gpu1_core_temp`
    - `gpu2_core_temp`
    - `gpu3_core_temp`
    - `gpu4_core_temp`
    - `gpu5_core_temp`
    - `gpu0_mem_temp`
    - `gpu1_mem_temp`
    - `gpu2_mem_temp`
    - `gpu3_mem_temp`
    - `gpu4_mem_temp`
    - `gpu5_mem_temp`
    - `p0_core_temp_mean`
    - `p0_core_temp_min`
    - `p0_core_temp_max`
    - `p1_core_temp_mean`
    - `p1_core_temp_min`
    - `p1_core_temp_max`
4. Missing data codes:
    - `NaN`: Fillers for missing data for float32 data types in the Pandas library
5. Specialized formats or other abbreviations used: N/A


### Sample:`d_snapshot_1min_4626hosts_24h/`

1. Number of variables: 30 variables
2. Number of cases/rows: 34,649,816 rows (4.1GB)
3. Variable list
    - `timestamp`
    - `hostname`
    - `ps0_input_power`
    - `ps1_input_power`
    - `p0_gpu0_power`
    - `p0_gpu1_power`
    - `p0_gpu2_power`
    - `p1_gpu0_power`
    - `p1_gpu1_power`
    - `p1_gpu2_power`
    - `p0_power`
    - `p1_power`
    - `gpu0_core_temp`
    - `gpu1_core_temp`
    - `gpu2_core_temp`
    - `gpu3_core_temp`
    - `gpu4_core_temp`
    - `gpu5_core_temp`
    - `gpu0_mem_temp`
    - `gpu1_mem_temp`
    - `gpu2_mem_temp`
    - `gpu3_mem_temp`
    - `gpu4_mem_temp`
    - `gpu5_mem_temp`
    - `p0_temp_mean`
    - `p0_temp_min`
    - `p0_temp_max`
    - `p1_temp_mean`
    - `p1_temp_min`
    - `p1_temp_max`
4. Missing data codes:
    - `NaN`: Fillers for missing data for float32 data types in the Pandas library
5. Specialized formats or other abbreviations used: N/A

# Resources

Helpful resources in understanding and utilizing this data set.

1. Data collection methodology, understanding of the Summit System, and related analysis
    - [Revealing power, energy and thermal dynamics of a 200PF pre-exascale supercomputer](https://doi.org/10.1145/3458817.3476188): full scale power & thermal analysis with the original dataset, architectural information and details of the data collection methodologies
    - [Hybrid Approach to HPC Cluster Telemetry and Hardware Log Analytics](https://doi.org/10.1109/HPEC43674.2020.9286239): details of the per-node data collection method provided by IBM.
2. Cooling system design and architectural information
    - [Summit and Sierra supercomputer cooling solutions](https://doi.org/10.1147/JRD.2019.2958902): Details of the IBM AC922 cooling design
    - [Thermal and Mechanical Design of the Fastest Supercomputer of the World in Cognitive Systems: IBM POWER AC 922](https://asmedigitalcollection.asme.org/InterPACK/proceedings/InterPACK2019/59322/V001T02A006/1071715): Another article about the details of the IBM AC922 cooling design
3. General information about the OLCF Summit Supercomputer
    - [SUMMIT: Oak Ridge National Laboratory's 200 petaflop supercomputer](https://www.olcf.ornl.gov/olcf-resources/compute-systems/summit/): general information about the Summit supercomputer
    - [User Guide](https://docs.olcf.ornl.gov/systems/summit_user_guide.html#): general user guide
    - [Virtual tour for the Summit system](https://www.olcf.ornl.gov/2020/08/10/take-a-virtual-tour-of-ornls-supercomputer-center/): A close-up detailed virtual tour of the Summit compute floor and its central energy plant
