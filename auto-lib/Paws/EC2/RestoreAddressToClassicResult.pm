
package Paws::EC2::RestoreAddressToClassicResult;
  use Moose;
  has PublicIp => (is => 'ro', isa => 'Str', request_name => 'publicIp', traits => ['NameInRequest',]);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RestoreAddressToClassicResult

=head1 ATTRIBUTES


=head2 PublicIp => Str

The Elastic IP address.


=head2 Status => Str

The move status for the IP address.

Valid values are: C<"MoveInProgress">, C<"InVpc">, C<"InClassic">
=head2 _request_id => Str


=cut

