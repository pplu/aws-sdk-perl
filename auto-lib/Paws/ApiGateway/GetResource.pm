
package Paws::ApiGateway::GetResource;
  use Moose;
  has Embed => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'embed');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource_id', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Resource');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetResource - Arguments for method GetResource on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResource on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResource.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Resource = $apigateway->GetResource(
      ResourceId => 'MyString',
      RestApiId  => 'MyString',
      Embed      => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $Id              = $Resource->Id;
    my $ParentId        = $Resource->ParentId;
    my $Path            = $Resource->Path;
    my $PathPart        = $Resource->PathPart;
    my $ResourceMethods = $Resource->ResourceMethods;

    # Returns a L<Paws::ApiGateway::Resource> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetResource>

=head1 ATTRIBUTES


=head2 Embed => ArrayRef[Str|Undef]

A query parameter to retrieve the specified resources embedded in the
returned Resource representation in the response. This C<embed>
parameter value is a list of comma-separated strings. Currently, the
request supports only retrieval of the embedded Method resources this
way. The query parameter value must be a single-valued list and contain
the C<"methods"> string. For example, C<GET
/restapis/{restapi_id}/resources/{resource_id}?embed=methods>.



=head2 B<REQUIRED> ResourceId => Str

[Required] The identifier for the Resource resource.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResource in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

