
package Paws::AlexaForBusiness::GetAddressBook;
  use Moose;
  has AddressBookArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAddressBook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::GetAddressBookResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetAddressBook - Arguments for method GetAddressBook on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAddressBook on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method GetAddressBook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAddressBook.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $GetAddressBookResponse = $a4b->GetAddressBook(
      AddressBookArn => 'MyArn',

    );

    # Results:
    my $AddressBook = $GetAddressBookResponse->AddressBook;

    # Returns a L<Paws::AlexaForBusiness::GetAddressBookResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/GetAddressBook>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressBookArn => Str

The ARN of the address book for which to request details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAddressBook in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

