
package Paws::EC2::DescribeSnapshots;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OwnerIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'Owner' );
  has RestorableByUserIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'RestorableBy' );
  has SnapshotIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SnapshotId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeSnapshotsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSnapshots - Arguments for method DescribeSnapshots on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSnapshots on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSnapshots.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe a snapshot
    # This example describes a snapshot with the snapshot ID of
    # ``snap-1234567890abcdef0``.
    my $DescribeSnapshotsResult = $ec2->DescribeSnapshots(
      {
        'SnapshotIds' => ['snap-1234567890abcdef0']
      }
    );

    # Results:
    my $NextToken = $DescribeSnapshotsResult->NextToken;
    my $Snapshots = $DescribeSnapshotsResult->Snapshots;

    # Returns a L<Paws::EC2::DescribeSnapshotsResult> object.
    # To describe snapshots using filters
    # This example describes all snapshots owned by the ID 012345678910 that are
    # in the ``pending`` status.
    my $DescribeSnapshotsResult = $ec2->DescribeSnapshots(
      {
        'Filters' => [

          {
            'Name'   => 'status',
            'Values' => ['pending']
          }
        ],
        'OwnerIds' => [012345678910]
      }
    );

    # Results:
    my $NextToken = $DescribeSnapshotsResult->NextToken;
    my $Snapshots = $DescribeSnapshotsResult->Snapshots;

    # Returns a L<Paws::EC2::DescribeSnapshotsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeSnapshots>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<description> - A description of the snapshot.

=item *

C<owner-alias> - Value from an Amazon-maintained list (C<amazon> |
C<aws-marketplace> | C<microsoft>) of snapshot owners. Not to be
confused with the user-configured AWS account alias, which is set from
the IAM console.

=item *

C<owner-id> - The ID of the AWS account that owns the snapshot.

=item *

C<progress> - The progress of the snapshot, as a percentage (for
example, 80%).

=item *

C<snapshot-id> - The snapshot ID.

=item *

C<start-time> - The time stamp when the snapshot was initiated.

=item *

C<status> - The status of the snapshot (C<pending> | C<completed> |
C<error>).

=item *

C<tag>:E<lt>keyE<gt> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=item *

C<volume-id> - The ID of the volume the snapshot is for.

=item *

C<volume-size> - The size of the volume, in GiB.

=back




=head2 MaxResults => Int

The maximum number of snapshot results returned by C<DescribeSnapshots>
in paginated output. When this parameter is used, C<DescribeSnapshots>
only returns C<MaxResults> results in a single page along with a
C<NextToken> response element. The remaining results of the initial
request can be seen by sending another C<DescribeSnapshots> request
with the returned C<NextToken> value. This value can be between 5 and
1000; if C<MaxResults> is given a value larger than 1000, only 1000
results are returned. If this parameter is not used, then
C<DescribeSnapshots> returns all results. You cannot specify this
parameter and the snapshot IDs parameter in the same request.



=head2 NextToken => Str

The C<NextToken> value returned from a previous paginated
C<DescribeSnapshots> request where C<MaxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<NextToken> value.
This value is C<null> when there are no more results to return.



=head2 OwnerIds => ArrayRef[Str|Undef]

Returns the snapshots owned by the specified owner. Multiple owners can
be specified.



=head2 RestorableByUserIds => ArrayRef[Str|Undef]

One or more AWS accounts IDs that can create volumes from the snapshot.



=head2 SnapshotIds => ArrayRef[Str|Undef]

One or more snapshot IDs.

Default: Describes snapshots for which you have launch permissions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSnapshots in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

