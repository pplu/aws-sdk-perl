
package Paws::ImageBuilder::StartImagePipelineExecution;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has ImagePipelineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imagePipelineArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartImagePipelineExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartImagePipelineExecution');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::StartImagePipelineExecutionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::StartImagePipelineExecution - Arguments for method StartImagePipelineExecution on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartImagePipelineExecution on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method StartImagePipelineExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartImagePipelineExecution.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $StartImagePipelineExecutionResponse =
      $imagebuilder->StartImagePipelineExecution(
      ClientToken      => 'MyClientToken',
      ImagePipelineArn => 'MyImagePipelineArn',

      );

    # Results:
    my $ClientToken = $StartImagePipelineExecutionResponse->ClientToken;
    my $ImageBuildVersionArn =
      $StartImagePipelineExecutionResponse->ImageBuildVersionArn;
    my $RequestId = $StartImagePipelineExecutionResponse->RequestId;

  # Returns a L<Paws::ImageBuilder::StartImagePipelineExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/StartImagePipelineExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The idempotency token used to make this request idempotent.



=head2 B<REQUIRED> ImagePipelineArn => Str

The Amazon Resource Name (ARN) of the image pipeline that you want to
manually invoke.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartImagePipelineExecution in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

