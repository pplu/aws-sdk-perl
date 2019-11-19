# Generated from callresult_class.tt

package Paws::STS::AssumeRoleResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::STS::Types qw/STS_AssumedRoleUser STS_Credentials/;
  has AssumedRoleUser => (is => 'ro', isa => STS_AssumedRoleUser);
  has Credentials => (is => 'ro', isa => STS_Credentials);
  has PackedPolicySize => (is => 'ro', isa => Int);

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
                                },
               'PackedPolicySize' => {
                                       'type' => 'Int'
                                     },
               'AssumedRoleUser' => {
                                      'class' => 'Paws::STS::AssumedRoleUser',
                                      'type' => 'STS_AssumedRoleUser'
                                    }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::AssumeRoleResponse

=head1 ATTRIBUTES


=head2 AssumedRoleUser => STS_AssumedRoleUser

The Amazon Resource Name (ARN) and the assumed role ID, which are
identifiers that you can use to refer to the resulting temporary
security credentials. For example, you can reference these credentials
as a principal in a resource-based policy by using the ARN or assumed
role ID. The ARN and ID include the C<RoleSessionName> that you
specified when you called C<AssumeRole>.


=head2 Credentials => STS_Credentials

The temporary security credentials, which include an access key ID, a
secret access key, and a security (or session) token.

The size of the security token that STS API operations return is not
fixed. We strongly recommend that you make no assumptions about the
maximum size.


=head2 PackedPolicySize => Int

A percentage value that indicates the size of the policy in packed
form. The service rejects any policy with a packed size greater than
100 percent, which means the policy exceeded the allowed space.


=head2 _request_id => Str


=cut

