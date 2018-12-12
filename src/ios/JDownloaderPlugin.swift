import JDownloader

@available(iOS 10.0, *)
@objc(JDownloader) class JDownloader : CDVPlugin {


    @objc(coolMethod:)
    func coolMethod(command: CDVInvokedUrlCommand) {

         var pluginResult = CDVPluginResult(
           status: CDVCommandStatus_ERROR
         )

         let msg = command.arguments[0] as? String ?? ""

         pluginResult = CDVPluginResult( status: CDVCommandStatus_OK, messageAsString: msg )

            self.commandDelegate!.send(
                pluginResult,
                callbackId: command.callbackId
            )

        }

}

