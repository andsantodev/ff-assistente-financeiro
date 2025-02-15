import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  Local state fields for this component.

  String? resposta = '';

  List<HistoricoConversaStruct> historicoConversa = [];
  void addToHistoricoConversa(HistoricoConversaStruct item) =>
      historicoConversa.add(item);
  void removeFromHistoricoConversa(HistoricoConversaStruct item) =>
      historicoConversa.remove(item);
  void removeAtIndexFromHistoricoConversa(int index) =>
      historicoConversa.removeAt(index);
  void insertAtIndexInHistoricoConversa(
          int index, HistoricoConversaStruct item) =>
      historicoConversa.insert(index, item);
  void updateHistoricoConversaAtIndex(
          int index, Function(HistoricoConversaStruct) updateFn) =>
      historicoConversa[index] = updateFn(historicoConversa[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Chat Completions Open IA)] action in IconButton widget.
  ApiCallResponse? apiResultChatOpenAI;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
