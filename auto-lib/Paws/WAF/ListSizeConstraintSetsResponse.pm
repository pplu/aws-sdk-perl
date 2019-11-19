# Generated from json/callresult_class.tt

package Paws::WAF::ListSizeConstraintSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_SizeConstraintSetSummary/;
  has NextMarker => (is => 'ro', isa => Str);
  has SizeConstraintSets => (is => 'ro', isa => ArrayRef[WAF_SizeConstraintSetSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SizeConstraintSets' => {
                                         'class' => 'Paws::WAF::SizeConstraintSetSummary',
                                         'type' => 'ArrayRef[WAF_SizeConstraintSetSummary]'
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

Paws::WAF::ListSizeConstraintSetsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more C<SizeConstraintSet> objects than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<SizeConstraintSet> objects, submit
another C<ListSizeConstraintSets> request, and specify the
C<NextMarker> value from the response in the C<NextMarker> value in the
next request.


=head2 SizeConstraintSets => ArrayRef[WAF_SizeConstraintSetSummary]

An array of SizeConstraintSetSummary objects.


=head2 _request_id => Str


=cut

1;