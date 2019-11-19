# Generated from json/callresult_class.tt

package Paws::WAF::CreateByteMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_ByteMatchSet/;
  has ByteMatchSet => (is => 'ro', isa => WAF_ByteMatchSet);
  has ChangeToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ByteMatchSet' => {
                                   'class' => 'Paws::WAF::ByteMatchSet',
                                   'type' => 'WAF_ByteMatchSet'
                                 },
               'ChangeToken' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateByteMatchSetResponse

=head1 ATTRIBUTES


=head2 ByteMatchSet => WAF_ByteMatchSet

A ByteMatchSet that contains no C<ByteMatchTuple> objects.


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateByteMatchSet>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 _request_id => Str


=cut

1;