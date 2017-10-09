
package Paws::CodeBuild::BatchDeleteBuildsOutput;
  use Moose;
  has BuildsDeleted => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'buildsDeleted' );
  has BuildsNotDeleted => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::BuildNotDeleted]', traits => ['NameInRequest'], request_name => 'buildsNotDeleted' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchDeleteBuildsOutput

=head1 ATTRIBUTES


=head2 BuildsDeleted => ArrayRef[Str|Undef]

The IDs of the builds that were successfully deleted.


=head2 BuildsNotDeleted => ArrayRef[L<Paws::CodeBuild::BuildNotDeleted>]

Information about any builds that could not be successfully deleted.


=head2 _request_id => Str


=cut

1;