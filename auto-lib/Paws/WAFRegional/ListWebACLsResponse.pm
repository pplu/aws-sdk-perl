# Generated from json/callresult_class.tt

package Paws::WAFRegional::ListWebACLsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAFRegional::Types qw/WAFRegional_WebACLSummary/;
  has NextMarker => (is => 'ro', isa => Str);
  has WebACLs => (is => 'ro', isa => ArrayRef[WAFRegional_WebACLSummary]);

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
               'WebACLs' => {
                              'class' => 'Paws::WAFRegional::WebACLSummary',
                              'type' => 'ArrayRef[WAFRegional_WebACLSummary]'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListWebACLsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more C<WebACL> objects than the number that you specified
for C<Limit> in the request, the response includes a C<NextMarker>
value. To list more C<WebACL> objects, submit another C<ListWebACLs>
request, and specify the C<NextMarker> value from the response in the
C<NextMarker> value in the next request.


=head2 WebACLs => ArrayRef[WAFRegional_WebACLSummary]

An array of WebACLSummary objects.


=head2 _request_id => Str


=cut

1;