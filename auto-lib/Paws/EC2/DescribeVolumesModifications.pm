
package Paws::EC2::DescribeVolumesModifications;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'VolumeId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumesModifications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVolumesModificationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumesModifications - Arguments for method DescribeVolumesModifications on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVolumesModifications on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVolumesModifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVolumesModifications.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeVolumesModificationsResult = $ec2->DescribeVolumesModifications(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'MyString',               # OPTIONAL
      VolumeIds  => [ 'MyVolumeId', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeVolumesModificationsResult->NextToken;
    my $VolumesModifications =
      $DescribeVolumesModificationsResult->VolumesModifications;

    # Returns a L<Paws::EC2::DescribeVolumesModificationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVolumesModifications>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters.

=over

=item *

C<modification-state> - The current modification state (modifying |
optimizing | completed | failed).

=item *

C<original-iops> - The original IOPS rate of the volume.

=item *

C<original-size> - The original size of the volume, in GiB.

=item *

C<original-volume-type> - The original volume type of the volume
(standard | io1 | io2 | gp2 | sc1 | st1).

=item *

C<originalMultiAttachEnabled> - Indicates whether Multi-Attach support
was enabled (true | false).

=item *

C<start-time> - The modification start time.

=item *

C<target-iops> - The target IOPS rate of the volume.

=item *

C<target-size> - The target size of the volume, in GiB.

=item *

C<target-volume-type> - The target volume type of the volume (standard
| io1 | io2 | gp2 | sc1 | st1).

=item *

C<targetMultiAttachEnabled> - Indicates whether Multi-Attach support is
to be enabled (true | false).

=item *

C<volume-id> - The ID of the volume.

=back




=head2 MaxResults => Int

The maximum number of results (up to a limit of 500) to be returned in
a paginated request.



=head2 NextToken => Str

The C<nextToken> value returned by a previous paginated request.



=head2 VolumeIds => ArrayRef[Str|Undef]

The IDs of the volumes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVolumesModifications in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

