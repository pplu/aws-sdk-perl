package Paws::Organizations::PolicyTargetSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has TargetId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::PolicyTargetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::PolicyTargetSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::PolicyTargetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about a root, OU, or account that a policy is
attached to.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the policy target.

For more information about ARNs in Organizations, see ARN Formats
Supported by Organizations
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns)
in the I<AWS Organizations User Guide>.


=head2 Name => Str

  The friendly name of the policy target.

The regex pattern (http://wikipedia.org/wiki/regex) that is used to
validate this parameter is a string of any of the characters in the
ASCII character range.


=head2 TargetId => Str

  The unique identifier (ID) of the policy target.

The regex pattern (http://wikipedia.org/wiki/regex) for a target ID
string requires one of the following:

=over

=item *

Root: a string that begins with "r-" followed by from 4 to 32
lower-case letters or digits.

=item *

Account: a string that consists of exactly 12 digits.

=item *

Organizational unit (OU): a string that begins with "ou-" followed by
from 4 to 32 lower-case letters or digits (the ID of the root that the
OU is in) followed by a second "-" dash and from 8 to 32 additional
lower-case letters or digits.

=back



=head2 Type => Str

  The type of the policy target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

