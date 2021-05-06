
package Paws::CodeBuild::UpdateProjectOutput;
  use Moose;
  has Project => (is => 'ro', isa => 'Paws::CodeBuild::Project', traits => ['NameInRequest'], request_name => 'project' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::UpdateProjectOutput

=head1 ATTRIBUTES


=head2 Project => L<Paws::CodeBuild::Project>

Information about the build project that was changed.


=head2 _request_id => Str


=cut

1;