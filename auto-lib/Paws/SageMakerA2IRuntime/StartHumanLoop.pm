
package Paws::SageMakerA2IRuntime::StartHumanLoop;
  use Moose;
  has DataAttributes => (is => 'ro', isa => 'Paws::SageMakerA2IRuntime::HumanLoopDataAttributes');
  has FlowDefinitionArn => (is => 'ro', isa => 'Str', required => 1);
  has HumanLoopInput => (is => 'ro', isa => 'Paws::SageMakerA2IRuntime::HumanLoopInput', required => 1);
  has HumanLoopName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartHumanLoop');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/human-loops');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerA2IRuntime::StartHumanLoopResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerA2IRuntime::StartHumanLoop - Arguments for method StartHumanLoop on L<Paws::SageMakerA2IRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartHumanLoop on the
L<Amazon Augmented AI Runtime|Paws::SageMakerA2IRuntime> service. Use the attributes of this class
as arguments to method StartHumanLoop.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartHumanLoop.

=head1 SYNOPSIS

    my $a2i-runtime.sagemaker = Paws->service('SageMakerA2IRuntime');
    my $StartHumanLoopResponse = $a2i -runtime . sagemaker->StartHumanLoop(
      FlowDefinitionArn => 'MyFlowDefinitionArn',
      HumanLoopInput    => {
        InputContent => 'MyInputContent',    # max: 3145728

      },
      HumanLoopName  => 'MyHumanLoopName',
      DataAttributes => {
        ContentClassifiers => [
          'FreeOfPersonallyIdentifiableInformation',
          ... # values: FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
        ],    # max: 256

      },    # OPTIONAL
    );

    # Results:
    my $HumanLoopArn = $StartHumanLoopResponse->HumanLoopArn;

    # Returns a L<Paws::SageMakerA2IRuntime::StartHumanLoopResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a2i-runtime.sagemaker/StartHumanLoop>

=head1 ATTRIBUTES


=head2 DataAttributes => L<Paws::SageMakerA2IRuntime::HumanLoopDataAttributes>

Attributes of the specified data. Use C<DataAttributes> to specify if
your data is free of personally identifiable information and/or free of
adult content.



=head2 B<REQUIRED> FlowDefinitionArn => Str

The Amazon Resource Name (ARN) of the flow definition associated with
this human loop.



=head2 B<REQUIRED> HumanLoopInput => L<Paws::SageMakerA2IRuntime::HumanLoopInput>

An object that contains information about the human loop.



=head2 B<REQUIRED> HumanLoopName => Str

The name of the human loop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartHumanLoop in L<Paws::SageMakerA2IRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

