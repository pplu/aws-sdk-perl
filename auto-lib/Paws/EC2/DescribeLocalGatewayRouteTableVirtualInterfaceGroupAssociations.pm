
package Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'LocalGatewayRouteTableVirtualInterfaceGroupAssociationId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations - Arguments for method DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult =
      $ec2->DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(
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
      LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds =>
        [ 'MyLocalGatewayRouteTableVirtualInterfaceGroupAssociationId', ... ]
      ,                            # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $LocalGatewayRouteTableVirtualInterfaceGroupAssociations =
      $DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
      ->LocalGatewayRouteTableVirtualInterfaceGroupAssociations;
    my $NextToken =
      $DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
      ->NextToken;

# Returns a L<Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations>

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

C<local-gateway-id> - The ID of a local gateway.

=item *

C<local-gateway-route-table-id> - The ID of the local gateway route
table.

=item *

C<local-gateway-route-table-virtual-interface-group-association-id> -
The ID of the association.

=item *

C<local-gateway-route-table-virtual-interface-group-id> - The ID of the
virtual interface group.

=item *

C<state> - The state of the association.

=back




=head2 LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds => ArrayRef[Str|Undef]

The IDs of the associations.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

