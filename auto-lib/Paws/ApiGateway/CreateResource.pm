
package Paws::ApiGateway::CreateResource;
  use Moose;
  has ParentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'parent_id', required => 1);
  has PathPart => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pathPart', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{parent_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Resource');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateResource - Arguments for method CreateResource on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResource on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResource.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Resource = $apigateway->CreateResource(
      ParentId  => 'MyString',
      PathPart  => 'MyString',
      RestApiId => 'MyString',

    );

    # Results:
    my $Id              = $Resource->Id;
    my $ParentId        = $Resource->ParentId;
    my $Path            = $Resource->Path;
    my $PathPart        = $Resource->PathPart;
    my $ResourceMethods = $Resource->ResourceMethods;

    # Returns a L<Paws::ApiGateway::Resource> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParentId => Str

[Required] The parent resource's identifier.



=head2 B<REQUIRED> PathPart => Str

The last path segment for this resource.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResource in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

