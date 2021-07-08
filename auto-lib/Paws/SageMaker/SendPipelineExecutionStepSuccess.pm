
package Paws::SageMaker::SendPipelineExecutionStepSuccess;
  use Moose;
  has CallbackToken => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has OutputParameters => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::OutputParameter]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendPipelineExecutionStepSuccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::SendPipelineExecutionStepSuccessResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SendPipelineExecutionStepSuccess - Arguments for method SendPipelineExecutionStepSuccess on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendPipelineExecutionStepSuccess on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method SendPipelineExecutionStepSuccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendPipelineExecutionStepSuccess.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $SendPipelineExecutionStepSuccessResponse =
      $api . sagemaker->SendPipelineExecutionStepSuccess(
      CallbackToken      => 'MyCallbackToken',
      ClientRequestToken => 'MyIdempotencyToken',    # OPTIONAL
      OutputParameters   => [
        {
          Name  => 'MyString256',     # max: 256
          Value => 'MyString1024',    # max: 1024

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $PipelineExecutionArn =
      $SendPipelineExecutionStepSuccessResponse->PipelineExecutionArn;

# Returns a L<Paws::SageMaker::SendPipelineExecutionStepSuccessResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/SendPipelineExecutionStepSuccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallbackToken => Str

The pipeline generated token from the Amazon SQS queue.



=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the operation. An idempotent operation completes no more
than one time.



=head2 OutputParameters => ArrayRef[L<Paws::SageMaker::OutputParameter>]

A list of the output parameters of the callback step.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendPipelineExecutionStepSuccess in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

