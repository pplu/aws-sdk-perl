
package Paws::SageMakerRuntime::InvokeEndpoint;
  use Moose;
  has Accept => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Accept');
  has Body => (is => 'ro', isa => 'Str', required => 1);
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has CustomAttributes => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Custom-Attributes');
  has EndpointName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EndpointName', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/endpoints/{EndpointName}/invocations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerRuntime::InvokeEndpointOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerRuntime::InvokeEndpoint - Arguments for method InvokeEndpoint on L<Paws::SageMakerRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeEndpoint on the
L<Amazon SageMaker Runtime|Paws::SageMakerRuntime> service. Use the attributes of this class
as arguments to method InvokeEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeEndpoint.

=head1 SYNOPSIS

    my $runtime.sagemaker = Paws->service('SageMakerRuntime');
    my $InvokeEndpointOutput = $runtime . sagemaker->InvokeEndpoint(
      Body             => 'BlobBodyBlob',
      EndpointName     => 'MyEndpointName',
      Accept           => 'MyHeader',                    # OPTIONAL
      ContentType      => 'MyHeader',                    # OPTIONAL
      CustomAttributes => 'MyCustomAttributesHeader',    # OPTIONAL
    );

    # Results:
    my $Body             = $InvokeEndpointOutput->Body;
    my $ContentType      = $InvokeEndpointOutput->ContentType;
    my $CustomAttributes = $InvokeEndpointOutput->CustomAttributes;
    my $InvokedProductionVariant =
      $InvokeEndpointOutput->InvokedProductionVariant;

    # Returns a L<Paws::SageMakerRuntime::InvokeEndpointOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker/InvokeEndpoint>

=head1 ATTRIBUTES


=head2 Accept => Str

The desired MIME type of the inference in the response.



=head2 B<REQUIRED> Body => Str

Provides input data, in the format specified in the C<ContentType>
request header. Amazon SageMaker passes all of the data in the body to
the model.

For information about the format of the request body, see Common Data
FormatsE<mdash>Inference
(http://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html).



=head2 ContentType => Str

The MIME type of the input data in the request body.



=head2 CustomAttributes => Str





=head2 B<REQUIRED> EndpointName => Str

The name of the endpoint that you specified when you created the
endpoint using the CreateEndpoint
(http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html)
API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeEndpoint in L<Paws::SageMakerRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

