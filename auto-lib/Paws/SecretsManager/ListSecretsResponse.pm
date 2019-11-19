# Generated from json/callresult_class.tt

package Paws::SecretsManager::ListSecretsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecretsManager::Types qw/SecretsManager_SecretListEntry/;
  has NextToken => (is => 'ro', isa => Str);
  has SecretList => (is => 'ro', isa => ArrayRef[SecretsManager_SecretListEntry]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SecretList' => {
                                 'class' => 'Paws::SecretsManager::SecretListEntry',
                                 'type' => 'ArrayRef[SecretsManager_SecretListEntry]'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::ListSecretsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present in the response, this value indicates that there's more
output available than what's included in the current response. This can
occur even when the response includes no values at all, such as when
you ask for a filtered view of a very long list. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
continue processing and get the next part of the output. You should
repeat this until the C<NextToken> response element comes back empty
(as C<null>).


=head2 SecretList => ArrayRef[SecretsManager_SecretListEntry]

A list of the secrets in the account.


=head2 _request_id => Str


=cut

1;