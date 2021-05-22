
package Paws::NetworkFirewall::ListFirewalls;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VpcIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFirewalls');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::ListFirewallsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::ListFirewalls - Arguments for method ListFirewalls on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFirewalls on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method ListFirewalls.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFirewalls.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $ListFirewallsResponse = $network -firewall->ListFirewalls(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      VpcIds     => [
        'MyVpcId', ...                      # min: 1, max: 128
      ],                                    # OPTIONAL
    );

    # Results:
    my $Firewalls = $ListFirewallsResponse->Firewalls;
    my $NextToken = $ListFirewallsResponse->NextToken;

    # Returns a L<Paws::NetworkFirewall::ListFirewallsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/ListFirewalls>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of objects that you want Network Firewall to return
for this request. If more objects are available, in the response,
Network Firewall provides a C<NextToken> value that you can use in a
subsequent call to get the next batch of objects.



=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Network Firewall returns a C<NextToken> value in
the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.



=head2 VpcIds => ArrayRef[Str|Undef]

The unique identifiers of the VPCs that you want Network Firewall to
retrieve the firewalls for. Leave this blank to retrieve all firewalls
that you have defined.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFirewalls in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

