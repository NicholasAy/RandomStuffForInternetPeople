classdef allCombiDifferenceRam
	properties
		Data % Your input data. Each column is a vector.
	end
	methods
		function obj = allCombiDifference(fileNames,varargin)
			% fileNames is an array (string) of the fileNames.
			% the remaining inputs are the vectors, either as a matrix (columns)
			%	or as separate VERTICAL inputs.
			
			fileNames = string(fileNames);
			if nargin == 2
				data = cell(size(fileNames);
				for ii = 1:length(data)
					data{ii} = varargin{1}(:,ii);
				end
			else
				data = varargin;
			end
			
			obj.Data = containers.Map(fileNames,data);
		end
		
		function val = GetCombi(obj, main, subtract)
			val = obj.Data(string(main)) - obj.Data(string(subtract));
		end
		
		% Some other stuff you can do:
		% Add file: obj.Data(string(fileName)) = vector;
		% Remove file: remove(obj.Data,string(fileName));
	end
end