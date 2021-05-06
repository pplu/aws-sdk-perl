
package Paws::CodeBuild::BatchGetProjectsOutput;
  use Moose;
  has Projects => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Project]', traits => ['NameInRequest'], request_name => 'projects' );
  has ProjectsNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'projectsNotFound' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetProjectsOutput

=head1 ATTRIBUTES


=head2 Projects => ArrayRef[L<Paws::CodeBuild::Project>]

Information about the requested build projects.


=head2 ProjectsNotFound => ArrayRef[Str|Undef]

The names of build projects for which information could not be found.


=head2 _request_id => Str


=cut

1;