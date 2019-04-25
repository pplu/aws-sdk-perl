
package Paws::DS::DescribeSnapshots;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SnapshotIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DescribeSnapshotsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeSnapshots - Arguments for method DescribeSnapshots on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSnapshots on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method DescribeSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSnapshots.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $DescribeSnapshotsResult = $ds->DescribeSnapshots(
      DirectoryId => 'MyDirectoryId',            # OPTIONAL
      Limit       => 1,                          # OPTIONAL
      NextToken   => 'MyNextToken',              # OPTIONAL
      SnapshotIds => [ 'MySnapshotId', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeSnapshotsResult->NextToken;
    my $Snapshots = $DescribeSnapshotsResult->Snapshots;

    # Returns a L<Paws::DS::DescribeSnapshotsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/DescribeSnapshots>

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The identifier of the directory for which to retrieve snapshot
information.



=head2 Limit => Int

The maximum number of objects to return.



=head2 NextToken => Str

The I<DescribeSnapshotsResult.NextToken> value from a previous call to
DescribeSnapshots. Pass null if this is the first call.



=head2 SnapshotIds => ArrayRef[Str|Undef]

A list of identifiers of the snapshots to obtain the information for.
If this member is null or empty, all snapshots are returned using the
I<Limit> and I<NextToken> members.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSnapshots in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

