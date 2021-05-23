
package Paws::SageMakerA2IRuntime::StopHumanLoop;
  use Moose;
  has HumanLoopName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopHumanLoop');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/human-loops/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerA2IRuntime::StopHumanLoopResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerA2IRuntime::StopHumanLoop - Arguments for method StopHumanLoop on L<Paws::SageMakerA2IRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopHumanLoop on the
L<Amazon Augmented AI Runtime|Paws::SageMakerA2IRuntime> service. Use the attributes of this class
as arguments to method StopHumanLoop.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopHumanLoop.

=head1 SYNOPSIS

    my $a2i-runtime.sagemaker = Paws->service('SageMakerA2IRuntime');
    my $StopHumanLoopResponse = $a2i -runtime . sagemaker->StopHumanLoop(
      HumanLoopName => 'MyHumanLoopName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a2i-runtime.sagemaker/StopHumanLoop>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HumanLoopName => Str

The name of the human loop that you want to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopHumanLoop in L<Paws::SageMakerA2IRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

