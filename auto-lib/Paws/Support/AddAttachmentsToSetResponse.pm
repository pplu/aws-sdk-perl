# Generated from json/callresult_class.tt

package Paws::Support::AddAttachmentsToSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Support::Types qw//;
  has AttachmentSetId => (is => 'ro', isa => Str);
  has ExpiryTime => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ExpiryTime' => 'expiryTime',
                       'AttachmentSetId' => 'attachmentSetId'
                     },
  'types' => {
               'ExpiryTime' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AttachmentSetId' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


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