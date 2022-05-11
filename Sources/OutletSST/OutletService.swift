

import Foundation
import OutletCommon

//class OutletService: Outlet_Grpc_OutletProvider {
//  var interceptors: Outlet_Grpc_OutletServerInterceptorFactoryProtocol?
//
//  func subscribe_to_signals(request: Outlet_Grpc_Subscribe_Request, context: StreamingResponseCallContext<Outlet_Grpc_SignalMsg>) -> EventLoopFuture<GRPCStatus> {
//    <#code#>
//  }
//
//  func send_signal(request: Outlet_Grpc_SignalMsg, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_SendSignalResponse> {
//    <#code#>
//  }
//
//  func get_config(request: Outlet_Grpc_GetConfig_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_GetConfig_Response> {
//    <#code#>
//  }
//
//  func put_config(request: Outlet_Grpc_PutConfig_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_PutConfig_Response> {
//    <#code#>
//  }
//
//  func get_icon(request: Outlet_Grpc_GetIcon_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_GetIcon_Response> {
//    <#code#>
//  }
//
//  func get_device_list(request: Outlet_Grpc_GetDeviceList_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_GetDeviceList_Response> {
//    <#code#>
//  }
//
//  func get_child_list_for_spid(request: Outlet_Grpc_GetChildList_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_GetChildList_Response> {
//    <#code#>
//  }
//
//  func get_ancestor_list_for_spid(request: Outlet_Grpc_GetAncestorList_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_GetAncestorList_Response> {
//    <#code#>
//  }
//
//  func get_rows_of_interest(request: Outlet_Grpc_GetRowsOfInterest_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_GetRowsOfInterest_Response> {
//    <#code#>
//  }
//
//  func set_selected_row_set(request: Outlet_Grpc_SetSelectedRowSet_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_SetSelectedRowSet_Response> {
//    <#code#>
//  }
//
//  func remove_expanded_row(request: Outlet_Grpc_RemoveExpandedRow_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_RemoveExpandedRow_Response> {
//    <#code#>
//  }
//
//  func get_filter(request: Outlet_Grpc_GetFilter_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_GetFilter_Response> {
//    <#code#>
//  }
//
//  func update_filter(request: Outlet_Grpc_UpdateFilter_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_UpdateFilter_Response> {
//    <#code#>
//  }
//
//  func get_context_menu(request: Outlet_Grpc_GetContextMenu_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_GetContextMenu_Response> {
//    <#code#>
//  }
//
//  func execute_tree_action_list(request: Outlet_Grpc_ExecuteTreeActionList_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_ExecuteTreeActionList_Response> {
//    <#code#>
//  }
//
//  func request_display_tree(request: Outlet_Grpc_RequestDisplayTree_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_RequestDisplayTree_Response> {
//    <#code#>
//  }
//
//  func start_subtree_load(request: Outlet_Grpc_StartSubtreeLoad_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_StartSubtreeLoad_Response> {
//    <#code#>
//  }
//
//  func refresh_subtree(request: Outlet_Grpc_RefreshSubtree_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_Empty> {
//    <#code#>
//  }
//
//  func get_next_uid(request: Outlet_Grpc_GetNextUid_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_GetNextUid_Response> {
//    <#code#>
//  }
//
//  func get_node_for_uid(request: Outlet_Grpc_GetNodeForUid_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_SingleNode_Response> {
//    <#code#>
//  }
//
//  func get_uid_for_local_path(request: Outlet_Grpc_GetUidForLocalPath_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_GetUidForLocalPath_Response> {
//    <#code#>
//  }
//
//  func get_sn_for(request: Outlet_Grpc_GetSnFor_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_GetSnFor_Response> {
//    <#code#>
//  }
//
//  func start_diff_trees(request: Outlet_Grpc_StartDiffTrees_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_StartDiffTrees_Response> {
//    <#code#>
//  }
//
//  func generate_merge_tree(request: Outlet_Grpc_GenerateMergeTree_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_Empty> {
//    <#code#>
//  }
//
//  func drop_dragged_nodes(request: Outlet_Grpc_DragDrop_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_DragDrop_Response> {
//    <#code#>
//  }
//
//  func delete_subtree(request: Outlet_Grpc_DeleteSubtree_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_Empty> {
//    <#code#>
//  }
//
//  func get_last_pending_op_for_node(request: Outlet_Grpc_GetLastPendingOp_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_GetLastPendingOp_Response> {
//    <#code#>
//  }
//
//  func download_file_from_gdrive(request: Outlet_Grpc_DownloadFromGDrive_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_Empty> {
//    <#code#>
//  }
//
//  func get_op_exec_play_state(request: Outlet_Grpc_GetOpExecPlayState_Request, context: StatusOnlyCallContext) -> EventLoopFuture<Outlet_Grpc_PlayState> {
//    <#code#>
//  }
//
//
//}
