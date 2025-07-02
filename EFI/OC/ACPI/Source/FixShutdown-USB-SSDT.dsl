/* Powers down the USB controller which is needed for proper shutdown.
 * When done incorrectly, macOS will not power down USB as it needs an
 * explicit call for S5 for proper shotdown procedure.
 * Do note this SSDT requires an ACPI hot patch for _PTS to ZPTS as 
 * we're rerouting the old calls.
 * Source for SSDT: Rehabman
 */

DefinitionBlock ("", "SSDT", 2, "Slav", "ZPTS", 0x00000000)
{
    External (_SB_.PCI0.GP17.XHC1, FieldUnitObj) // USB 3.0 1.20
    External (_SB_.PCI0.GP17.XHC0, FieldUnitObj) // USB 3.0 1.20
    External (_SB_.PCI0.GPP7.UP00.DP60.XH00, FieldUnitObj) // USB 3.0 1.10
    External (_SB_.PCI0.GP19.XHC2, FieldUnitObj) // USB 2.0 1.20
    External (ZPTS, MethodObj)    // 1 Arguments

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        ZPTS (Arg0)
        If ((0x05 == Arg0))
        {
            \_SB.PCI0.GP17.XHC1 = Zero
            \_SB.PCI0.GP17.XHC0 = Zero
            \_SB.PCI0.GPP7.UP00.DP60.XH00 = Zero
            \_SB.PCI0.GP19.XHC2 = Zero
        }
    }
}