
package Paws::STS::GetFederationToken;
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str');
  has PolicyArns => (is => 'ro', isa => 'ArrayRef[Paws::STS::PolicyDescriptorType]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::STS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFederationToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::STS::GetFederationTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetFederationTokenResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::GetFederationToken - Arguments for method GetFederationToken on L<Paws::STS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFederationToken on the
L<AWS Security Token Service|Paws::STS> service. Use the attributes of this class
as arguments to method GetFederationToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFederationToken.

=head1 SYNOPSIS

    my $sts = Paws->service('STS');
    # To get temporary credentials for a role by using GetFederationToken
    my $GetFederationTokenResponse = $sts->GetFederationToken(
      'DurationSeconds' => 3600,
      'Name'            => 'Bob',
      'Policy'          =>
'{"Version":"2012-10-17","Statement":[{"Sid":"Stmt1","Effect":"Allow","Action":"s3:*","Resource":"*"}]}'
    );

    # Results:
    my $Credentials      = $GetFederationTokenResponse->Credentials;
    my $FederatedUser    = $GetFederationTokenResponse->FederatedUser;
    my $PackedPolicySize = $GetFederationTokenResponse->PackedPolicySize;

    # Returns a L<Paws::STS::GetFederationTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sts/GetFederationToken>

=head1 ATTRIBUTES


=head2 DurationSeconds => Int

The duration, in seconds, that the session should last. Acceptable
durations for federation sessions range from 900 seconds (15 minutes)
to 129,600 seconds (36 hours), with 43,200 seconds (12 hours) as the
default. Sessions obtained using AWS account root user credentials are
restricted to a maximum of 3,600 seconds (one hour). If the specified
duration is longer than one hour, the session obtained by using root
user credentials defaults to one hour.



=head2 B<REQUIRED> Name => Str

The name of the federated user. The name is used as an identifier for
the temporary security credentials (such as C<Bob>). For example, you
can reference the federated user name in a resource-based policy, such
as in an Amazon S3 bucket policy.

The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@-



=head2 Policy => Str

An IAM policy in JSON format that you want to use as an inline session
policy.

You must pass an inline or managed session policy
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
to this operation. You can pass a single JSON policy document to use as
an inline session policy. You can also specify up to 10 managed
policies to use as managed session policies.

This parameter is optional. However, if you do not pass any session
policies, then the resulting federated user session has no permissions.

When you pass session policies, the session permissions are the
intersection of the IAM user policies and the session policies that you
pass. This gives you a way to further restrict the permissions for a
federated user. You cannot use session policies to grant more
permissions than those that are defined in the permissions policy of
the IAM user. For more information, see Session Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
in the I<IAM User Guide>.

The resulting credentials can be used to access a resource that has a
resource-based policy. If that policy specifically references the
federated user session in the C<Principal> element of the policy, the
session has the permissions allowed by the policy. These permissions
are granted in addition to the permissions that are granted by the
session policies.

The plain text that you use for both inline and managed session
policies can't exceed 2,048 characters. The JSON policy characters can
be any ASCII character from the space character to the end of the valid
character list (\u0020 through \u00FF). It can also include the tab
(\u0009), linefeed (\u000A), and carriage return (\u000D) characters.

An AWS conversion compresses the passed session policies and session
tags into a packed binary format that has a separate limit. Your
request can fail for this limit even if your plain text meets the other
requirements. The C<PackedPolicySize> response element indicates by
percentage how close the policies and tags for your request are to the
upper size limit.



=head2 PolicyArns => ArrayRef[L<Paws::STS::PolicyDescriptorType>]

The Amazon Resource Names (ARNs) of the IAM managed policies that you
want to use as a managed session policy. The policies must exist in the
same account as the IAM user that is requesting federated access.

You must pass an inline or managed session policy
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
to this operation. You can pass a single JSON policy document to use as
an inline session policy. You can also specify up to 10 managed
policies to use as managed session policies. The plain text that you
use for both inline and managed session policies can't exceed 2,048
characters. You can provide up to 10 managed policy ARNs. For more
information about ARNs, see Amazon Resource Names (ARNs) and AWS
Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the AWS General Reference.

This parameter is optional. However, if you do not pass any session
policies, then the resulting federated user session has no permissions.

When you pass session policies, the session permissions are the
intersection of the IAM user policies and the session policies that you
pass. This gives you a way to further restrict the permissions for a
federated user. You cannot use session policies to grant more
permissions than those that are defined in the permissions policy of
the IAM user. For more information, see Session Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
in the I<IAM User Guide>.

The resulting credentials can be used to access a resource that has a
resource-based policy. If that policy specifically references the
federated user session in the C<Principal> element of the policy, the
session has the permissions allowed by the policy. These permissions
are granted in addition to the permissions that are granted by the
session policies.

An AWS conversion compresses the passed session policies and session
tags into a packed binary format that has a separate limit. Your
request can fail for this limit even if your plain text meets the other
requirements. The C<PackedPolicySize> response element indicates by
percentage how close the policies and tags for your request are to the
upper size limit.



=head2 Tags => ArrayRef[L<Paws::STS::Tag>]

A list of session tags. Each session tag consists of a key name and an
associated value. For more information about session tags, see Passing
Session Tags in STS
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html)
in the I<IAM User Guide>.

This parameter is optional. You can pass up to 50 session tags. The
plain text session tag keys canE<rsquo>t exceed 128 characters and the
values canE<rsquo>t exceed 256 characters. For these and additional
limits, see IAM and STS Character Limits
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length)
in the I<IAM User Guide>.

An AWS conversion compresses the passed session policies and session
tags into a packed binary format that has a separate limit. Your
request can fail for this limit even if your plain text meets the other
requirements. The C<PackedPolicySize> response element indicates by
percentage how close the policies and tags for your request are to the
upper size limit.

You can pass a session tag with the same key as a tag that is already
attached to the user you are federating. When you do, session tags
override a user tag with the same key.

Tag keyE<ndash>value pairs are not case sensitive, but case is
preserved. This means that you cannot have separate C<Department> and
C<department> tag keys. Assume that the role has the
C<Department>=C<Marketing> tag and you pass the
C<department>=C<engineering> session tag. C<Department> and
C<department> are not saved as separate tags, and the session tag
passed in the request takes precedence over the role tag.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFederationToken in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

