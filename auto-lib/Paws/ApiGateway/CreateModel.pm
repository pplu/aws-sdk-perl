
package Paws::ApiGateway::CreateModel;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentType', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has Schema => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schema');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Model');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateModel - Arguments for method CreateModel on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModel on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModel.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Model = $apigateway->CreateModel(
      ContentType => 'MyString',
      Name        => 'MyString',
      RestApiId   => 'MyString',
      Description => 'MyString',    # OPTIONAL
      Schema      => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ContentType = $Model->ContentType;
    my $Description = $Model->Description;
    my $Id          = $Model->Id;
    my $Name        = $Model->Name;
    my $Schema      = $Model->Schema;

    # Returns a L<Paws::ApiGateway::Model> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContentType => Str

[Required] The content-type for the model.



=head2 Description => Str

The description of the model.



=head2 B<REQUIRED> Name => Str

[Required] The name of the model. Must be alphanumeric.



=head2 B<REQUIRED> RestApiId => Str

[Required] The RestApi identifier under which the Model will be
created.



=head2 Schema => Str

The schema for the model. For C<application/json> models, this should
be JSON schema draft 4
(https://tools.ietf.org/html/draft-zyp-json-schema-04) model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModel in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

