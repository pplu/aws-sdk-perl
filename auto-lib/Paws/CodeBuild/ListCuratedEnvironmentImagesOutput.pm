
package Paws::CodeBuild::ListCuratedEnvironmentImagesOutput;
  use Moose;
  has Platforms => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::EnvironmentPlatform]', traits => ['NameInRequest'], request_name => 'platforms' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListCuratedEnvironmentImagesOutput

=head1 ATTRIBUTES


=head2 Platforms => ArrayRef[L<Paws::CodeBuild::EnvironmentPlatform>]

Information about supported platforms for Docker images that are
managed by AWS CodeBuild.


=head2 _request_id => Str


=cut

1;