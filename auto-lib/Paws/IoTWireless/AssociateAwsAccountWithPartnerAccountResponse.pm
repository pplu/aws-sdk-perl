
package Paws::IoTWireless::AssociateAwsAccountWithPartnerAccountResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Sidewalk => (is => 'ro', isa => 'Paws::IoTWireless::SidewalkAccountInfo');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::AssociateAwsAccountWithPartnerAccountResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name of the resource.


=head2 Sidewalk => L<Paws::IoTWireless::SidewalkAccountInfo>

The Sidewalk account credentials.


=head2 _request_id => Str


=cut

