# Generated from json/callresult_class.tt

package Paws::WAF::ListSqlInjectionMatchSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_SqlInjectionMatchSetSummary/;
  has NextMarker => (is => 'ro', isa => Str);
  has SqlInjectionMatchSets => (is => 'ro', isa => ArrayRef[WAF_SqlInjectionMatchSetSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'SqlInjectionMatchSets' => {
                                            'type' => 'ArrayRef[WAF_SqlInjectionMatchSetSummary]',
                                            'class' => 'Paws::WAF::SqlInjectionMatchSetSummary'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::ListSqlInjectionMatchSetsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more SqlInjectionMatchSet objects than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<SqlInjectionMatchSet> objects,
submit another C<ListSqlInjectionMatchSets> request, and specify the
C<NextMarker> value from the response in the C<NextMarker> value in the
next request.


=head2 SqlInjectionMatchSets => ArrayRef[WAF_SqlInjectionMatchSetSummary]

An array of SqlInjectionMatchSetSummary objects.


=head2 _request_id => Str


=cut

1;