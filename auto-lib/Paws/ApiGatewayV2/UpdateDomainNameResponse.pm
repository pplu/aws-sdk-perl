
package Paws::ApiGatewayV2::UpdateDomainNameResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_DomainNameConfiguration/;
  has ApiMappingSelectionExpression => (is => 'ro', isa => Str);
  has DomainName => (is => 'ro', isa => Str);
  has DomainNameConfigurations => (is => 'ro', isa => ArrayRef[ApiGatewayV2_DomainNameConfiguration]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApiMappingSelectionExpression' => {
                                                    'type' => 'Str'
                                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DomainNameConfigurations' => {
                                               'class' => 'Paws::ApiGatewayV2::DomainNameConfiguration',
                                               'type' => 'ArrayRef[ApiGatewayV2_DomainNameConfiguration]'
                                             },
               'DomainName' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'ApiMappingSelectionExpression' => 'apiMappingSelectionExpression',
                       'DomainNameConfigurations' => 'domainNameConfigurations',
                       'DomainName' => 'domainName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateDomainNameResponse

=head1 ATTRIBUTES


=head2 ApiMappingSelectionExpression => Str

The API mapping selection expression.


=head2 DomainName => Str

The name of the DomainName resource.


=head2 DomainNameConfigurations => ArrayRef[ApiGatewayV2_DomainNameConfiguration]

The domain name configurations.


=head2 _request_id => Str


=cut

