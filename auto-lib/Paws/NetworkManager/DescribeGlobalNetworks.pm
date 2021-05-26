
package Paws::NetworkManager::DescribeGlobalNetworks;
  use Moose;
  has GlobalNetworkIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'globalNetworkIds');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGlobalNetworks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::DescribeGlobalNetworksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DescribeGlobalNetworks - Arguments for method DescribeGlobalNetworks on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGlobalNetworks on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method DescribeGlobalNetworks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGlobalNetworks.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $DescribeGlobalNetworksResponse =
      $networkmanager->DescribeGlobalNetworks(
      GlobalNetworkIds => [ 'MyString', ... ],    # OPTIONAL
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyString',             # OPTIONAL
      );

    # Results:
    my $GlobalNetworks = $DescribeGlobalNetworksResponse->GlobalNetworks;
    my $NextToken      = $DescribeGlobalNetworksResponse->NextToken;

    # Returns a L<Paws::NetworkManager::DescribeGlobalNetworksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/DescribeGlobalNetworks>

=head1 ATTRIBUTES


=head2 GlobalNetworkIds => ArrayRef[Str|Undef]

The IDs of one or more global networks. The maximum is 10.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGlobalNetworks in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

