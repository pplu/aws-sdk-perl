
package Paws::RDS::CustomAvailabilityZoneMessage;
  use Moose;
  has CustomAvailabilityZones => (is => 'ro', isa => 'ArrayRef[Paws::RDS::CustomAvailabilityZone]', request_name => 'CustomAvailabilityZone', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CustomAvailabilityZoneMessage

=head1 ATTRIBUTES


=head2 CustomAvailabilityZones => ArrayRef[L<Paws::RDS::CustomAvailabilityZone>]

The list of CustomAvailabilityZone objects for the AWS account.


=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeCustomAvailabilityZones> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

