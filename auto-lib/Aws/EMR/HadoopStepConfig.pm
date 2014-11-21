package Aws::EMR::HadoopStepConfig {
  use Moose;
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Jar => (is => 'ro', isa => 'Str');
  has MainClass => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'Aws::EMR::StringMap');
}
1;
