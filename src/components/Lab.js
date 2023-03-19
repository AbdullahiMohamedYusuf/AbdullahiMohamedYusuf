import React from "react";
import { Canvas } from "@react-three/fiber";
import { MeshLambertMaterial } from "three";

function Boxs() {
  return (
    <mesh>
        <boxBufferGeometry attach="geometry"/>
        <MeshLambertMaterial attach="material" color="blue" />
    </mesh>
  );
}

function Box() {
    return (
        <Canvas>
            <Boxs />
        </Canvas>
    )
}

export default Box  ;
