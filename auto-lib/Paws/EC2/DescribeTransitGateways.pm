
package Paws::EC2::DescribeTransitGateways;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TransitGatewayIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTransitGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeTransitGatewaysResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTransitGateways - Arguments for method DescribeTransitGateways on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTransitGateways on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeTransitGateways.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTransitGateways.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeTransitGatewaysResult = $ec2->DescribeTransitGateways(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],                       # OPTIONAL
        },
        ...
      ],                           # OPTIONAL
      MaxResults        => 1,             # OPTIONAL
      NextToken         => 'MyString',    # OPTIONAL
      TransitGatewayIds => [
        'MyString', ...                   # OPTIONAL
      ],                                  # OPTIONAL
    );

    # Results:
    my $NextToken       = $DescribeTransitGatewaysResult->NextToken;
    my $TransitGateways = $DescribeTransitGatewaysResult->TransitGateways;

    # Returns a L<Paws::EC2::DescribeTransitGatewaysResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeTransitGateways>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters. The possible values are:

=over

=item *

C<amazon-side-asn> - The private ASN for the Amazon side of a BGP
session.

=item *

C<association-default-route-table-id> - The ID of the default
association route table.

=item *

C<default-route-table-association> - Indicates whether resource
attachments are automatically associated with the default association
route table (C<enable> | C<disable>).

=item *

C<default-route-table-propagation> - Indicates whether resource
attachments automatically propagate routes to the default propagation
route table (C<enable> | C<disable>).

=item *

C<owner-account-id> - The ID of the AWS account that owns the transit
gateway.

=item *

C<propagation-default-route-table-id> - The ID of the default
propagation route table.

=item *

C<transit-gateway-id> - The ID of the transit gateway.

=item *

C<transit-gateway-state> - The state of the transit gateway (C<pending>
| C<available> | C<deleting> | C<deleted>).

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 TransitGatewayIds => ArrayRef[Str|Undef]

The IDs of the transit gateways.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTransitGateways in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

