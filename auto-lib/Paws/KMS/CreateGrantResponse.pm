# Generated from json/callresult_class.tt

package Paws::KMS::CreateGrantResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KMS::Types qw//;
  has GrantId => (is => 'ro', isa => Str);
  has GrantToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GrantToken' => {
                                 'type' => 'Str'
                               },
               'GrantId' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateGrantResponse

=head1 ATTRIBUTES


=head2 GrantId => Str

The unique identifier for the grant.

You can use the C<GrantId> in a subsequent RetireGrant or RevokeGrant
operation.


=head2 GrantToken => Str

The grant token.

For more information, see Grant Tokens
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token)
in the I<AWS Key Management Service Developer Guide>.


=head2 _request_id => Str


=cut

1;