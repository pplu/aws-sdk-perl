# Generated from callresult_class.tt

package Paws::STS::GetFederationTokenResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::STS::Types qw/STS_FederatedUser STS_Credentials/;
  has Credentials => (is => 'ro', isa => STS_Credentials);
  has FederatedUser => (is => 'ro', isa => STS_FederatedUser);
  has PackedPolicySize => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FederatedUser' => {
                                    'class' => 'Paws::STS::FederatedUser',
                                    'type' => 'STS_FederatedUser'
                                  },
               'Credentials' => {
                                  'class' => 'Paws::STS::Credentials',
                                  'type' => 'STS_Credentials'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PackedPolicySize' => {
                                       'type' => 'Int'
                                     }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::GetFederationTokenResponse

=head1 ATTRIBUTES


=head2 Credentials => STS_Credentials

The temporary security credentials, which include an access key ID, a
secret access key, and a security (or session) token.

The size of the security token that STS API operations return is not
fixed. We strongly recommend that you make no assumptions about the
maximum size.


=head2 FederatedUser => STS_FederatedUser

Identifiers for the federated user associated with the credentials
(such as C<arn:aws:sts::123456789012:federated-user/Bob> or
C<123456789012:Bob>). You can use the federated user's ARN in your
resource-based policies, such as an Amazon S3 bucket policy.


=head2 PackedPolicySize => Int

A percentage value indicating the size of the policy in packed form.
The service rejects policies for which the packed size is greater than
100 percent of the allowed value.


=head2 _request_id => Str


=cut

