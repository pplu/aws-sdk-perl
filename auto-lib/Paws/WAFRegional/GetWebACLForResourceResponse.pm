# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetWebACLForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_WebACLSummary/;
  has WebACLSummary => (is => 'ro', isa => WAFRegional_WebACLSummary);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'WebACLSummary' => {
                                    'class' => 'Paws::WAFRegional::WebACLSummary',
                                    'type' => 'WAFRegional_WebACLSummary'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetWebACLForResourceResponse

=head1 ATTRIBUTES


=head2 WebACLSummary => WAFRegional_WebACLSummary

Information about the web ACL that you specified in the
C<GetWebACLForResource> request. If there is no associated resource, a
null WebACLSummary is returned.


=head2 _request_id => Str


=cut

1;