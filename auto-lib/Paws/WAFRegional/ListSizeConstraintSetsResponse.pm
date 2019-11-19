# Generated from json/callresult_class.tt

package Paws::WAFRegional::ListSizeConstraintSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAFRegional::Types qw/WAFRegional_SizeConstraintSetSummary/;
  has NextMarker => (is => 'ro', isa => Str);
  has SizeConstraintSets => (is => 'ro', isa => ArrayRef[WAFRegional_SizeConstraintSetSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SizeConstraintSets' => {
                                         'type' => 'ArrayRef[WAFRegional_SizeConstraintSetSummary]',
                                         'class' => 'Paws::WAFRegional::SizeConstraintSetSummary'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListSizeConstraintSetsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more C<SizeConstraintSet> objects than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<SizeConstraintSet> objects, submit
another C<ListSizeConstraintSets> request, and specify the
C<NextMarker> value from the response in the C<NextMarker> value in the
next request.


=head2 SizeConstraintSets => ArrayRef[WAFRegional_SizeConstraintSetSummary]

An array of SizeConstraintSetSummary objects.


=head2 _request_id => Str


=cut

1;