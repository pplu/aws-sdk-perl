
package Paws::STS::AssumeRoleResponse;
  use Moose;
  has AssumedRoleUser => (is => 'ro', isa => 'Paws::STS::AssumedRoleUser');
  has Credentials => (is => 'ro', isa => 'Paws::STS::Credentials');
  has PackedPolicySize => (is => 'ro', isa => 'Int');
  has SourceIdentity => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::AssumeRoleResponse

=head1 ATTRIBUTES


=head2 AssumedRoleUser => L<Paws::STS::AssumedRoleUser>

The Amazon Resource Name (ARN) and the assumed role ID, which are
identifiers that you can use to refer to the resulting temporary
security credentials. For example, you can reference these credentials
as a principal in a resource-based policy by using the ARN or assumed
role ID. The ARN and ID include the C<RoleSessionName> that you
specified when you called C<AssumeRole>.


=head2 Credentials => L<Paws::STS::Credentials>

The temporary security credentials, which include an access key ID, a
secret access key, and a security (or session) token.

The size of the security token that STS API operations return is not
fixed. We strongly recommend that you make no assumptions about the
maximum size.


=head2 PackedPolicySize => Int

A percentage value that indicates the packed size of the session
policies and session tags combined passed in the request. The request
fails if the packed size is greater than 100 percent, which means the
policies and tags exceeded the allowed space.


=head2 SourceIdentity => Str

The source identity specified by the principal that is calling the
C<AssumeRole> operation.

You can require users to specify a source identity when they assume a
role. You do this by using the C<sts:SourceIdentity> condition key in a
role trust policy. You can use source identity information in AWS
CloudTrail logs to determine who took actions with a role. You can use
the C<aws:SourceIdentity> condition key to further control access to
AWS resources based on the value of source identity. For more
information about using source identity, see Monitor and control
actions taken with assumed roles
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html)
in the I<IAM User Guide>.

The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@-


=head2 _request_id => Str


=cut

