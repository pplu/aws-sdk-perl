
package Paws::IoT1ClickProjects::ListProjectsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Projects => (is => 'ro', isa => 'ArrayRef[Paws::IoT1ClickProjects::ProjectSummary]', traits => ['NameInRequest'], request_name => 'projects', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::ListProjectsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to retrieve the next set of results - will be
effectively empty if there are no further results.


=head2 B<REQUIRED> Projects => ArrayRef[L<Paws::IoT1ClickProjects::ProjectSummary>]

An object containing the list of projects.


=head2 _request_id => Str


=cut

