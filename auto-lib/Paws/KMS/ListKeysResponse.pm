# Generated from json/callresult_class.tt

package Paws::KMS::ListKeysResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::KMS::Types qw/KMS_KeyListEntry/;
  has Keys => (is => 'ro', isa => ArrayRef[KMS_KeyListEntry]);
  has NextMarker => (is => 'ro', isa => Str);
  has Truncated => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Keys' => {
                           'class' => 'Paws::KMS::KeyListEntry',
                           'type' => 'ArrayRef[KMS_KeyListEntry]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Truncated' => {
                                'type' => 'Bool'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KMS::ListKeysResponse

=head1 ATTRIBUTES


=head2 Keys => ArrayRef[KMS_KeyListEntry]

A list of customer master keys (CMKs).


=head2 NextMarker => Str

When C<Truncated> is true, this element is present and contains the
value to use for the C<Marker> parameter in a subsequent request.


=head2 Truncated => Bool

A flag that indicates whether there are more items in the list. When
this value is true, the list in this response is truncated. To get more
items, pass the value of the C<NextMarker> element in thisresponse to
the C<Marker> parameter in a subsequent request.


=head2 _request_id => Str


=cut

1;