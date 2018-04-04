
package Paws::AlexaForBusiness::AssociateContactWithAddressBook;
  use Moose;
  has AddressBookArn => (is => 'ro', isa => 'Str', required => 1);
  has ContactArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateContactWithAddressBook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::AssociateContactWithAddressBookResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::AssociateContactWithAddressBook - Arguments for method AssociateContactWithAddressBook on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateContactWithAddressBook on the 
Alexa For Business service. Use the attributes of this class
as arguments to method AssociateContactWithAddressBook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateContactWithAddressBook.

As an example:

  $service_obj->AssociateContactWithAddressBook(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressBookArn => Str

The ARN of the address book with which to associate the contact.



=head2 B<REQUIRED> ContactArn => Str

The ARN of the contact to associate with an address book.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateContactWithAddressBook in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

