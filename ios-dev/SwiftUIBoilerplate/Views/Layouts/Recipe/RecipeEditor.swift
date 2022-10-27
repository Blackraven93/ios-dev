//
//  RecipeEditor.swift
//  ios-dev
//
//  Created by blackRaven on 2022/10/27.
//

import SwiftUI

struct RecipeEditor: View {
    @Binding var config: RecipeEditorConfig
      
      var body: some View {
          NavigationStack {
              RecipeEditorForm(config: $config)
                  .toolbar {
                      ToolbarItem(placement: .principal) {
                          Text(editorTitle)
                      }
                      
                      ToolbarItem(placement: cancelButtonPlacement) {
                          Button {
                              config.cancel()
                          } label: {
                              Text("Cancel")
                          }
                      }
                      
                      ToolbarItem(placement: saveButtonPlacement) {
                          Button {
                              config.done()
                          } label: {
                              Text("Save")
                          }
                      }
                  }
              #if os(macOS)
                  .padding()
              #endif
          }
      }
      
      private var editorTitle: String {
          config.recipe.isNew ? "Add Recipe" : "Edit Recipe"
      }
      
      private var cancelButtonPlacement: ToolbarItemPlacement {
          #if os(macOS)
          .cancellationAction
          #else
          .navigationBarLeading
          #endif
      }
      
      private var saveButtonPlacement: ToolbarItemPlacement {
          #if os(macOS)
          .confirmationAction
          #else
          .navigationBarTrailing
          #endif
      }
}

struct RecipeEditor_Previews: PreviewProvider {
    static var previews: some View {
        RecipeEditor()
    }
}
