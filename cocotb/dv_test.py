# This file is public domain, it can be freely copied without restrictions.
# SPDX-License-Identifier: CC0-1.0

import cocotb

# -----------------------------------------------------------------------------

class dv_test:

    def __init__(self, dut, msg_lvl="Fail", err_max=0):
        self.dut = dut
        msg_lvls = {"None" : 0, "Summary" : 1, "Fail" : 2, "All" : 3}
        self.msg_lvl = msg_lvls[msg_lvl]
        self.err_max = err_max
        self.err_cnt = 0
        self.tot_cnt = 0


    def eq(self, act, exp, description=""):
        if exp == None:
            return
        self.tot_cnt += 1
        binstr = act.value.binstr
        try:
            val = int(binstr,2)
        except ValueError:
            self.err_cnt += 1
            if self.msg_lvl >= 2:
                self.dut._log.error("FAIL: act = " + binstr  + " exp = " + hex(exp) + " " + description)
            return
        if exp != val:
            self.err_cnt += 1
            if self.msg_lvl >= 2:
                self.dut._log.error("FAIL: act = " + hex(val)  + " exp = " + hex(exp) + " " + description)
            if self.err_max > 0 and self.err_cnt >= self.err_max:
                self.done()
        else:
            if self.msg_lvl >= 3:
                self.dut._log.info("PASS: act = " + hex(val) + " " + description)


    def done(self):
        test_pass = (self.err_cnt == 0)
        if self.msg_lvl >= 1:
            if test_pass:
                msg = "TEST PASSED: All " + str(self.tot_cnt) + " checks passed"
                self.dut._log.info(msg)
            else:
                msg = "TEST FAILED: " + str(self.err_cnt) + " of " + str(self.tot_cnt) + " checks failed"
                self.dut._log.error(msg)
        assert test_pass, msg


    def info(self, msg):
        self.dut._log.info(msg)


    def val(self, sig, xval = -1):
        binstr = sig.value.binstr
        try:
            val = int(binstr,2)
            return val
        except ValueError:
            return xval


    def bin2int(self, binstr, xval = -1):
        binstr = binstr
        try:
            val = int(binstr,2)
            return val
        except ValueError:
            return xval


    def val(self, sig, xval = -1):
        return bin2int(sig.value.binstr)


    def hi(self, sig, xval = False):
        binstr = sig.value.binstr
        try:
            val = int(binstr,2)
            return val != 0
        except ValueError:
            return xval


    def lo(self, sig, xval = False):
        binstr = sig.value.binstr
        try:
            val = int(binstr,2)
            return val == 0
        except ValueError:
            return xval




