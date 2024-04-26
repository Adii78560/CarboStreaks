//
//  globeView.swift
//  CarboFoots
//
//  Created by Adii I on 25/02/24.
//

import SwiftUI
import SceneKit

struct EarthSceneView: UIViewControllerRepresentable {
    typealias UIViewControllerType = EarthViewController

    func makeUIViewController(context: Context) -> EarthViewController {
        let viewController = EarthViewController()
        return viewController
    }

    func updateUIViewController(_ uiViewController: EarthViewController, context: Context) {
        // Update view controller if needed
    }
}

class EarthViewController: UIViewController {
    var sceneView: SCNView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create and setup SCNView
        sceneView = SCNView()
        sceneView.translatesAutoresizingMaskIntoConstraints = false
        sceneView.allowsCameraControl = true
        view.addSubview(sceneView)
        
        NSLayoutConstraint.activate([
            sceneView.topAnchor.constraint(equalTo: view.topAnchor),
            sceneView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sceneView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sceneView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        sceneView.scene?.rootNode.addChildNode(createCamera())
        sceneView.scene?.rootNode.addChildNode(createAmbientLight())
        sceneView.scene?.rootNode.addChildNode(createDirectionalLight())

        // Create and setup SCNScene
        let scene = SCNScene()
        sceneView.backgroundColor = UIColor.clear
        scene.background.contents = UIColor.clear.cgColor
//        material.transparencyMode = .rgbZero
        let globe = createSphere()
        scene.rootNode.addChildNode(globe)
        sceneView.scene = scene
    }

    func createSphere() -> SCNNode {
        let sphere = SCNSphere(radius: 0.5)
        sphere.firstMaterial?.diffuse.contents = UIImage(named: "globe")
        let node = SCNNode(geometry: sphere)

        let rotation = SCNAction.rotate(by: .pi, around: SCNVector3(0, 1, 0), duration: 20)
        node.runAction(SCNAction.repeatForever(rotation))
        return node
    }
    
    func createCamera() -> SCNNode
    {
        let cam = SCNCamera()
        cam.zFar = 100.0
        cam.fieldOfView = 60
        
        let node = SCNNode()
        node.camera = cam;
        node.position = SCNVector3(0,0,7)
        _ = SCNAction.move(to: SCNVector3(0,0,1.0), duration: 100)
        return node
    }
    
    func createAmbientLight() ->SCNNode
    {
        let light = SCNLight()
        light.type = .ambient
        light.color = UIColor.gray
        let node = SCNNode()
        node.light = light
        
        return node
    }
    
    func createDirectionalLight() ->SCNNode
    {
        let light = SCNLight()
        light.type = .omni
        
        let node = SCNNode()
        node.position = SCNVector3(5, 5, 5)

        node.light = light
        
        return node
    }
}
