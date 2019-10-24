# Generated from json/callresult_class.tt

package Paws::WAFRegional::ListByteMatchSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAFRegional::Types qw/WAFRegional_ByteMatchSetSummary/;
  has ByteMatchSets => (is => 'ro', isa => ArrayRef[WAFRegional_ByteMatchSetSummary]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'ByteMatchSets' => {
                                    'class' => 'Paws::WAFRegional::ByteMatchSetSummary',
                                    'type' => 'ArrayRef[WAFRegional_ByteMatchSetSummary]'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListByteMatchSetsResponse

=head1 ATTRIBUTES


=head2 ByteMatchSets => ArrayRef[WAFRegional_ByteMatchSetSummary]

An array of ByteMatchSetSummary objects.


=head2 NextMarker => Str

If you have more C<ByteMatchSet> objects than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<ByteMatchSet> objects, submit
another C<ListByteMatchSets> request, and specify the C<NextMarker>
value from the response in the C<NextMarker> value in the next request.


=head2 _request_id => Str


=cut

1;