
package Paws::IoTWireless::ListPartnerAccountsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Sidewalk => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::SidewalkAccountInfoWithFingerprint]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListPartnerAccountsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next set of results, or B<null> if there
are no additional results.


=head2 Sidewalk => ArrayRef[L<Paws::IoTWireless::SidewalkAccountInfoWithFingerprint>]

The Sidewalk account credentials.


=head2 _request_id => Str


=cut

