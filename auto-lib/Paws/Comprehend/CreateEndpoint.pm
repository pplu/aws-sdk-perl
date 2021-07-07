
package Paws::Comprehend::CreateEndpoint;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str');
  has DesiredInferenceUnits => (is => 'ro', isa => 'Int', required => 1);
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has ModelArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::CreateEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::CreateEndpoint - Arguments for method CreateEndpoint on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEndpoint on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method CreateEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEndpoint.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $CreateEndpointResponse = $comprehend->CreateEndpoint(
      DesiredInferenceUnits => 1,
      EndpointName          => 'MyComprehendEndpointName',
      ModelArn              => 'MyComprehendModelArn',
      ClientRequestToken    => 'MyClientRequestTokenString',    # OPTIONAL
      DataAccessRoleArn     => 'MyIamRoleArn',                  # OPTIONAL
      Tags                  => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $EndpointArn = $CreateEndpointResponse->EndpointArn;

    # Returns a L<Paws::Comprehend::CreateEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/CreateEndpoint>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

An idempotency token provided by the customer. If this token matches a
previous endpoint creation request, Amazon Comprehend will not return a
C<ResourceInUseException>.



=head2 DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the AWS identity and Access
Management (IAM) role that grants Amazon Comprehend read access to
trained custom models encrypted with a customer managed key
(ModelKmsKeyId).



=head2 B<REQUIRED> DesiredInferenceUnits => Int

The desired number of inference units to be used by the model using
this endpoint. Each inference unit represents of a throughput of 100
characters per second.



=head2 B<REQUIRED> EndpointName => Str

This is the descriptive suffix that becomes part of the C<EndpointArn>
used for all subsequent requests to this resource.



=head2 B<REQUIRED> ModelArn => Str

The Amazon Resource Number (ARN) of the model to which the endpoint
will be attached.



=head2 Tags => ArrayRef[L<Paws::Comprehend::Tag>]

Tags associated with the endpoint being created. A tag is a key-value
pair that adds metadata to the endpoint. For example, a tag with
"Sales" as the key might be added to an endpoint to indicate its use by
the sales department.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEndpoint in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

