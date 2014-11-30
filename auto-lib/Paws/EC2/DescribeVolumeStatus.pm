
package Paws::EC2::DescribeVolumeStatus {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VolumeId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumeStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVolumeStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumeStatus - Arguments for method DescribeVolumeStatus on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVolumeStatus on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeVolumeStatus.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVolumeStatus.

As an example:

  $service_obj->DescribeVolumeStatus(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 DryRun => Bool

  

=head2 Filters => ArrayRef[Paws::EC2::Filter]

  

One or more filters.

=over

=item *

C<action.code> - The action code for the event (for example,
C<enable-volume-io>).

=item *

C<action.description> - A description of the action.

=item *

C<action.event-id> - The event ID associated with the action.

=item *

C<availability-zone> - The Availability Zone of the instance.

=item *

C<event.description> - A description of the event.

=item *

C<event.event-id> - The event ID.

=item *

C<event.event-type> - The event type (for C<io-enabled>: C<passed> |
C<failed>; for C<io-performance>: C<io-performance:degraded> |
C<io-performance:severely-degraded> | C<io-performance:stalled>).

=item *

C<event.not-after> - The latest end time for the event.

=item *

C<event.not-before> - The earliest start time for the event.

=item *

C<volume-status.details-name> - The cause for C<volume-status.status>
(C<io-enabled> | C<io-performance>).

=item *

C<volume-status.details-status> - The status of
C<volume-status.details-name> (for C<io-enabled>: C<passed> |
C<failed>; for C<io-performance>: C<normal> | C<degraded> |
C<severely-degraded> | C<stalled>).

=item *

C<volume-status.status> - The status of the volume (C<ok> | C<impaired>
| C<warning> | C<insufficient-data>).

=back










=head2 MaxResults => Int

  

The maximum number of paginated volume items per response.










=head2 NextToken => Str

  

The next paginated set of results to return using the pagination token
returned by a previous call.










=head2 VolumeIds => ArrayRef[Str]

  

One or more volume IDs.

Default: Describes all your volumes.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for DescribeVolumeStatus in Paws::EC2

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

