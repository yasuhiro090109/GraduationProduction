xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 21;
 0.03731;0.00000;0.02431;,
 0.03697;0.00000;0.00906;,
 0.03693;0.00000;0.02590;,
 0.03409;0.00000;-0.00485;,
 0.03481;0.00000;0.03468;,
 0.03289;0.00000;0.04171;,
 0.03069;0.00000;-0.01769;,
 0.02124;0.00000;0.03906;,
 0.02561;0.00000;-0.02706;,
 0.01783;0.00000;-0.03539;,
 0.02200;0.00000;0.05371;,
 0.01838;0.00000;0.05473;,
 0.00218;0.00000;0.05357;,
 0.00483;0.00000;-0.04527;,
 -0.00395;0.00000;-0.04416;,
 -0.00768;0.00000;0.04638;,
 -0.01314;0.00000;-0.04164;,
 -0.02315;0.00000;0.02896;,
 -0.02436;0.00000;-0.02849;,
 -0.02883;0.00000;0.00783;,
 -0.02852;0.00000;-0.01324;;
 
 38;
 3;0,1,2;,
 3;1,3,2;,
 3;2,3,4;,
 3;4,3,5;,
 3;3,6,5;,
 3;5,6,7;,
 3;6,8,7;,
 3;8,9,7;,
 3;10,7,11;,
 3;7,9,11;,
 3;11,9,12;,
 3;9,13,12;,
 3;13,14,12;,
 3;12,14,15;,
 3;14,16,15;,
 3;15,16,17;,
 3;16,18,17;,
 3;17,18,19;,
 3;18,20,19;,
 3;2,1,0;,
 3;2,3,1;,
 3;4,3,2;,
 3;5,3,4;,
 3;5,6,3;,
 3;7,6,5;,
 3;7,8,6;,
 3;7,9,8;,
 3;11,7,10;,
 3;11,9,7;,
 3;12,9,11;,
 3;12,13,9;,
 3;12,14,13;,
 3;15,14,12;,
 3;15,16,14;,
 3;17,16,15;,
 3;17,18,16;,
 3;19,18,17;,
 3;19,20,18;;
 
 MeshMaterialList {
  1;
  38;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   1.000000;0.901961;0.921569;1.000000;;
   0.000000;
   0.100000;0.100000;0.100000;;
   0.520000;0.469020;0.479216;;
  }
 }
 MeshNormals {
  2;
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;;
  38;
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;;
 }
 MeshTextureCoords {
  21;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;1.000000;;
 }
}
