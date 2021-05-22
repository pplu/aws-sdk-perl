
package Paws::LookoutVision::CreateProjectResponse;
  use Moose;
  has ProjectMetadata => (is => 'ro', isa => 'Paws::LookoutVision::ProjectMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::CreateProjectResponse

=head1 ATTRIBUTES


=head2 ProjectMetadata => L<Paws::LookoutVision::ProjectMetadata>

Information about the project.


=head2 _request_id => Str


=cut

