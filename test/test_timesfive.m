classdef test_timesfive < matlab.unittest.TestCase
    
    properties (TestParameter)
        inputValue = struct("scalar",1,"vector",[1 1]);
        expectedValue = struct("scalar",5,"vector",[5 5]);
    end
    

    methods (Test, ParameterCombination="sequential")
        % Test methods

        function simpleTest(testCase, inputValue, expectedValue)
            act = timesfive(inputValue);
            testCase.verifyEqual(act, expectedValue)
        end
    end

end
