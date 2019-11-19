# Generated from json/callresult_class.tt

package Paws::WAF::CreateIPSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_IPSet/;
  has ChangeToken => (is => 'ro', isa => Str);
  has IPSet => (is => 'ro', isa => WAF_IPSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IPSet' => {
                            'class' => 'Paws::WAF::IPSet',
                            'type' => 'WAF_IPSet'
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

Paws::WAF::CreateIPSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateIPSet> request.
You can also use this value to query the status of the request. For
more information, see GetChangeTokenStatus.


=head2 IPSet => WAF_IPSet

The IPSet returned in the C<CreateIPSet> response.


=head2 _request_id => Str


=cut

1;