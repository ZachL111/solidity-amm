// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/PolicyScore.sol";

contract PolicyScoreTest {
    function test_case_1() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(77, 96, 17, 11, 11);
        require(scorer.score(signal) == 194, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
    function test_case_2() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(68, 90, 25, 7, 13);
        require(scorer.score(signal) == 186, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
    function test_case_3() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(79, 79, 15, 22, 10);
        require(scorer.score(signal) == 115, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
}
