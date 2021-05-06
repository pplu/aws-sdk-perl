
package Paws::RDS::DeleteCustomAvailabilityZoneResult;
  use Moose;
  has CustomAvailabilityZone => (is => 'ro', isa => 'Paws::RDS::CustomAvailabilityZone');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteCustomAvailabilityZoneResult

=head1 ATTRIBUTES


=head2 CustomAvailabilityZone => L<Paws::RDS::CustomAvailabilityZone>




=head2 _request_id => Str


=cut

