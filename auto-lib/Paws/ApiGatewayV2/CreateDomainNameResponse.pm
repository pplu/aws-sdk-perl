
package Paws::ApiGatewayV2::CreateDomainNameResponse;
  use Moose;
  has ApiMappingSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiMappingSelectionExpression');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName');
  has DomainNameConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGatewayV2::DomainNameConfiguration]', traits => ['NameInRequest'], request_name => 'domainNameConfigurations');
  has Tags => (is => 'ro', isa => 'Paws::ApiGatewayV2::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateDomainNameResponse

=head1 ATTRIBUTES


=head2 ApiMappingSelectionExpression => Str

The API mapping selection expression.


=head2 DomainName => Str

The name of the DomainName resource.


=head2 DomainNameConfigurations => ArrayRef[L<Paws::ApiGatewayV2::DomainNameConfiguration>]

The domain name configurations.


=head2 Tags => L<Paws::ApiGatewayV2::Tags>

The collection of tags associated with a domain name.


=head2 _request_id => Str


=cut

