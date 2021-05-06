
package Paws::NetworkManager::GetLinks;
  use Moose;
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has LinkIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'linkIds');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Provider => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'provider');
  has SiteId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'siteId');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLinks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/links');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::GetLinksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetLinks - Arguments for method GetLinks on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLinks on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method GetLinks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLinks.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $GetLinksResponse = $networkmanager->GetLinks(
      GlobalNetworkId => 'MyString',
      LinkIds         => [ 'MyString', ... ],    # OPTIONAL
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyString',             # OPTIONAL
      Provider        => 'MyString',             # OPTIONAL
      SiteId          => 'MyString',             # OPTIONAL
      Type            => 'MyString',             # OPTIONAL
    );

    # Results:
    my $Links     = $GetLinksResponse->Links;
    my $NextToken = $GetLinksResponse->NextToken;

    # Returns a L<Paws::NetworkManager::GetLinksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/GetLinks>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 LinkIds => ArrayRef[Str|Undef]

One or more link IDs. The maximum is 10.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token for the next page of results.



=head2 Provider => Str

The link provider.



=head2 SiteId => Str

The ID of the site.



=head2 Type => Str

The link type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLinks in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

