
package Paws::Organizations::CreateOrganizationalUnit;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ParentId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOrganizationalUnit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::CreateOrganizationalUnitResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CreateOrganizationalUnit - Arguments for method CreateOrganizationalUnit on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOrganizationalUnit on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method CreateOrganizationalUnit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOrganizationalUnit.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $CreateOrganizationalUnitResponse =
      $organizations->CreateOrganizationalUnit(
      Name     => 'MyOrganizationalUnitName',
      ParentId => 'MyParentId',

      );

    # Results:
    my $OrganizationalUnit =
      $CreateOrganizationalUnitResponse->OrganizationalUnit;

    # Returns a L<Paws::Organizations::CreateOrganizationalUnitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/CreateOrganizationalUnit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The friendly name to assign to the new OU.



=head2 B<REQUIRED> ParentId => Str

The unique identifier (ID) of the parent root or OU in which you want
to create the new OU.

The regex pattern (http://wikipedia.org/wiki/regex) for a parent ID
string requires one of the following:

=over

=item *

Root: a string that begins with "r-" followed by from 4 to 32
lower-case letters or digits.

=item *

Organizational unit (OU): a string that begins with "ou-" followed by
from 4 to 32 lower-case letters or digits (the ID of the root that the
OU is in) followed by a second "-" dash and from 8 to 32 additional
lower-case letters or digits.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOrganizationalUnit in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

