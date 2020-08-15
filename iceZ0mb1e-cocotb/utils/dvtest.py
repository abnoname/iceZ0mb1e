# This file is public domain, it can be freely copied without restrictions.
# SPDX-License-Identifier: CC0-1.0

import cocotb

# -----------------------------------------------------------------------------

class DVTest:

    def __init__(self, dut, name="", msg_lvl="Fail", err_max=0):
        self.dut = dut
        self.name = name
        msg_lvls = {"None" : 0, "Summary" : 1, "Fail" : 2, "All" : 3}
        self.msg_lvl = msg_lvls[msg_lvl]
        self.err_max = err_max
        self.err_cnt = 0
        self.tot_cnt = 0


    def convert_actual_to_int(self, act):
        binstr = ""
        if type(act) == int:
            binstr = '{0:b}'.format(act)
        elif type(act) == str:
            binstr = act
        else:
            binstr = act.value.binstr
        try:
            val = int(binstr,2)
            return val
        except ValueError:
            self.err_cnt += 1
            if self.msg_lvl >= 2:
                self.dut._log.error("FAIL: act = " + binstr  + " exp = " + hex(exp) + " " + description)
            return 0

    def is_true(self, act, description=""):
        self.tot_cnt += 1
        if act == False:
            self.err_cnt += 1
            if self.msg_lvl >= 2:
                self.dut._log.error("FAIL: act = False - " + description)
            if self.err_max > 0 and self.err_cnt >= self.err_max:
                self.done()
        else:
            if self.msg_lvl >= 3:
                self.dut._log.info("pass: act = True - " + description)
        return 0


    def eq(self, act, exp, description=""):
        if exp == None:
            return
        val = self.convert_actual_to_int(act)
        self.tot_cnt += 1
        if exp != val:
            self.err_cnt += 1
            if self.msg_lvl >= 2:
                self.dut._log.error("FAIL: act = " + hex(val)  + " exp = " + hex(exp) + " " + description)
            if self.err_max > 0 and self.err_cnt >= self.err_max:
                self.done()
        else:
            if self.msg_lvl >= 3:
                self.dut._log.info("pass: act = " + hex(val) + " " + description)


    def done(self):
        test_pass = (self.err_cnt == 0)
        if self.msg_lvl >= 1:
            if test_pass:
                msg = "TEST {} PASSED: All {} checks passed".format(self.name, self.tot_cnt)
                self.dut._log.info(msg)
            else:
                msg = "TEST {} FAILED: {} of {} checks failed".format(self.name, self.err_cnt, self.tot_cnt)
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




