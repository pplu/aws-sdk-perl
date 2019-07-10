
package Paws::WorkSpaces::CopyWorkspaceImageResult;
  use Moose;
  has ImageId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CopyWorkspaceImageResult

=head1 ATTRIBUTES


=head2 ImageId => Str

The identifier of the image.


=head2 _request_id => Str


=cut

1;