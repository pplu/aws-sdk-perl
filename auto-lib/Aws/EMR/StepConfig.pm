package Aws::EMR::StepConfig {
  use Moose;
  has ActionOnFailure => (is => 'ro', isa => 'Str');
  has HadoopJarStep => (is => 'ro', isa => 'Aws::EMR::HadoopJarStepConfig', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
}
1
