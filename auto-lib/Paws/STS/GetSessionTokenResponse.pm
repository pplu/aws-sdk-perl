# Generated from callresult_class.tt

package Paws::STS::GetSessionTokenResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::STS::Types qw/STS_Credentials/;
  has Credentials => (is => 'ro', isa => STS_Credentials);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Credentials' => {
                                  'class' => 'Paws::STS::Credentials',
                                  'type' => 'STS_Credentials'
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

Paws::STS::GetSessionTokenResponse

=head1 ATTRIBUTES


=head2 Credentials => STS_Credentials

The temporary security credentials, which include an access key ID, a
secret access key, and a security (or session) token.

The size of the security token that STS API operations return is not
fixed. We strongly recommend that you make no assumptions about the
maximum size.


=head2 _request_id => Str


=cut

