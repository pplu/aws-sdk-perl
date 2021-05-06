
package Paws::AlexaForBusiness::GetAddressBookResponse;
  use Moose;
  has AddressBook => (is => 'ro', isa => 'Paws::AlexaForBusiness::AddressBook');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetAddressBookResponse

=head1 ATTRIBUTES


=head2 AddressBook => L<Paws::AlexaForBusiness::AddressBook>

The details of the requested address book.


=head2 _request_id => Str


=cut

1;