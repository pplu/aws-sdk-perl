
package Paws::EC2::DescribeVpcPeeringConnections;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has VpcPeeringConnectionIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'VpcPeeringConnectionId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcPeeringConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVpcPeeringConnectionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcPeeringConnections - Arguments for method DescribeVpcPeeringConnections on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVpcPeeringConnections on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVpcPeeringConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVpcPeeringConnections.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeVpcPeeringConnectionsResult =
      $ec2->DescribeVpcPeeringConnections(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
      VpcPeeringConnectionIds => [ 'MyString', ... ],    # OPTIONAL
      );

    # Results:
    my $VpcPeeringConnections =
      $DescribeVpcPeeringConnectionsResult->VpcPeeringConnections;

    # Returns a L<Paws::EC2::DescribeVpcPeeringConnectionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVpcPeeringConnections>

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

C<accepter-vpc-info.cidr-block> - The IPv4 CIDR block of the accepter
VPC.

=item *

C<accepter-vpc-info.owner-id> - The AWS account ID of the owner of the
accepter VPC.

=item *

C<accepter-vpc-info.vpc-id> - The ID of the accepter VPC.

=item *

C<expiration-time> - The expiration date and time for the VPC peering
connection.

=item *

C<requester-vpc-info.cidr-block> - The IPv4 CIDR block of the
requester's VPC.

=item *

C<requester-vpc-info.owner-id> - The AWS account ID of the owner of the
requester VPC.

=item *

C<requester-vpc-info.vpc-id> - The ID of the requester VPC.

=item *

C<status-code> - The status of the VPC peering connection
(C<pending-acceptance> | C<failed> | C<expired> | C<provisioning> |
C<active> | C<deleting> | C<deleted> | C<rejected>).

=item *

C<status-message> - A message that provides more information about the
status of the VPC peering connection, if applicable.

=item *

C<tag>:I<key>=I<value> - The key/value combination of a tag assigned to
the resource. Specify the key of the tag in the filter name and the
value of the tag in the filter value. For example, for the tag
Purpose=X, specify C<tag:Purpose> for the filter name and C<X> for the
filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=item *

C<vpc-peering-connection-id> - The ID of the VPC peering connection.

=back




=head2 VpcPeeringConnectionIds => ArrayRef[Str|Undef]

One or more VPC peering connection IDs.

Default: Describes all your VPC peering connections.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVpcPeeringConnections in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

