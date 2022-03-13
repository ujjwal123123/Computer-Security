rule WannaCry {
    strings:
        $s0 = "WanaCrypt0r" wide
    condition:
        all of them
}

rule pegasus {
    strings:
        $s0 = "seC.dujmehn.qdtheyt" wide
    condition:
        all of them
}

rule shadowHammer {
    strings:
        $0 = "URPQQh"
    condition:
        any of them
}

rule wannaPeace {
    strings:
        $0 = "if you delete me you'll lost all your files FOREVER!!!" wide
    condition:
        any of them
}

rule zerolocker {
    strings:
        $1 = "3D9B94A98B-76A8-4810-B1A0-4BE7C4F9C98DA2#" wide
    condition:
        any of them
}