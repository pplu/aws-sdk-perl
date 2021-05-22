
package Paws::CodeBuild::RetryBuildOutput;
  use Moose;
  has Build => (is => 'ro', isa => 'Paws::CodeBuild::Build', traits => ['NameInRequest'], request_name => 'build' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::RetryBuildOutput

=head1 ATTRIBUTES


=head2 Build => L<Paws::CodeBuild::Build>




=head2 _request_id => Str


=cut

1;