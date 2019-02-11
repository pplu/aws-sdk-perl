
package Paws::RDS::DescribeDBSnapshots;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DbiResourceId => (is => 'ro', isa => 'Str');
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has IncludePublic => (is => 'ro', isa => 'Bool');
  has IncludeShared => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SnapshotType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBSnapshotMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshotsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBSnapshots - Arguments for method DescribeDBSnapshots on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBSnapshots on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBSnapshots.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
   # To list DB snapshot attributes
   # This example lists all manually-created, shared snapshots for the specified
   # DB instance.
    my $DBSnapshotMessage = $rds->DescribeDBSnapshots(
      {
        'DBInstanceIdentifier' => 'mymysqlinstance',
        'IncludePublic'        => 0,
        'IncludeShared'        => 1,
        'SnapshotType'         => 'manual'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBSnapshots>

=head1 ATTRIBUTES


=head2 DBInstanceIdentifier => Str

The ID of the DB instance to retrieve the list of DB snapshots for.
This parameter can't be used in conjunction with
C<DBSnapshotIdentifier>. This parameter is not case-sensitive.

Constraints:

=over

=item *

If supplied, must match the identifier of an existing DBInstance.

=back




=head2 DbiResourceId => Str

A specific DB resource ID to describe.



=head2 DBSnapshotIdentifier => Str

A specific DB snapshot identifier to describe. This parameter can't be
used in conjunction with C<DBInstanceIdentifier>. This value is stored
as a lowercase string.

Constraints:

=over

=item *

If supplied, must match the identifier of an existing DBSnapshot.

=item *

If this identifier is for an automated snapshot, the C<SnapshotType>
parameter must also be specified.

=back




=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

This parameter is not currently supported.



=head2 IncludePublic => Bool

True to include manual DB snapshots that are public and can be copied
or restored by any AWS account, and otherwise false. The default is
false.

You can share a manual DB snapshot as public by using the
ModifyDBSnapshotAttribute API.



=head2 IncludeShared => Bool

True to include shared manual DB snapshots from other AWS accounts that
this AWS account has been given permission to copy or restore, and
otherwise false. The default is C<false>.

You can give an AWS account permission to restore a manual DB snapshot
from another AWS account by using the ModifyDBSnapshotAttribute API
action.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeDBSnapshots> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.



=head2 SnapshotType => Str

The type of snapshots to be returned. You can specify one of the
following values:

=over

=item *

C<automated> - Return all DB snapshots that have been automatically
taken by Amazon RDS for my AWS account.

=item *

C<manual> - Return all DB snapshots that have been taken by my AWS
account.

=item *

C<shared> - Return all manual DB snapshots that have been shared to my
AWS account.

=item *

C<public> - Return all DB snapshots that have been marked as public.

=back

If you don't specify a C<SnapshotType> value, then both automated and
manual snapshots are returned. Shared and public DB snapshots are not
included in the returned results by default. You can include shared
snapshots with these results by setting the C<IncludeShared> parameter
to C<true>. You can include public snapshots with these results by
setting the C<IncludePublic> parameter to C<true>.

The C<IncludeShared> and C<IncludePublic> parameters don't apply for
C<SnapshotType> values of C<manual> or C<automated>. The
C<IncludePublic> parameter doesn't apply when C<SnapshotType> is set to
C<shared>. The C<IncludeShared> parameter doesn't apply when
C<SnapshotType> is set to C<public>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBSnapshots in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

