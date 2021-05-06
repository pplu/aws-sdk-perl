
package Paws::CloudDirectory::ListAttachedIndicesResponse;
  use Moose;
  has IndexAttachments => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::IndexAttachment]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListAttachedIndicesResponse

=head1 ATTRIBUTES


=head2 IndexAttachments => ArrayRef[L<Paws::CloudDirectory::IndexAttachment>]

The indices attached to the specified object.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

