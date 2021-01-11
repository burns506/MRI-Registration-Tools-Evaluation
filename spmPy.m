function spmReg(movingImage, templateImage)
	jobFile = cellstr('spmPyJob.m');
	inputs{1,1} = cellstr(movingImage);
	inputs{2,1} = cellstr(templateImage);
	spm('defaults', 'FMRI'); 
	spm_jobman('run', jobFile, inputs{:});
end
