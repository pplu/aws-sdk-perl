
package Paws::EC2::DescribeVpnGateways;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has VpnGatewayIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'VpnGatewayId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpnGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVpnGatewaysResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpnGateways - Arguments for method DescribeVpnGateways on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVpnGateways on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVpnGateways.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVpnGateways.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeVpnGatewaysResult = $ec2->DescribeVpnGateways(
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
      VpnGatewayIds => [
        'MyString', ...            # OPTIONAL
      ],                           # OPTIONAL
    );

    # Results:
    my $VpnGateways = $DescribeVpnGatewaysResult->VpnGateways;

    # Returns a L<Paws::EC2::DescribeVpnGatewaysResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVpnGateways>

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

C<amazon-side-asn> - The Autonomous System Number (ASN) for the Amazon
side of the gateway.

=item *

C<attachment.state> - The current state of the attachment between the
gateway and the VPC (C<attaching> | C<attached> | C<detaching> |
C<detached>).

=item *

C<attachment.vpc-id> - The ID of an attached VPC.

=item *

C<availability-zone> - The Availability Zone for the virtual private
gateway (if applicable).

=item *

C<state> - The state of the virtual private gateway (C<pending> |
C<available> | C<deleting> | C<deleted>).

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

C<type> - The type of virtual private gateway. Currently the only
supported type is C<ipsec.1>.

=item *

C<vpn-gateway-id> - The ID of the virtual private gateway.

=back




=head2 VpnGatewayIds => ArrayRef[Str|Undef]

One or more virtual private gateway IDs.

Default: Describes all your virtual private gateways.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVpnGateways in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

