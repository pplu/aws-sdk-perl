package Paws::Organizations::Root;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PolicyTypes => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::PolicyTypeSummary]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::Root

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::Root object:

  $service_obj->Method(Att1 => { Arn => $value, ..., PolicyTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::Root object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains details about a root. A root is a top-level parent node in the
hierarchy of an organization that can contain organizational units
(OUs) and accounts. Every root contains every AWS account in the
organization. Each root enables the accounts to be organized in a
different way and to have different policy types enabled for use in
that root.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the root.

For more information about ARNs in Organizations, see ARN Formats
Supported by Organizations
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns)
in the I<AWS Organizations User Guide>.


=head2 Id => Str

  The unique identifier (ID) for the root.

The regex pattern (http://wikipedia.org/wiki/regex) for a root ID
string requires "r-" followed by from 4 to 32 lower-case letters or
digits.


=head2 Name => Str

  The friendly name of the root.

The regex pattern (http://wikipedia.org/wiki/regex) that is used to
validate this parameter is a string of any of the characters in the
ASCII character range.


=head2 PolicyTypes => ArrayRef[L<Paws::Organizations::PolicyTypeSummary>]

  The types of policies that are currently enabled for the root and
therefore can be attached to the root or to its OUs or accounts.

Even if a policy type is shown as available in the organization, you
can separately enable and disable them at the root level by using
EnablePolicyType and DisablePolicyType. Use DescribeOrganization to see
the availability of the policy types in that organization.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

