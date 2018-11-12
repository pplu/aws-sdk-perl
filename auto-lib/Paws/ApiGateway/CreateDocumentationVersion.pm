
package Paws::ApiGateway::CreateDocumentationVersion;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DocumentationVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentationVersion', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDocumentationVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/documentation/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::DocumentationVersion');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateDocumentationVersion - Arguments for method CreateDocumentationVersion on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDocumentationVersion on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateDocumentationVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDocumentationVersion.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $DocumentationVersion = $apigateway->CreateDocumentationVersion(
      DocumentationVersion => 'MyString',
      RestApiId            => 'MyString',
      Description          => 'MyString',    # OPTIONAL
      StageName            => 'MyString',    # OPTIONAL
    );

    # Results:
    my $CreatedDate = $DocumentationVersion->CreatedDate;
    my $Description = $DocumentationVersion->Description;
    my $Version     = $DocumentationVersion->Version;

    # Returns a L<Paws::ApiGateway::DocumentationVersion> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateDocumentationVersion>

=head1 ATTRIBUTES


=head2 Description => Str

A description about the new documentation snapshot.



=head2 B<REQUIRED> DocumentationVersion => Str

[Required] The version identifier of the new snapshot.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 StageName => Str

The stage name to be associated with the new documentation snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDocumentationVersion in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

