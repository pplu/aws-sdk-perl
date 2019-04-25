
package Paws::Neptune::DescribeDBClusterSnapshots;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBClusterSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Filter]');
  has IncludePublic => (is => 'ro', isa => 'Bool');
  has IncludeShared => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SnapshotType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::DBClusterSnapshotMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterSnapshotsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DescribeDBClusterSnapshots - Arguments for method DescribeDBClusterSnapshots on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBClusterSnapshots on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method DescribeDBClusterSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBClusterSnapshots.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $DBClusterSnapshotMessage = $rds->DescribeDBClusterSnapshots(
      DBClusterIdentifier         => 'MyString',    # OPTIONAL
      DBClusterSnapshotIdentifier => 'MyString',    # OPTIONAL
      Filters                     => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                            # OPTIONAL
      IncludePublic => 1,                           # OPTIONAL
      IncludeShared => 1,                           # OPTIONAL
      Marker        => 'MyString',                  # OPTIONAL
      MaxRecords    => 1,                           # OPTIONAL
      SnapshotType  => 'MyString',                  # OPTIONAL
    );

    # Results:
    my $DBClusterSnapshots = $DBClusterSnapshotMessage->DBClusterSnapshots;
    my $Marker             = $DBClusterSnapshotMessage->Marker;

    # Returns a L<Paws::Neptune::DBClusterSnapshotMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBClusterSnapshots>

=head1 ATTRIBUTES


=head2 DBClusterIdentifier => Str

The ID of the DB cluster to retrieve the list of DB cluster snapshots
for. This parameter can't be used in conjunction with the
C<DBClusterSnapshotIdentifier> parameter. This parameter is not
case-sensitive.

Constraints:

=over

=item *

If supplied, must match the identifier of an existing DBCluster.

=back




=head2 DBClusterSnapshotIdentifier => Str

A specific DB cluster snapshot identifier to describe. This parameter
can't be used in conjunction with the C<DBClusterIdentifier> parameter.
This value is stored as a lowercase string.

Constraints:

=over

=item *

If supplied, must match the identifier of an existing
DBClusterSnapshot.

=item *

If this identifier is for an automated snapshot, the C<SnapshotType>
parameter must also be specified.

=back




=head2 Filters => ArrayRef[L<Paws::Neptune::Filter>]

This parameter is not currently supported.



=head2 IncludePublic => Bool

True to include manual DB cluster snapshots that are public and can be
copied or restored by any AWS account, and otherwise false. The default
is C<false>. The default is false.

You can share a manual DB cluster snapshot as public by using the
ModifyDBClusterSnapshotAttribute API action.



=head2 IncludeShared => Bool

True to include shared manual DB cluster snapshots from other AWS
accounts that this AWS account has been given permission to copy or
restore, and otherwise false. The default is C<false>.

You can give an AWS account permission to restore a manual DB cluster
snapshot from another AWS account by the
ModifyDBClusterSnapshotAttribute API action.



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

The type of DB cluster snapshots to be returned. You can specify one of
the following values:

=over

=item *

C<automated> - Return all DB cluster snapshots that have been
automatically taken by Amazon Neptune for my AWS account.

=item *

C<manual> - Return all DB cluster snapshots that have been taken by my
AWS account.

=item *

C<shared> - Return all manual DB cluster snapshots that have been
shared to my AWS account.

=item *

C<public> - Return all DB cluster snapshots that have been marked as
public.

=back

If you don't specify a C<SnapshotType> value, then both automated and
manual DB cluster snapshots are returned. You can include shared DB
cluster snapshots with these results by setting the C<IncludeShared>
parameter to C<true>. You can include public DB cluster snapshots with
these results by setting the C<IncludePublic> parameter to C<true>.

The C<IncludeShared> and C<IncludePublic> parameters don't apply for
C<SnapshotType> values of C<manual> or C<automated>. The
C<IncludePublic> parameter doesn't apply when C<SnapshotType> is set to
C<shared>. The C<IncludeShared> parameter doesn't apply when
C<SnapshotType> is set to C<public>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBClusterSnapshots in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

