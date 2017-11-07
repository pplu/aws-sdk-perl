package Paws::Organizations::PolicySummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AwsManaged => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::PolicySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::PolicySummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::PolicySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about a policy, but does not include the content.
To see the content of a policy, see DescribePolicy.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the policy.

For more information about ARNs in Organizations, see ARN Formats
Supported by Organizations
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns)
in the I<AWS Organizations User Guide>.


=head2 AwsManaged => Bool

  A boolean value that indicates whether the specified policy is an AWS
managed policy. If true, then you can attach the policy to roots, OUs,
or accounts, but you cannot edit it.


=head2 Description => Str

  The description of the policy.


=head2 Id => Str

  The unique identifier (ID) of the policy.

The regex pattern (http://wikipedia.org/wiki/regex) for a policy ID
string requires "p-" followed by from 8 to 128 lower-case letters or
digits.


=head2 Name => Str

  The friendly name of the policy.

The regex pattern (http://wikipedia.org/wiki/regex) that is used to
validate this parameter is a string of any of the characters in the
ASCII character range.


=head2 Type => Str

  The type of policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

