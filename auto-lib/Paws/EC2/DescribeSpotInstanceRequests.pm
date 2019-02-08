
package Paws::EC2::DescribeSpotInstanceRequests;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SpotInstanceRequestIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SpotInstanceRequestId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotInstanceRequests');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeSpotInstanceRequestsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotInstanceRequests - Arguments for method DescribeSpotInstanceRequests on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSpotInstanceRequests on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeSpotInstanceRequests.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSpotInstanceRequests.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe a Spot Instance request
    # This example describes the specified Spot Instance request.
    my $DescribeSpotInstanceRequestsResult = $ec2->DescribeSpotInstanceRequests(
      {
        'SpotInstanceRequestIds' => ['sir-08b93456']
      }
    );

    # Results:
    my $SpotInstanceRequests =
      $DescribeSpotInstanceRequestsResult->SpotInstanceRequests;

    # Returns a L<Paws::EC2::DescribeSpotInstanceRequestsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeSpotInstanceRequests>

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

C<availability-zone-group> - The Availability Zone group.

=item *

C<create-time> - The time stamp when the Spot Instance request was
created.

=item *

C<fault-code> - The fault code related to the request.

=item *

C<fault-message> - The fault message related to the request.

=item *

C<instance-id> - The ID of the instance that fulfilled the request.

=item *

C<launch-group> - The Spot Instance launch group.

=item *

C<launch.block-device-mapping.delete-on-termination> - Indicates
whether the EBS volume is deleted on instance termination.

=item *

C<launch.block-device-mapping.device-name> - The device name for the
volume in the block device mapping (for example, C</dev/sdh> or
C<xvdh>).

=item *

C<launch.block-device-mapping.snapshot-id> - The ID of the snapshot for
the EBS volume.

=item *

C<launch.block-device-mapping.volume-size> - The size of the EBS
volume, in GiB.

=item *

C<launch.block-device-mapping.volume-type> - The type of EBS volume:
C<gp2> for General Purpose SSD, C<io1> for Provisioned IOPS SSD, C<st1>
for Throughput Optimized HDD, C<sc1>for Cold HDD, or C<standard> for
Magnetic.

=item *

C<launch.group-id> - The ID of the security group for the instance.

=item *

C<launch.group-name> - The name of the security group for the instance.

=item *

C<launch.image-id> - The ID of the AMI.

=item *

C<launch.instance-type> - The type of instance (for example,
C<m3.medium>).

=item *

C<launch.kernel-id> - The kernel ID.

=item *

C<launch.key-name> - The name of the key pair the instance launched
with.

=item *

C<launch.monitoring-enabled> - Whether detailed monitoring is enabled
for the Spot Instance.

=item *

C<launch.ramdisk-id> - The RAM disk ID.

=item *

C<launched-availability-zone> - The Availability Zone in which the
request is launched.

=item *

C<network-interface.addresses.primary> - Indicates whether the IP
address is the primary private IP address.

=item *

C<network-interface.delete-on-termination> - Indicates whether the
network interface is deleted when the instance is terminated.

=item *

C<network-interface.description> - A description of the network
interface.

=item *

C<network-interface.device-index> - The index of the device for the
network interface attachment on the instance.

=item *

C<network-interface.group-id> - The ID of the security group associated
with the network interface.

=item *

C<network-interface.network-interface-id> - The ID of the network
interface.

=item *

C<network-interface.private-ip-address> - The primary private IP
address of the network interface.

=item *

C<network-interface.subnet-id> - The ID of the subnet for the instance.

=item *

C<product-description> - The product description associated with the
instance (C<Linux/UNIX> | C<Windows>).

=item *

C<spot-instance-request-id> - The Spot Instance request ID.

=item *

C<spot-price> - The maximum hourly price for any Spot Instance launched
to fulfill the request.

=item *

C<state> - The state of the Spot Instance request (C<open> | C<active>
| C<closed> | C<cancelled> | C<failed>). Spot request status
information can help you track your Amazon EC2 Spot Instance requests.
For more information, see Spot Request Status
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html)
in the I<Amazon EC2 User Guide for Linux Instances>.

=item *

C<status-code> - The short code describing the most recent evaluation
of your Spot Instance request.

=item *

C<status-message> - The message explaining the status of the Spot
Instance request.

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

C<type> - The type of Spot Instance request (C<one-time> |
C<persistent>).

=item *

C<valid-from> - The start date of the request.

=item *

C<valid-until> - The end date of the request.

=back




=head2 MaxResults => Int

The maximum number of results to return in a single call. Specify a
value between 5 and 1000. To retrieve the remaining results, make
another call with the returned C<NextToken> value.



=head2 NextToken => Str

The token to request the next set of results. This value is C<null>
when there are no more results to return.



=head2 SpotInstanceRequestIds => ArrayRef[Str|Undef]

One or more Spot Instance request IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSpotInstanceRequests in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

