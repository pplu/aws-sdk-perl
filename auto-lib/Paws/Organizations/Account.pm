package Paws::Organizations::Account;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Email => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has JoinedMethod => (is => 'ro', isa => 'Str');
  has JoinedTimestamp => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::Account

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::Account object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::Account object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about an AWS account that is a member of an
organization.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the account.

For more information about ARNs in Organizations, see ARN Formats
Supported by Organizations
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns)
in the I<AWS Organizations User Guide>.


=head2 Email => Str

  The email address associated with the AWS account.

The regex pattern (http://wikipedia.org/wiki/regex) for this parameter
is a string of characters that represents a standard Internet email
address.


=head2 Id => Str

  The unique identifier (ID) of the account.

The regex pattern (http://wikipedia.org/wiki/regex) for an account ID
string requires exactly 12 digits.


=head2 JoinedMethod => Str

  The method by which the account joined the organization.


=head2 JoinedTimestamp => Str

  The date the account became a part of the organization.


=head2 Name => Str

  The friendly name of the account.

The regex pattern (http://wikipedia.org/wiki/regex) that is used to
validate this parameter is a string of any of the characters in the
ASCII character range.


=head2 Status => Str

  The status of the account in the organization.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

