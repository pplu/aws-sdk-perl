
package Paws::FIS::StopExperimentResponse;
  use Moose;
  has Experiment => (is => 'ro', isa => 'Paws::FIS::Experiment', traits => ['NameInRequest'], request_name => 'experiment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::StopExperimentResponse

=head1 ATTRIBUTES


=head2 Experiment => L<Paws::FIS::Experiment>

Information about the experiment.


=head2 _request_id => Str


=cut

