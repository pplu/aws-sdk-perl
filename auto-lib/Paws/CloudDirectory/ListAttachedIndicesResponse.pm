
package Paws::CloudDirectory::ListAttachedIndicesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_IndexAttachment/;
  has IndexAttachments => (is => 'ro', isa => ArrayRef[CloudDirectory_IndexAttachment]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'IndexAttachments' => {
                                       'class' => 'Paws::CloudDirectory::IndexAttachment',
                                       'type' => 'ArrayRef[CloudDirectory_IndexAttachment]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListAttachedIndicesResponse

=head1 ATTRIBUTES


=head2 IndexAttachments => ArrayRef[CloudDirectory_IndexAttachment]

The indices attached to the specified object.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

