
package Paws::Organizations::UpdateOrganizationalUnit;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has OrganizationalUnitId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOrganizationalUnit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::UpdateOrganizationalUnitResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::UpdateOrganizationalUnit - Arguments for method UpdateOrganizationalUnit on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOrganizationalUnit on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method UpdateOrganizationalUnit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOrganizationalUnit.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $UpdateOrganizationalUnitResponse =
      $organizations->UpdateOrganizationalUnit(
      OrganizationalUnitId => 'MyOrganizationalUnitId',
      Name                 => 'MyOrganizationalUnitName',    # OPTIONAL
      );

    # Results:
    my $OrganizationalUnit =
      $UpdateOrganizationalUnitResponse->OrganizationalUnit;

    # Returns a L<Paws::Organizations::UpdateOrganizationalUnitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/UpdateOrganizationalUnit>

=head1 ATTRIBUTES


=head2 Name => Str

The new name that you want to assign to the OU.

The regex pattern (http://wikipedia.org/wiki/regex) that is used to
validate this parameter is a string of any of the characters in the
ASCII character range.



=head2 B<REQUIRED> OrganizationalUnitId => Str

The unique identifier (ID) of the OU that you want to rename. You can
get the ID from the ListOrganizationalUnitsForParent operation.

The regex pattern (http://wikipedia.org/wiki/regex) for an
organizational unit ID string requires "ou-" followed by from 4 to 32
lower-case letters or digits (the ID of the root that contains the OU)
followed by a second "-" dash and from 8 to 32 additional lower-case
letters or digits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOrganizationalUnit in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

