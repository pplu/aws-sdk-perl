
package Paws::CodeBuild::DeleteBuildBatchOutput;
  use Moose;
  has BuildsDeleted => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'buildsDeleted' );
  has BuildsNotDeleted => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::BuildNotDeleted]', traits => ['NameInRequest'], request_name => 'buildsNotDeleted' );
  has StatusCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusCode' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::DeleteBuildBatchOutput

=head1 ATTRIBUTES


=head2 BuildsDeleted => ArrayRef[Str|Undef]

An array of strings that contain the identifiers of the builds that
were deleted.


=head2 BuildsNotDeleted => ArrayRef[L<Paws::CodeBuild::BuildNotDeleted>]

An array of C<BuildNotDeleted> objects that specify the builds that
could not be deleted.


=head2 StatusCode => Str

The status code.


=head2 _request_id => Str


=cut

1;