
package Paws::ApiGateway::GetTags;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has Position => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'position');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource_arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTags');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resource_arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Tags');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetTags - Arguments for method GetTags on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTags on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTags.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Tags = $apigateway->GetTags(
      ResourceArn => 'MyString',
      Limit       => 1,             # OPTIONAL
      Position    => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Tags = $Tags->Tags;

    # Returns a L<Paws::ApiGateway::Tags> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetTags>

=head1 ATTRIBUTES


=head2 Limit => Int

(Not currently supported) The maximum number of returned results per
page. The default value is 25 and the maximum value is 500.



=head2 Position => Str

(Not currently supported) The current pagination position in the paged
result set.



=head2 B<REQUIRED> ResourceArn => Str

[Required] The ARN of a resource that can be tagged. The resource ARN
must be URL-encoded. At present, Stage is the only taggable resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTags in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

