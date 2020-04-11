import cpp

class NetWorkByteSwap extends Expr {
    NetWorkByteSwap() {
        exists(MacroInvocation mi |
            mi.getMacroName().regexpMatch("ntoh(s|l|ll)") and this = mi.getExpr()
        )
    }
}

from NetWorkByteSwap n
select n, "Network byte swap"
