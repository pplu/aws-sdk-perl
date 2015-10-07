package Paws::Inspector::AgentsFilter;
  use Moose;
  has agentHealthList => (is => 'ro', isa => 'ArrayRef[Str]');
1;
