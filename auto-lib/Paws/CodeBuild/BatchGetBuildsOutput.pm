
package Paws::CodeBuild::BatchGetBuildsOutput;
  use Moose;
  has Builds => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Build]', traits => ['NameInRequest'], request_name => 'builds' );
  has BuildsNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'buildsNotFound' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetBuildsOutput

=head1 ATTRIBUTES


=head2 Builds => ArrayRef[L<Paws::CodeBuild::Build>]

Information about the requested builds.


=head2 BuildsNotFound => ArrayRef[Str|Undef]

The IDs of builds for which information could not be found.


=head2 _request_id => Str


=cut

1;