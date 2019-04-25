
package Paws::EC2::DescribeRouteTables;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RouteTableIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'RouteTableId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRouteTables');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeRouteTablesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeRouteTables - Arguments for method DescribeRouteTables on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRouteTables on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeRouteTables.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRouteTables.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe a route table
    # This example describes the specified route table.
    my $DescribeRouteTablesResult = $ec2->DescribeRouteTables(
      {
        'RouteTableIds' => ['rtb-1f382e7d']
      }
    );

    # Results:
    my $RouteTables = $DescribeRouteTablesResult->RouteTables;

    # Returns a L<Paws::EC2::DescribeRouteTablesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeRouteTables>

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

C<association.route-table-association-id> - The ID of an association ID
for the route table.

=item *

C<association.route-table-id> - The ID of the route table involved in
the association.

=item *

C<association.subnet-id> - The ID of the subnet involved in the
association.

=item *

C<association.main> - Indicates whether the route table is the main
route table for the VPC (C<true> | C<false>). Route tables that do not
have an association ID are not returned in the response.

=item *

C<owner-id> - The ID of the AWS account that owns the route table.

=item *

C<route-table-id> - The ID of the route table.

=item *

C<route.destination-cidr-block> - The IPv4 CIDR range specified in a
route in the table.

=item *

C<route.destination-ipv6-cidr-block> - The IPv6 CIDR range specified in
a route in the route table.

=item *

C<route.destination-prefix-list-id> - The ID (prefix) of the AWS
service specified in a route in the table.

=item *

C<route.egress-only-internet-gateway-id> - The ID of an egress-only
Internet gateway specified in a route in the route table.

=item *

C<route.gateway-id> - The ID of a gateway specified in a route in the
table.

=item *

C<route.instance-id> - The ID of an instance specified in a route in
the table.

=item *

C<route.nat-gateway-id> - The ID of a NAT gateway.

=item *

C<route.transit-gateway-id> - The ID of a transit gateway.

=item *

C<route.origin> - Describes how the route was created.
C<CreateRouteTable> indicates that the route was automatically created
when the route table was created; C<CreateRoute> indicates that the
route was manually added to the route table;
C<EnableVgwRoutePropagation> indicates that the route was propagated by
route propagation.

=item *

C<route.state> - The state of a route in the route table (C<active> |
C<blackhole>). The blackhole state indicates that the route's target
isn't available (for example, the specified gateway isn't attached to
the VPC, the specified NAT instance has been terminated, and so on).

=item *

C<route.vpc-peering-connection-id> - The ID of a VPC peering connection
specified in a route in the table.

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

C<transit-gateway-id> - The ID of a transit gateway.

=item *

C<vpc-id> - The ID of the VPC for the route table.

=back




=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned B<NextToken>
value. This value can be between 5 and 100.



=head2 NextToken => Str

The token to retrieve the next page of results.



=head2 RouteTableIds => ArrayRef[Str|Undef]

One or more route table IDs.

Default: Describes all your route tables.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRouteTables in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

