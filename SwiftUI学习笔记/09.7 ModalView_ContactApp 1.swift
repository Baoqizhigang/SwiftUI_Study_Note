

import SwiftUI

struct ModalView_ContactApp_1: View {
    
    @State private var showAlert = false
    @State private var showAddContactSheet = false
    @State private var newContact: Contact = Contact(firstName: "", lastName: "", phoneNumber: "", email: "")
    @State private var contacts: [Contact] = []
    
    var body : some View {
        NavigationView {
            VStack {
                if contacts.isEmpty {
                    Text("No Contact")
                        .foregroundColor(.gray)
                        .padding()
                } else {
                    List {
                        ForEach(contacts) { contact in
                            HStack {
                                VStack(alignment: .leading) {
                                    
                                    
                                    Text("\(contact.firstName)  \(contact.lastName)")
                                        .font(.headline)
                                    
                                    Spacer()
                                    
                                    Text(contact.phoneNumber)
                                        .font(.subheadline)
                                
                                }
                                .padding()
                                
                                Spacer()
                                
                                Button(action: {
                                    showAlert.toggle()
                                }) {
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                }
                                .alert("Are you sure to delete this contact?", isPresented: $showAlert) {
                                    Button("Delete", role: .destructive) {
                                        contacts.removeAll { $0.id == contact.id }
                                    }
                                 
                                    Button("Cancel", role: .cancel){}
                                }
                            }
                            .contextMenu {
                                Button {
                                } label: {
                                    Label("Edit", systemImage: "pencil")
                                }
                                
                                Button {
                                    showAlert.toggle()
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                        }
                    }
                }
                
                Spacer()
                Button(action: {
                    showAddContactSheet.toggle()
                }) {
                    Label("Add", systemImage: "pencil")
                }
            }
            .navigationTitle("Contact List")
            .sheet(isPresented: $showAddContactSheet) {
                AddContactForm(newContact: $newContact, contacts: $contacts, showAddContactSheet: $showAddContactSheet)
            }
            .padding()
        }
    }
}
 
struct AddContactForm: View {
    @Binding var newContact: Contact
    @Binding var contacts: [Contact]
    @Binding var showAddContactSheet: Bool
    @State private var showValidationAlert: Bool = false
    
    var body : some View {
        NavigationView {
            Form {
                
                Section(header: Text("Name")) {
                    TextField("First Name", text: $newContact.firstName)
                    TextField("Last Name", text: $newContact.lastName)
                }
                Section(header: Text("Contact Info")) {
                    TextField("Phone Number", text: $newContact.phoneNumber)
                    TextField("Email", text: $newContact.email)
                        .keyboardType(.emailAddress)
                }
            }
            .navigationBarTitle("New Contact", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        showAddContactSheet = false
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        if newContact.firstName.isEmpty || newContact.phoneNumber.isEmpty {
                            showValidationAlert = true
                        } else {
                            contacts.append(newContact)
                            newContact = Contact(firstName: "", lastName: "", phoneNumber: "", email: "")
                            showAddContactSheet = false
                        }
                    }
                    .alert("Please fill in both first name and phone number", isPresented: $showValidationAlert) {
                        Button("Confirm", role: .cancel) {}
                    }
                }
            }
        }
    }
}




struct Contact: Identifiable {
    let id = UUID()
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var email: String
}

#Preview {
    ModalView_ContactApp_1()
}

// 🫶 👑  👀 🤓 😱 ⭐ 🩷 🌸
