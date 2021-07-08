
package Paws::FIS::GetExperimentTemplateResponse;
  use Moose;
  has ExperimentTemplate => (is => 'ro', isa => 'Paws::FIS::ExperimentTemplate', traits => ['NameInRequest'], request_name => 'experimentTemplate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::GetExperimentTemplateResponse

=head1 ATTRIBUTES


=head2 ExperimentTemplate => L<Paws::FIS::ExperimentTemplate>

Information about the experiment template.


=head2 _request_id => Str


=cut

