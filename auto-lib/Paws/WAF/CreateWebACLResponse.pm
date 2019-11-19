# Generated from json/callresult_class.tt

package Paws::WAF::CreateWebACLResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_WebACL/;
  has ChangeToken => (is => 'ro', isa => Str);
  has WebACL => (is => 'ro', isa => WAF_WebACL);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WebACL' => {
                             'type' => 'WAF_WebACL',
                             'class' => 'Paws::WAF::WebACL'
                           },
               'ChangeToken' => {
                                  'type' => 'Str'
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

Paws::WAF::CreateWebACLResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateWebACL> request.
You can also use this value to query the status of the request. For
more information, see GetChangeTokenStatus.


=head2 WebACL => WAF_WebACL

The WebACL returned in the C<CreateWebACL> response.


=head2 _request_id => Str


=cut

1;