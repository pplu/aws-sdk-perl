
package Paws::AlexaForBusiness::DisassociateContactFromAddressBook;
  use Moose;
  has AddressBookArn => (is => 'ro', isa => 'Str', required => 1);
  has ContactArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateContactFromAddressBook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::DisassociateContactFromAddressBookResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::DisassociateContactFromAddressBook - Arguments for method DisassociateContactFromAddressBook on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateContactFromAddressBook on the 
Alexa For Business service. Use the attributes of this class
as arguments to method DisassociateContactFromAddressBook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateContactFromAddressBook.

As an example:

  $service_obj->DisassociateContactFromAddressBook(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressBookArn => Str

The ARN of the address from which to disassociate the contact.



=head2 B<REQUIRED> ContactArn => Str

The ARN of the contact to disassociate from an address book.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateContactFromAddressBook in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

