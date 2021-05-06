
package Paws::CodeBuild::CreateProjectOutput;
  use Moose;
  has Project => (is => 'ro', isa => 'Paws::CodeBuild::Project', traits => ['NameInRequest'], request_name => 'project' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::CreateProjectOutput

=head1 ATTRIBUTES


=head2 Project => L<Paws::CodeBuild::Project>

Information about the build project that was created.


=head2 _request_id => Str


=cut

1;