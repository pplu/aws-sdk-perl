
package Paws::RDS::OrderableDBInstanceOptionsMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableDBInstanceOptions => (is => 'ro', isa => 'ArrayRef[Paws::RDS::OrderableDBInstanceOption]', request_name => 'OrderableDBInstanceOption', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::OrderableDBInstanceOptionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous
OrderableDBInstanceOptions request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords> .


=head2 OrderableDBInstanceOptions => ArrayRef[L<Paws::RDS::OrderableDBInstanceOption>]

An OrderableDBInstanceOption structure containing information about
orderable options for the DB instance.


=head2 _request_id => Str


=cut

