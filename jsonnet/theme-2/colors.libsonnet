local blue = {
  base: '#61afef',
  _0: '#000000',
  _10: '#001d32',
  _20: '#003352',
  _30: '#004a75',
  _40: '#006399',
  _50: '#1e7dba',
  _60: '#4497d6',
  _70: '#62b2f3',
  _80: '#95ccff',
  _90: '#cde5ff',
  _95: '#e8f2ff',
  _99: '#fcfcff',
  _100: '#ffffff',
};

local green = {
  base: '#8ebd6c',
  _0: '#000000',
  _10: '#0a2000',
  _20: '#163800',
  _30: '#255102',
  _40: '#3c6a1c',
  _50: '#548333',
  _60: '#6c9e4a',
  _70: '#86b962',
  _80: '#a0d57a',
  _90: '#bbf293',
  _95: '#cfffaa',
  _99: '#f8ffeb',
  _100: '#ffffff',
};

local yellow = {
  base: '#e5c07a',
  _0: '#000000',
  _10: '#261900',
  _20: '#412d00',
  _30: '#5d4200',
  _40: '#7b5900',
  _50: '#9a7000',
  _60: '#b9890f',
  _70: '#d7a32e',
  _80: '#f5be48',
  _90: '#ffdea4',
  _95: '#ffefd6',
  _99: '#fffbff',
  _100: '#ffffff',
};

local red = {
  base: '#d8564f',
  _0: '#000000',
  _10: '#410003',
  _20: '#680008',
  _30: '#891c1c',
  _40: '#aa3431',
  _50: '#cb4d46',
  _60: '#ed655d',
  _70: '#ff8980',
  _80: '#ffb3ac',
  _90: '#ffdad6',
  _95: '#ffedeb',
  _99: '#fffbff',
  _100: '#ffffff',
};

local cyan = {
  base: '#3ca6aa',
  _0: '#000000',
  _10: '#002021',
  _20: '#003738',
  _30: '#004f52',
  _40: '#00696c',
  _50: '#008488',
  _60: '#00a1a5',
  _70: '#1dbdc3',
  _80: '#4cd9df',
  _90: '#6ff6fb',
  _95: '#bafdff',
  _99: '#f1ffff',
  _100: '#ffffff',
};

local magenta = {
  base: '#a963c8',
  _0: '#000000',
  _10: '#310047',
  _20: '#510371',
  _30: '#6a2689',
  _40: '#8440a3',
  _50: '#9f5abe',
  _60: '#bb74da',
  _70: '#d88ef7',
  _80: '#eab2ff',
  _90: '#f7d8ff',
  _95: '#feebff',
  _99: '#fffbff',
  _100: '#ffffff',
};

local neutral = {
  _0: '#000000',
  _4: '#0d0d0d',
  _6: '#0f0f0f',
  _10: '#1a1a1a',
  _12: '#1f1f1f',
  _17: '#292929',
  _20: '#2e2e2e',
  _22: '#333333',
  _24: '#383838',
  _30: '#454545',
  _40: '#5c5c5c',
  _50: '#757575',
  _60: '#8f8f8f',
  _70: '#a8a8a8',
  _80: '#c4c4c4',
  _87: '#d9d9d9',
  _90: '#e0e0e0',
  _92: '#e6e6e6',
  _94: '#ededed',
  _95: '#f0f0f0',
  _96: '#f2f2f2',
  _98: '#f7f7f7',
  _99: '#fcfcfc',
  _100: '#ffffff',
};

local neutralVariant = {
  _0: '#000000',
  _10: '#171717',
  _20: '#2b2b2b',
  _30: '#424242',
  _40: '#595959',
  _50: '#737373',
  _60: '#8c8c8c',
  _70: '#a6a6a6',
  _80: '#c2c2c2',
  _90: '#dedede',
  _95: '#ebebeb',
  _99: '#fcfcfc',
  _100: '#ffffff',
};

local primary = blue;
local secondary = blue;
local tertiary = blue;
local _error = red;

local tokensDark = {
  // Primary
  primary: primary._80,
  onPrimary: primary._20,
  primaryContainer: primary._30,
  onPrimaryContainer: primary._90,
  // Secondary
  secondary: secondary._80,
  onSecondary: secondary._20,
  secondaryContainer: secondary._30,
  onSecondaryContainer: secondary._90,
  // Tertiary
  tertiary: tertiary._80,
  onTertiary: tertiary._20,
  tertiaryContainer: tertiary._30,
  onTertiaryContainer: tertiary._90,
  // Error
  _error: _error._80,
  onError: _error._20,
  errorContainer: _error._30,
  onErrorContainer: _error._90,
  // Surface
  surfaceDim: neutral._6,
  surface: neutral._6,
  surfaceBright: neutral._24,
  // Surface Container
  surfaceContainerLowest: neutral._4,
  surfaceContainerLow: neutral._10,
  surfaceContainer: neutral._12,
  surfaceContainerHigh: neutral._17,
  surfaceContainerHighest: neutral._22,
  // On Surface
  onSurface: neutral._90,
  onSurfaceVariant: neutralVariant._80,
  // Outline
  outline: neutralVariant._60,
  outlineVariant: neutralVariant._30,
  // Inverse
  inverseSurface: neutral._90,
  inverseOnSurface: neutral._20,
  inversePrimary: primary._40,
  // Background
  background: neutral._6,
  onBackground: neutral._90,
  // Surface Tint
  surfaceTint: primary._80,
  surfaceVariant: neutralVariant._30,
  // Fixed-Primary
  primaryFixed: primary._90,
  primaryFixedDim: primary._80,
  onPrimaryFixed: primary._10,
  onPrimaryFixedVariant: primary._30,
  // Fixed-Secondary
  secondaryFixed: secondary._90,
  secondaryFixedDim: secondary._80,
  onSecondaryFixed: secondary._10,
  onSecondaryFixedVariant: secondary._30,
  // Fixed-Tertiary
  tertiaryFixed: tertiary._90,
  tertiaryFixedDim: tertiary._80,
  onTertiaryFixed: tertiary._10,
  onTertiaryFixedVariant: tertiary._30,
  // Shadows
  scrim: neutral._0,
  shadow: neutral._0,
};

local tokensLight = {
  // Primary
  primary: primary._40,
  onPrimary: primary._100,
  primaryContainer: primary._90,
  onPrimaryContainer: primary._10,
  // Secondary
  secondary: secondary._40,
  onSecondary: secondary._100,
  secondaryContainer: secondary._90,
  onSecondaryContainer: secondary._10,
  // Tertiary
  tertiary: tertiary._40,
  onTertiary: tertiary._100,
  tertiaryContainer: tertiary._90,
  onTertiaryContainer: tertiary._10,
  // Error
  _error: _error._40,
  onError: _error._100,
  errorContainer: _error._90,
  onErrorContainer: _error._10,
  // Surface
  surfaceDim: neutral._87,
  surface: neutral._98,
  surfaceBright: neutral._98,
  // Surface Container
  surfaceContainerLowest: neutral._100,
  surfaceContainerLow: neutral._96,
  surfaceContainer: neutral._94,
  surfaceContainerHigh: neutral._92,
  surfaceContainerHighest: neutral._90,
  // On Surface
  onSurface: neutral._10,
  onSurfaceVariant: neutralVariant._30,
  // Outline
  outline: neutralVariant._50,
  outlineVariant: neutralVariant._80,
  // Inverse
  inverseSurface: neutral._20,
  inverseOnSurface: neutral._95,
  inversePrimary: primary._80,
  // Background
  background: neutral._98,
  onBackground: neutral._10,
  // Tint
  surfaceTint: primary._40,
  surfaceVariant: neutralVariant._90,
  // FixedPrimary
  primaryFixed: primary._90,
  primaryFixedDim: primary._80,
  onPrimaryFixed: primary._10,
  onPrimaryFixedVariant: primary._30,
  // Fixed-Secondary
  secondaryFixed: secondary._90,
  secondaryFixedDim: secondary._80,
  onSecondaryFixed: secondary._10,
  onSecondaryFixedVariant: secondary._30,
  // Fixed-Tertiary
  tertiaryFixed: tertiary._90,
  tertiaryFixedDim: tertiary._80,
  onTertiaryFixed: tertiary._10,
  onTertiaryFixedVariant: tertiary._30,
  // Shadows
  scrim: neutral._0,
  shadow: neutral._0,
};

tokensDark
