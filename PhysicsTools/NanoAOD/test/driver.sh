#!/bin/bash
echo $1
if [ $1 -eq '0' ] ; then
    cmsDriver.py  --python_filename SMP-RunIISummer16NanoAODv8-defaultNano_cfg.py \
	--eventcontent NANOAODSIM \
	--datatier NANOAODSIM \
	--fileout file:SMP-RunIISummer16NanoAODv8-default.root \
	--conditions 102X_mcRun2_asymptotic_v8 \
	--step NANO \
	--filein "dbs:/WplusJetsToMuNu_TuneCP5_13TeV-powhegMiNNLO-pythia8-photos/RunIISummer20UL16MiniAODAPV-106X_mcRun2_asymptotic_preVFP_v8-v2/MINIAODSIM" \
	--era Run2_2016,run2_nanoAOD_106Xv1 \
	--nThreads 4 --no_exec --mc \
	-n 1000 \
	--customise Configuration/DataProcessing/Utils.addMonitoring
else     
    cmsDriver.py  --python_filename SMP-RunIISummer16NanoAODv8-wmassNano_cfg.py \
	--eventcontent NANOAODSIM \
	--datatier NANOAODSIM \
	--fileout file:SMP-RunIISummer16NanoAODv8-wmassNano.root \
	--conditions 102X_mcRun2_asymptotic_v8 \
	--step NANO \
	--filein "dbs:/WplusJetsToMuNu_TuneCP5_13TeV-powhegMiNNLO-pythia8-photos/RunIISummer20UL16MiniAODAPV-106X_mcRun2_asymptotic_preVFP_v8-v2/MINIAODSIM" \
	--era Run2_2016,run2_nanoAOD_106Xv1 \
	--nThreads 4 --no_exec --mc \
	-n 1000 \
	--customise Configuration/DataProcessing/Utils.addMonitoring,PhysicsTools/NanoAOD/nano_cff.nanoGenWmassCustomize
fi

