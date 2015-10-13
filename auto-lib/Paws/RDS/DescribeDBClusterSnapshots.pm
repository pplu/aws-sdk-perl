
package Paws::RDS::DescribeDBClusterSnapshots;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBClusterSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SnapshotType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBClusterSnapshotMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterSnapshotsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBClusterSnapshots - Arguments for method DescribeDBClusterSnapshots on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBClusterSnapshots on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method DescribeDBClusterSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBClusterSnapshots.

As an example:

  $service_obj->DescribeDBClusterSnapshots(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 DBClusterIdentifier => Str

  A DB cluster identifier to retrieve the list of DB cluster snapshots
for. This parameter cannot be used in conjunction with the
C<DBClusterSnapshotIdentifier> parameter. This parameter is not
case-sensitive.

Constraints:

=over

=item * Must contain from 1 to 63 alphanumeric characters or hyphens

=item * First character must be a letter

=item * Cannot end with a hyphen or contain two consecutive hyphens

=back


=head2 DBClusterSnapshotIdentifier => Str

  A specific DB cluster snapshot identifier to describe. This parameter
cannot be used in conjunction with the C<DBClusterIdentifier>
parameter. This value is stored as a lowercase string.

Constraints:

=over

=item * Must be 1 to 255 alphanumeric characters

=item * First character must be a letter

=item * Cannot end with a hyphen or contain two consecutive hyphens

=item * If this is the identifier of an automated snapshot, the
C<SnapshotType> parameter must also be specified.

=back


=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

  This parameter is not currently supported.

=head2 Marker => Str

  An optional pagination token provided by a previous
C<DescribeDBClusterSnapshots> request. If this parameter is specified,
the response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.

=head2 MaxRecords => Int

  The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.

=head2 SnapshotType => Str

  The type of DB cluster snapshots that will be returned. Values can be
C<automated> or C<manual>. If this parameter is not specified, the
returned results will include all snapshot types.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBClusterSnapshots in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

