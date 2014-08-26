package Aws::EMR::StepTimeline {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has StartDateTime => (is => 'ro', isa => 'Str');
}
1
