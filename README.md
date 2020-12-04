To install, go to `File > Install`, and select:

| field | value |
|-------|-------|
| Type of Item to Install: | Package |
| Source: | From File ... (select the `.wl` file) |
| Install Name: | `wfs` |

If you select "Install for this user only", this will copy the `.wl` file
specified in "Source:" to `$UserBaseDirectory/Applications` with the filename
specified in "InstallName:".

To uninstall, execute `$UserBaseDirectory // SystemOpen` and delete the `.wl`
file from the `Applications` directory.

To use, execute ``Needs["wfs`"]``.  Names can be used directly e.g. `physConsts`
or by prefixing with the `Context` e.g. ``wfs`physConsts``.
