
package Paws::IAM::CreateRole;
  use Moose;
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has MaxSessionDuration => (is => 'ro', isa => 'Int');
  has Path => (is => 'ro', isa => 'Str');
  has PermissionsBoundary => (is => 'ro', isa => 'Str');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::CreateRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateRoleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateRole - Arguments for method CreateRole on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRole on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method CreateRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRole.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To create an IAM role
    # The following command creates a role named Test-Role and attaches a trust
    # policy to it that is provided as a URL-encoded JSON string.
    my $CreateRoleResponse = $iam->CreateRole(
      {
        'AssumeRolePolicyDocument' => '<URL-encoded-JSON>',
        'Path'                     => '/',
        'RoleName'                 => 'Test-Role'
      }
    );

    # Results:
    my $Role = $CreateRoleResponse->Role;

    # Returns a L<Paws::IAM::CreateRoleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/CreateRole>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssumeRolePolicyDocument => Str

The trust relationship policy document that grants an entity permission
to assume the role.

The regex pattern (http://wikipedia.org/wiki/regex) used to validate
this parameter is a string of characters consisting of the following:

=over

=item *

Any printable ASCII character ranging from the space character (\u0020)
through the end of the ASCII character range

=item *

The printable characters in the Basic Latin and Latin-1 Supplement
character set (through \u00FF)

=item *

The special characters tab (\u0009), line feed (\u000A), and carriage
return (\u000D)

=back




=head2 Description => Str

A description of the role.



=head2 MaxSessionDuration => Int

The maximum session duration (in seconds) that you want to set for the
specified role. If you do not specify a value for this setting, the
default maximum of one hour is applied. This setting can have a value
from 1 hour to 12 hours.

Anyone who assumes the role from the AWS CLI or API can use the
C<DurationSeconds> API parameter or the C<duration-seconds> CLI
parameter to request a longer session. The C<MaxSessionDuration>
setting determines the maximum duration that can be requested using the
C<DurationSeconds> parameter. If users don't specify a value for the
C<DurationSeconds> parameter, their security credentials are valid for
one hour by default. This applies when you use the C<AssumeRole*> API
operations or the C<assume-role*> CLI operations but does not apply
when you use those operations to create a console URL. For more
information, see Using IAM Roles
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in
the I<IAM User Guide>.



=head2 Path => Str

The path to the role. For more information about paths, see IAM
Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<IAM User Guide>.

This parameter is optional. If it is not included, it defaults to a
slash (/).

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
either a forward slash (/) by itself or a string that must begin and
end with forward slashes. In addition, it can contain any ASCII
character from the ! (\u0021) through the DEL character (\u007F),
including most punctuation characters, digits, and upper and lowercased
letters.



=head2 PermissionsBoundary => Str

The ARN of the policy that is used to set the permissions boundary for
the role.



=head2 B<REQUIRED> RoleName => Str

The name of the role to create.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-

Role names are not distinguished by case. For example, you cannot
create roles named both "PRODROLE" and "prodrole".



=head2 Tags => ArrayRef[L<Paws::IAM::Tag>]

A list of tags that you want to attach to the newly created role. Each
tag consists of a key name and an associated value. For more
information about tagging, see Tagging IAM Identities
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.

If any one of the tags is invalid or if you exceed the allowed number
of tags per role, then the entire request fails and the role is not
created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRole in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

