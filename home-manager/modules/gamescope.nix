{ lib, libX11, libXrender, libXext, pixman, libuuid, xcbutilrenderutil, writeText
, stdenv, libXcomposite, libXxf86vm, vulkan-headers, vulkan-validation-layers, makeWrapper
, fetchFromGitHub, cmake, libXdamage, libXtst, vulkan-tools, libXi, libxcb, xcbutil
, meson, ninja, pkgconfig, scdoc, libXres, vulkan-loader, mesa, glslang, xcbutilwm
, wayland, pango, libdrm, libinput, libxkbcommon, SDL2, stb, xwayland, xcbutilerrors
, cairo, wayland-protocols, wayland-scanner, libcap, pipewire, libseat, libliftoff, wlroots
, ...}:

stdenv.mkDerivation rec{
  name = "gamescope";
  src = fetchFromGitHub{
    owner = "Plagman";
    repo = "gamescope";
    hash = "sha256-5UEXO3TfdjkELHU/dnjsyNKF1z+hOvuG4DFOR5g4phc=";
    rev = "ff14b6a5dd0bd09a665b609e6f47f76be7607816";
    fetchSubmodules = true;
  };

  prePatch = ''
    echo ":: Copying stb"
    cp -vr "${stb.src}" subprojects/stb
    chmod -R +w subprojects/stb
    cp "subprojects/packagefiles/stb/meson.build" "subprojects/stb/"

    substituteInPlace meson.build --replace \
      "'force_fallback_for=wlroots,libliftoff'," ""
  '';
  
  postInstall = ''
    wrapProgram $out/bin/gamescope \
      --prefix PATH : "${lib.makeBinPath [ xwayland ]}"
  '';

  nativeBuildInputs = [
   meson ninja pkgconfig makeWrapper glslang stb
  ];
  
  buildInputs = [
    libX11 libXdamage libXcomposite libXrender libXext libXxf86vm
    libXtst libdrm vulkan-validation-layers vulkan-headers vulkan-loader wayland wayland-protocols libseat
    libxkbcommon libcap SDL2 mesa libinput pixman xcbutilerrors
    xcbutilwm libXi libXres libuuid xcbutilrenderutil xwayland
    pipewire wlroots
  ];
}
