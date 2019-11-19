
package Paws::ApiGatewayV2::UpdateDomainNameResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_Tags ApiGatewayV2_DomainNameConfiguration/;
  has ApiMappingSelectionExpression => (is => 'ro', isa => Str);
  has DomainName => (is => 'ro', isa => Str);
  has DomainNameConfigurations => (is => 'ro', isa => ArrayRef[ApiGatewayV2_DomainNameConfiguration]);
  has Tags => (is => 'ro', isa => ApiGatewayV2_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DomainName' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ApiGatewayV2::Tags',
                           'type' => 'ApiGatewayV2_Tags'
                         },
               'DomainNameConfigurations' => {
                                               'type' => 'ArrayRef[ApiGatewayV2_DomainNameConfiguration]',
                                               'class' => 'Paws::ApiGatewayV2::DomainNameConfiguration'
                                             },
               'ApiMappingSelectionExpression' => {
                                                    'type' => 'Str'
                                                  }
             },
  'NameInRequest' => {
                       'DomainName' => 'domainName',
                       'Tags' => 'tags',
                       'DomainNameConfigurations' => 'domainNameConfigurations',
                       'ApiMappingSelectionExpression' => 'apiMappingSelectionExpression'
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


=head2 Tags => ApiGatewayV2_Tags

The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with aws:. The tag value can be up to 256 characters..


=head2 _request_id => Str


=cut

