
package Paws::ApiGateway::CreateBasePathMapping;
  use Moose;
  has BasePath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'basePath');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domain_name', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'restApiId', required => 1);
  has Stage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stage');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBasePathMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domainnames/{domain_name}/basepathmappings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::BasePathMapping');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateBasePathMapping - Arguments for method CreateBasePathMapping on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBasePathMapping on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateBasePathMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBasePathMapping.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $BasePathMapping = $apigateway->CreateBasePathMapping(
      DomainName => 'MyString',
      RestApiId  => 'MyString',
      BasePath   => 'MyString',    # OPTIONAL
      Stage      => 'MyString',    # OPTIONAL
    );

    # Results:
    my $BasePath  = $BasePathMapping->BasePath;
    my $RestApiId = $BasePathMapping->RestApiId;
    my $Stage     = $BasePathMapping->Stage;

    # Returns a L<Paws::ApiGateway::BasePathMapping> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateBasePathMapping>

=head1 ATTRIBUTES


=head2 BasePath => Str

The base path name that callers of the API must provide as part of the
URL after the domain name. This value must be unique for all of the
mappings across a single API. Leave this blank if you do not want
callers to specify a base path name after the domain name.



=head2 B<REQUIRED> DomainName => Str

[Required] The domain name of the BasePathMapping resource to create.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 Stage => Str

The name of the API's stage that you want to use for this mapping.
Leave this blank if you do not want callers to explicitly specify the
stage name after any base path name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBasePathMapping in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

