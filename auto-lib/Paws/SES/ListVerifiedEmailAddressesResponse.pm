
package Paws::SES::ListVerifiedEmailAddressesResponse;
  use Moose;
  has VerifiedEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListVerifiedEmailAddressesResponse

=head1 ATTRIBUTES


=head2 VerifiedEmailAddresses => ArrayRef[Str|Undef]

A list of email addresses that have been verified.


=head2 _request_id => Str


=cut

