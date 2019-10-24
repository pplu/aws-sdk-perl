# Generated from json/callresult_class.tt

package Paws::KMS::ListAliasesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::KMS::Types qw/KMS_AliasListEntry/;
  has Aliases => (is => 'ro', isa => ArrayRef[KMS_AliasListEntry]);
  has NextMarker => (is => 'ro', isa => Str);
  has Truncated => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Truncated' => {
                                'type' => 'Bool'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Aliases' => {
                              'class' => 'Paws::KMS::AliasListEntry',
                              'type' => 'ArrayRef[KMS_AliasListEntry]'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KMS::ListAliasesResponse

=head1 ATTRIBUTES


=head2 Aliases => ArrayRef[KMS_AliasListEntry]

A list of aliases.


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