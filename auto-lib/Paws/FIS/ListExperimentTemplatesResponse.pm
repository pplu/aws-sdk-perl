
package Paws::FIS::ListExperimentTemplatesResponse;
  use Moose;
  has ExperimentTemplates => (is => 'ro', isa => 'ArrayRef[Paws::FIS::ExperimentTemplateSummary]', traits => ['NameInRequest'], request_name => 'experimentTemplates');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::ListExperimentTemplatesResponse

=head1 ATTRIBUTES


=head2 ExperimentTemplates => ArrayRef[L<Paws::FIS::ExperimentTemplateSummary>]

The experiment templates.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

