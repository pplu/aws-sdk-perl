
package Paws::Support::AddAttachmentsToSetResponse;
  use Moose;
  has AttachmentSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attachmentSetId' );
  has ExpiryTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiryTime' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::AddAttachmentsToSetResponse

=head1 ATTRIBUTES


=head2 AttachmentSetId => Str

The ID of the attachment set. If an C<attachmentSetId> was not
specified, a new attachment set is created, and the ID of the set is
returned in the response. If an C<attachmentSetId> was specified, the
attachments are added to the specified set, if it exists.


=head2 ExpiryTime => Str

The time and date when the attachment set expires.


=head2 _request_id => Str


=cut

1;