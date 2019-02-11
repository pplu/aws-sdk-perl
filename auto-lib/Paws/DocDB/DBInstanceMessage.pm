
package Paws::DocDB::DBInstanceMessage;
  use Moose;
  has DBInstances => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::DBInstance]', request_name => 'DBInstance', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBInstanceMessage

=head1 ATTRIBUTES


=head2 DBInstances => ArrayRef[L<Paws::DocDB::DBInstance>]

Detailed information about one or more DB instances.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

