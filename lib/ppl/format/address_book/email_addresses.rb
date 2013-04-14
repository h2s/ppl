
class Ppl::Format::AddressBook::EmailAddresses < Ppl::Format::AddressBook

  attr_writer :table

  def initialize(colors={})
    @table = Ppl::Format::Table.new([:id, :email_addresses], colors)
  end

  def process(address_book)
    address_book.contacts.each { |contact| add_row(contact) }
    @table.to_s
  end


  private

  def add_row(contact)
    @table.add_row({
      :id              => sprintf("%s:", contact.id),
      :email_addresses => contact.email_addresses.join(", "),
    })
  end


end
