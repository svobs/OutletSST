//
//  GRPCClientBackend.swift
//
//
//  Created by Matthew Svoboda on 2021-01-11.
//

import Foundation
import GRPC
import Logging
import NIO
import OutletCommon

/**
 CLASS GRPCServer
 */
class GRPCServer {
  var grpcConverter = GRPCConverter()
  var nodeIdentifierFactory = NodeIdentifierFactory()
  private var fixedPort: Int? = nil

  private let dqGRPC = DispatchQueue(label: "GRPC-SerialQueue") // custom dispatch queues are serial by default

  init(_  fixedPort: Int? = nil) {
    self.fixedPort = fixedPort
    // TODO: init GRPC service
  }

  func start() throws {
    NSLog("DEBUG Starting SST Server...")
    // TODO: create signal receiver actor

    // TODO: start Bonjour service advertising
    // TODO: start GRPC service
  }

  func shutdown() throws {
//    self.bonjourService.stopDiscovery()
  }

  // Signals
  // ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼ ▼


}
