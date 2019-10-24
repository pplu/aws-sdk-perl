# Generated from json/callresult_class.tt

package Paws::KMS::ListKeyPoliciesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::KMS::Types qw//;
  has NextMarker => (is => 'ro', isa => Str);
  has PolicyNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Truncated => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Truncated' => {
                                'type' => 'Bool'
                              },
               'PolicyNames' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::KMS::ListKeyPoliciesResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

When C<Truncated> is true, this element is present and contains the
value to use for the C<Marker> parameter in a subsequent request.


=head2 PolicyNames => ArrayRef[Str|Undef]

A list of key policy names. The only valid value is C<default>.


=head2 Truncated => Bool

A flag that indicates whether there are more items in the list. When
this value is true, the list in this response is truncated. To get more
items, pass the value of the C<NextMarker> element in thisresponse to
the C<Marker> parameter in a subsequent request.


=head2 _request_id => Str


=cut

1;