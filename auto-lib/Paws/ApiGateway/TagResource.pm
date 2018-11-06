
package Paws::ApiGateway::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource_arn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resource_arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::TagResource - Arguments for method TagResource on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    $apigateway->TagResource(
      ResourceArn => 'MyString',
      Tags        => { 'MyString' => 'MyString', },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

[Required] The ARN of a resource that can be tagged. The resource ARN
must be URL-encoded. At present, Stage is the only taggable resource.



=head2 B<REQUIRED> Tags => L<Paws::ApiGateway::MapOfStringToString>

[Required] The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with C<aws:>. The tag value can be up to 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

