
package Paws::Connect::GetFederationTokenResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw/Connect_Credentials/;
  has Credentials => (is => 'ro', isa => Connect_Credentials);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Credentials' => {
                                  'class' => 'Paws::Connect::Credentials',
                                  'type' => 'Connect_Credentials'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetFederationTokenResponse

=head1 ATTRIBUTES


=head2 Credentials => Connect_Credentials

The credentials to use for federation.


=head2 _request_id => Str


=cut

