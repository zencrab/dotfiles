{ pkgs, ... }:
{
    home.packages = with pkgs; [
        gimp
    ];

    xdg.desktopEntries."gimp" = {
        type = "Application";

        name = "GIMP";
        genericName = "Image Editor";
        comment = "Create images and edit photographs";
        icon = "gimp";

        exec = "gimp";
        terminal = false;

        categories = [
            "Graphics"
            "2DGraphics"
            "RasterGraphics"
            "GTK"
        ];
        mimeType = [
            "image/bmp"
            "image/g3fax"
            "image/gif"
            "image/x-fits"
            "image/x-pcx"
            "image/x-portable-anymap"
            "image/x-portable-bitmap"
            "image/x-portable-graymap"
            "image/x-portable-pixmap"
            "image/x-psd"
            "image/x-sgi"
            "image/x-tga"
            "image/x-xbitmap"
            "image/x-xwindowdump"
            "image/x-xcf"
            "image/x-compressed-xcf"
            "image/x-gimp-gbr"
            "image/x-gimp-pat"
            "image/x-gimp-gih"
            "image/tiff"
            "image/jpeg"
            "image/x-psp"
            "application/postscript"
            "image/png"
            "image/x-icon"
            "image/x-xpixmap"
            "image/svg+xml"
            "application/pdf"
            "image/x-wmf"
            "image/x-xcursor"
        ];
    };
}
