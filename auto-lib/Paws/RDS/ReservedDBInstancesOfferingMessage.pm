
package Paws::RDS::ReservedDBInstancesOfferingMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferings => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ReservedDBInstancesOffering]', request_name => 'ReservedDBInstancesOffering', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ReservedDBInstancesOfferingMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReservedDBInstancesOfferings => ArrayRef[L<Paws::RDS::ReservedDBInstancesOffering>]

A list of reserved DB instance offerings.


=head2 _request_id => Str


=cut

