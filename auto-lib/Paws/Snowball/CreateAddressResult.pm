
package Paws::Snowball::CreateAddressResult;
  use Moose;
  has AddressId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::CreateAddressResult

=head1 ATTRIBUTES


=head2 AddressId => Str

The automatically generated ID for a specific address. You'll use this
ID when you create a job to specify which address you want the Snowball
for that job shipped to.


=head2 _request_id => Str


=cut

1;