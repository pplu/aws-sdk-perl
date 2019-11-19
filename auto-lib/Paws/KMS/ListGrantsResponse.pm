# Generated from json/callresult_class.tt

package Paws::KMS::ListGrantsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::KMS::Types qw/KMS_GrantListEntry/;
  has Grants => (is => 'ro', isa => ArrayRef[KMS_GrantListEntry]);
  has NextMarker => (is => 'ro', isa => Str);
  has Truncated => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Truncated' => {
                                'type' => 'Bool'
                              },
               'Grants' => {
                             'class' => 'Paws::KMS::GrantListEntry',
                             'type' => 'ArrayRef[KMS_GrantListEntry]'
                           },
               'NextMarker' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KMS::ListGrantsResponse

=head1 ATTRIBUTES


=head2 Grants => ArrayRef[KMS_GrantListEntry]

A list of grants.


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