
package Paws::IoTWireless::GetPartnerAccountResponse;
  use Moose;
  has AccountLinked => (is => 'ro', isa => 'Bool');
  has Sidewalk => (is => 'ro', isa => 'Paws::IoTWireless::SidewalkAccountInfoWithFingerprint');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetPartnerAccountResponse

=head1 ATTRIBUTES


=head2 AccountLinked => Bool

Whether the partner account is linked to the AWS account.


=head2 Sidewalk => L<Paws::IoTWireless::SidewalkAccountInfoWithFingerprint>

The Sidewalk account credentials.


=head2 _request_id => Str


=cut

