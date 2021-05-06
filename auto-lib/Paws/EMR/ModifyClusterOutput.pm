
package Paws::EMR::ModifyClusterOutput;
  use Moose;
  has StepConcurrencyLevel => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ModifyClusterOutput

=head1 ATTRIBUTES


=head2 StepConcurrencyLevel => Int

The number of steps that can be executed concurrently.


=head2 _request_id => Str


=cut

1;