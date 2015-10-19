
package Paws::Support::AddAttachmentsToSetResponse;
  use Moose;
  has AttachmentSetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachmentSetId' );
  has ExpiryTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'expiryTime' );


### main pod documentation begin ###

=head1 NAME

Paws::Support::AddAttachmentsToSetResponse

=head1 ATTRIBUTES

=head2 AttachmentSetId => Str

  The ID of the attachment set. If an C<AttachmentSetId> was not
specified, a new attachment set is created, and the ID of the set is
returned in the response. If an C<AttachmentSetId> was specified, the
attachments are added to the specified set, if it exists.
=head2 ExpiryTime => Str

  The time and date when the attachment set expires.


=cut

1;