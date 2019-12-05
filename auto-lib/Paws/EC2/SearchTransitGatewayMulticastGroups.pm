
package Paws::EC2::SearchTransitGatewayMulticastGroups;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TransitGatewayMulticastDomainId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchTransitGatewayMulticastGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::SearchTransitGatewayMulticastGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SearchTransitGatewayMulticastGroups - Arguments for method SearchTransitGatewayMulticastGroups on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchTransitGatewayMulticastGroups on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method SearchTransitGatewayMulticastGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchTransitGatewayMulticastGroups.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $SearchTransitGatewayMulticastGroupsResult =
      $ec2->SearchTransitGatewayMulticastGroups(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
      MaxResults                      => 1,             # OPTIONAL
      NextToken                       => 'MyString',    # OPTIONAL
      TransitGatewayMulticastDomainId => 'MyString',    # OPTIONAL
      );

    # Results:
    my $MulticastGroups =
      $SearchTransitGatewayMulticastGroupsResult->MulticastGroups;
    my $NextToken = $SearchTransitGatewayMulticastGroupsResult->NextToken;

    # Returns a L<Paws::EC2::SearchTransitGatewayMulticastGroupsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/SearchTransitGatewayMulticastGroups>

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

C<group-ip-address> - The IP address of the transit gateway multicast
group.

=item *

C<is-group-member> - The resource is a group member. Valid values are
C<true> | C<false>.

=item *

C<is-group-source> - The resource is a group source. Valid values are
C<true> | C<false>.

=item *

C<member-type> - The member type. Valid values are C<igmp> | C<static>.

=item *

C<resource-id> - The ID of the resource.

=item *

C<resource-type> - The type of resource. Valid values are C<vpc> |
C<vpn> | C<direct-connect-gateway> | C<tgw-peering>.

=item *

C<source-type> - The source type. Valid values are C<igmp> | C<static>.

=item *

C<state> - The state of the subnet association. Valid values are
C<associated> | C<associated> | C<disassociated> | C<disassociating>.

=item *

C<subnet-id> - The ID of the subnet.

=item *

C<transit-gateway-attachment-id> - The id of the transit gateway
attachment.

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 TransitGatewayMulticastDomainId => Str

The ID of the transit gateway multicast domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchTransitGatewayMulticastGroups in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

