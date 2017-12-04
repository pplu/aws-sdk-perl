package Paws::Organizations::OrganizationalUnit;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::OrganizationalUnit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::OrganizationalUnit object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::OrganizationalUnit object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains details about an organizational unit (OU). An OU is a
container of AWS accounts within a root of an organization. Policies
that are attached to an OU apply to all accounts contained in that OU
and in any child OUs.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of this OU.

For more information about ARNs in Organizations, see ARN Formats
Supported by Organizations
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns)
in the I<AWS Organizations User Guide>.


=head2 Id => Str

  The unique identifier (ID) associated with this OU.

The regex pattern (http://wikipedia.org/wiki/regex) for an
organizational unit ID string requires "ou-" followed by from 4 to 32
lower-case letters or digits (the ID of the root that contains the OU)
followed by a second "-" dash and from 8 to 32 additional lower-case
letters or digits.


=head2 Name => Str

  The friendly name of this OU.

The regex pattern (http://wikipedia.org/wiki/regex) that is used to
validate this parameter is a string of any of the characters in the
ASCII character range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

