//
//  ViewController.swift
//  Weather App
//
//  Created by Paulo Sergio on 23/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    // utilizando a lazy var o componente será criado quando uma referencia de lazy var for criada
    private lazy var customView: UIView = {
        let view = UIView(frame: .zero)
        // pode usar UIColor.black ou somente o .
        view.backgroundColor = .black
        // ao criar uma constraint programaticamente é necessario setar a
        // propriedade a baixo como false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        // Só é executado uma vez quando a tela é carregada
        super.viewDidLoad()
        
        setupView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    private func setupView() {
        view.backgroundColor = .red
        
        
        setHierarchy()
        setConstraints()
    }
    
    // metodo para setar a hierarquia da view
    private func setHierarchy() {
        view.addSubview(customView)
    }
    
    private func setConstraints() {
        // se ficar negativa fazer analogia com o plano carteziano
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
        ])
    }
}

