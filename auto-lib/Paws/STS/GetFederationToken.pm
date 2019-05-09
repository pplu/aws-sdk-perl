
package Paws::STS::GetFederationToken;
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str');

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
      'Policy' =>
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

An IAM policy in JSON format. You must pass an IAM permissions policy
to C<GetFederationToken>. When you pass a policy to this operation, the
resulting temporary credentials are defined by the intersection of your
IAM user policies and the policy that you pass. The passed policy
defines the permissions of the I<federated user>. AWS allows the
federated user's request only when both the attached policy and the IAM
user policy explicitly allow the federated user to perform the
requested action. The passed policy cannot grant more permissions than
those that are defined in the IAM user policy.

The format for this parameter, as described by its regex pattern, is a
string of characters up to 2048 characters in length. The characters
can be any ASCII character from the space character to the end of the
valid character list (\u0020-\u00FF). It can also include the tab
(\u0009), linefeed (\u000A), and carriage return (\u000D) characters.

The policy plaintext must be 2048 bytes or shorter. However, an
internal conversion compresses it into a packed binary format with a
separate limit. The C<PackedPolicySize> response element indicates by
percentage how close to the upper size limit the policy is, where 100
percent is the maximum allowed size.

For more information about how permissions work, see Permissions for
GetFederationToken
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_getfederationtoken.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFederationToken in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

