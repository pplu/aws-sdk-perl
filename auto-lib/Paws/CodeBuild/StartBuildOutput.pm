
package Paws::CodeBuild::StartBuildOutput;
  use Moose;
  has Build => (is => 'ro', isa => 'Paws::CodeBuild::Build', traits => ['NameInRequest'], request_name => 'build' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::StartBuildOutput

=head1 ATTRIBUTES


=head2 Build => L<Paws::CodeBuild::Build>

Information about the build to be run.


=head2 _request_id => Str


=cut

1;