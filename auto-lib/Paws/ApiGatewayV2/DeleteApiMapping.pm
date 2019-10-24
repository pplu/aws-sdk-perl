
package Paws::ApiGatewayV2::DeleteApiMapping;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw//;
  has ApiMappingId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteApiMapping');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/domainnames/{domainName}/apimappings/{apiMappingId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApiMappingId' => {
                                   'type' => 'Str'
                                 },
               'DomainName' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInURI' => {
                    'ApiMappingId' => 'apiMappingId',
                    'DomainName' => 'domainName'
                  },
  'IsRequired' => {
                    'ApiMappingId' => 1,
                    'DomainName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::DeleteApiMapping - Arguments for method DeleteApiMapping on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApiMapping on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method DeleteApiMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApiMapping.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    $apigateway->DeleteApiMapping(
      ApiMappingId => 'My__string',
      DomainName   => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteApiMapping>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiMappingId => Str

The API mapping identifier.



=head2 B<REQUIRED> DomainName => Str

The domain name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApiMapping in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

