
package Paws::RDS::DBClusterParameterGroupsMessage;
  use Moose;
  has DBClusterParameterGroups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBClusterParameterGroup]', request_name => 'DBClusterParameterGroup', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBClusterParameterGroupsMessage

=head1 ATTRIBUTES


=head2 DBClusterParameterGroups => ArrayRef[L<Paws::RDS::DBClusterParameterGroup>]

A list of DB cluster parameter groups.


=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeDBClusterParameterGroups> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

