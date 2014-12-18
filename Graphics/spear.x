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
 42;
 0.03663;-0.83332;0.01121;,
 0.03663;-0.57901;0.01121;,
 -0.00174;-0.87226;0.01583;,
 -0.00058;-0.56870;0.01583;,
 0.03663;-0.57901;0.00031;,
 -0.00058;-0.56870;0.00031;,
 0.03663;-0.83332;0.00031;,
 -0.00174;-0.87226;0.00031;,
 -0.03663;-0.83332;0.01121;,
 0.00174;-0.87226;0.01583;,
 -0.03663;-0.57901;0.01121;,
 -0.03663;-0.57901;0.00031;,
 -0.03663;-0.83332;0.00031;,
 0.00174;-0.87226;0.00031;,
 0.03663;-0.83332;-0.01121;,
 -0.00174;-0.87226;-0.01583;,
 0.03663;-0.57901;-0.01121;,
 -0.00058;-0.56870;-0.01583;,
 -0.03663;-0.83332;-0.01121;,
 -0.03663;-0.57901;-0.01121;,
 0.00174;-0.87226;-0.01583;,
 0.00058;-0.56870;-0.00031;,
 -0.02571;-0.57541;0.02571;,
 0.02571;-0.57541;0.02571;,
 0.02571;0.94478;0.02571;,
 -0.02571;0.94478;0.02571;,
 -0.02571;0.94478;0.02571;,
 0.02571;0.94478;0.02571;,
 0.02571;0.94478;-0.02571;,
 -0.02571;0.94478;-0.02571;,
 -0.02571;0.94478;-0.02571;,
 0.02571;0.94478;-0.02571;,
 0.02571;-0.57541;-0.02571;,
 -0.02571;-0.57541;-0.02571;,
 -0.02571;-0.57541;-0.02571;,
 0.02571;-0.57541;-0.02571;,
 0.02571;-0.57541;0.02571;,
 -0.02571;-0.57541;0.02571;,
 0.02571;-0.57541;0.02571;,
 0.02571;0.94478;0.02571;,
 -0.02571;-0.57541;0.02571;,
 -0.02571;0.94478;0.02571;;
 
 26;
 3;0,1,2;,
 3;1,3,2;,
 4;4,5,3,1;,
 4;6,4,1,0;,
 4;7,6,0,2;,
 3;8,9,10;,
 3;10,9,3;,
 4;11,10,3,5;,
 4;12,8,10,11;,
 4;13,9,8,12;,
 3;14,15,16;,
 3;16,15,17;,
 4;4,16,17,5;,
 4;6,14,16,4;,
 4;7,15,14,6;,
 3;18,19,20;,
 3;19,17,20;,
 4;11,21,17,19;,
 4;12,11,19,18;,
 4;13,12,18,20;,
 4;22,23,24,25;,
 4;26,27,28,29;,
 4;30,31,32,33;,
 4;34,35,36,37;,
 4;38,35,28,39;,
 4;34,40,41,29;;
 
 MeshMaterialList {
  2;
  26;
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
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   0.483200;0.483200;0.483200;1.000000;;
   0.000000;
   0.100000;0.100000;0.100000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.545600;0.332800;0.222400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  31;
  0.121146;-0.000236;0.992635;,
  0.119373;-0.000000;0.992850;,
  -0.001896;-0.000727;0.999998;,
  0.712306;-0.701870;-0.000000;,
  0.089297;0.996005;0.000000;,
  0.266972;0.963704;0.000000;,
  0.925285;-0.379272;-0.000000;,
  -0.123028;-0.000485;0.992403;,
  -0.119373;-0.000000;0.992850;,
  -0.712306;-0.701870;0.000000;,
  -0.272344;0.962186;0.005105;,
  -0.925285;-0.379272;0.000000;,
  0.121146;-0.000235;-0.992635;,
  0.119373;0.000000;-0.992850;,
  -0.001896;-0.000726;-0.999998;,
  -0.123028;-0.000485;-0.992403;,
  -0.119373;0.000000;-0.992850;,
  -0.269736;0.962880;0.010210;,
  0.000000;-0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  -0.004140;0.999991;0.000000;,
  0.266972;0.963704;0.000000;,
  1.000000;0.000000;0.000000;,
  0.712306;-0.701869;-0.000000;,
  -0.274943;0.961461;0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.712306;-0.701869;0.000000;,
  0.266972;0.963704;0.000000;,
  -0.001434;0.999985;0.005300;,
  0.000000;-1.000000;-0.000000;;
  26;
  3;1,0,0;,
  3;0,2,0;,
  4;5,4,21,22;,
  4;6,23,23,6;,
  4;3,6,6,24;,
  3;8,7,7;,
  3;7,7,2;,
  4;10,25,21,4;,
  4;11,11,26,26;,
  4;9,27,11,11;,
  3;13,12,12;,
  3;12,12,14;,
  4;5,28,29,4;,
  4;6,6,23,23;,
  4;3,24,6,6;,
  3;16,15,15;,
  3;15,14,15;,
  4;10,17,29,17;,
  4;11,26,26,11;,
  4;9,11,11,27;,
  4;18,18,18,18;,
  4;19,19,19,19;,
  4;20,20,20,20;,
  4;30,30,30,30;,
  4;23,23,23,23;,
  4;26,26,26,26;;
 }
 MeshTextureCoords {
  42;
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
  0.000000;1.000000;
  0.000000;1.000000;
  0.000000;0.000000;
  1.000000;0.000000;
  1.000000;1.000000;
  0.000000;1.000000;
  0.000000;0.000000;
  1.000000;0.000000;
  1.000000;1.000000;
  0.000000;1.000000;
  0.000000;0.000000;
  1.000000;0.000000;
  1.000000;1.000000;
  0.000000;1.000000;
  0.000000;0.000000;
  1.000000;0.000000;
  1.000000;1.000000;
  0.000000;1.000000;
  0.000000;0.000000;
  0.000000;1.000000;
  1.000000;0.000000;
  1.000000;1.000000;;
 }
}