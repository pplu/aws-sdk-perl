# Generated from json/callresult_class.tt

package Paws::WAFRegional::CreateWebACLResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_WebACL/;
  has ChangeToken => (is => 'ro', isa => Str);
  has WebACL => (is => 'ro', isa => WAFRegional_WebACL);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WebACL' => {
                             'class' => 'Paws::WAFRegional::WebACL',
                             'type' => 'WAFRegional_WebACL'
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

Paws::WAFRegional::CreateWebACLResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateWebACL> request.
You can also use this value to query the status of the request. For
more information, see GetChangeTokenStatus.


=head2 WebACL => WAFRegional_WebACL

The WebACL returned in the C<CreateWebACL> response.


=head2 _request_id => Str


=cut

1;