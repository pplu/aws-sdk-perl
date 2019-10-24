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

If you have more C<IPSet> objects than the number that you specified
for C<Limit> in the request, the response includes a C<NextMarker>
value. To list more C<IPSet> objects, submit another C<ListIPSets>
request, and specify the C<NextMarker> value from the response in the
C<NextMarker> value in the next request.


=head2 _request_id => Str


=cut

1;