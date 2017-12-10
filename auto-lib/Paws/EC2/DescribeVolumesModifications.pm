
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
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeVolumesModifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVolumesModifications.

As an example:

  $service_obj->DescribeVolumesModifications(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters. Supported filters: C<volume-id>,
C<modification-state>, C<target-size>, C<target-iops>,
C<target-volume-type>, C<original-size>, C<original-iops>,
C<original-volume-type>, C<start-time>.



=head2 MaxResults => Int

The maximum number of results (up to a limit of 500) to be returned in
a paginated request.



=head2 NextToken => Str

The C<nextToken> value returned by a previous paginated request.



=head2 VolumeIds => ArrayRef[Str|Undef]

One or more volume IDs for which in-progress modifications will be
described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVolumesModifications in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

