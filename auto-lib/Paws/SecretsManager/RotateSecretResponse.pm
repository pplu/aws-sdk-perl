# Generated from json/callresult_class.tt

package Paws::SecretsManager::RotateSecretResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecretsManager::Types qw//;
  has ARN => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has VersionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ARN' => {
                          'type' => 'Str'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'VersionId' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::RotateSecretResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret.


=head2 Name => Str

The friendly name of the secret.


=head2 VersionId => Str

The ID of the new version of the secret created by the rotation started
by this request.


=head2 _request_id => Str


=cut

1;