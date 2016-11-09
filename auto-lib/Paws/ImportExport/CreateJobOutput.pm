
package Paws::ImportExport::CreateJobOutput;
  use Moose;
  has ArtifactList => (is => 'ro', isa => 'ArrayRef[Paws::ImportExport::Artifact]');
  has JobId => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Str');
  has Signature => (is => 'ro', isa => 'Str');
  has SignatureFileContents => (is => 'ro', isa => 'Str');
  has WarningMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::CreateJobOutput

=head1 ATTRIBUTES


=head2 ArtifactList => ArrayRef[L<Paws::ImportExport::Artifact>]




=head2 JobId => Str




=head2 JobType => Str



Valid values are: C<"Import">, C<"Export">
=head2 Signature => Str




=head2 SignatureFileContents => Str




=head2 WarningMessage => Str




=head2 _request_id => Str


=cut

