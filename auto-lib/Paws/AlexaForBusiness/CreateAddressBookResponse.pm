
package Paws::AlexaForBusiness::CreateAddressBookResponse;
  use Moose;
  has AddressBookArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateAddressBookResponse

=head1 ATTRIBUTES


=head2 AddressBookArn => Str

The ARN of the newly created address book.


=head2 _request_id => Str


=cut

1;