# Generated from json/callresult_class.tt

package Paws::SecretsManager::GetRandomPasswordResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecretsManager::Types qw//;
  has RandomPassword => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RandomPassword' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::GetRandomPasswordResponse

=head1 ATTRIBUTES


=head2 RandomPassword => Str

A string with the generated password.


=head2 _request_id => Str


=cut

1;