package Aws::EMR::Step {
  use Moose;
  has ActionOnFailure => (is => 'ro', isa => 'Str');
  has Config => (is => 'ro', isa => 'Aws::EMR::HadoopStepConfig');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::StepStatus');
}
1
