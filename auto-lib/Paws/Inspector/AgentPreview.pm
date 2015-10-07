package Paws::Inspector::AgentPreview;
  use Moose;
  has agentId => (is => 'ro', isa => 'Str');
  has autoScalingGroup => (is => 'ro', isa => 'Str');
1;
