
package Paws::ImportExport::UpdateJobOutput;
  use Moose;
  has ArtifactList => (is => 'ro', isa => 'ArrayRef[Paws::ImportExport::Artifact]');
  has Success => (is => 'ro', isa => 'Bool');
  has WarningMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::UpdateJobOutput

=head1 ATTRIBUTES


=head2 ArtifactList => ArrayRef[L<Paws::ImportExport::Artifact>]




=head2 Success => Bool




=head2 WarningMessage => Str




=head2 _request_id => Str


=cut

