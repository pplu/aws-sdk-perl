# Generated from json/callresult_class.tt

package Paws::WAF::ListIPSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_IPSetSummary/;
  has IPSets => (is => 'ro', isa => ArrayRef[WAF_IPSetSummary]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IPSets' => {
                             'class' => 'Paws::WAF::IPSetSummary',
                             'type' => 'ArrayRef[WAF_IPSetSummary]'
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

Paws::WAF::ListIPSetsResponse

=head1 ATTRIBUTES


=head2 IPSets => ArrayRef[WAF_IPSetSummary]

An array of IPSetSummary objects.


=head2 NextMarker => Str

To list more C<IPSet> objects, submit another C<ListIPSets> request,
and in the next request use the C<NextMarker> response value as the
C<NextMarker> value.


=head2 _request_id => Str


=cut

1;