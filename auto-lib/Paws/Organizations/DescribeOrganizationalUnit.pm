
package Paws::Organizations::DescribeOrganizationalUnit;
  use Moose;
  has OrganizationalUnitId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrganizationalUnit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::DescribeOrganizationalUnitResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeOrganizationalUnit - Arguments for method DescribeOrganizationalUnit on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOrganizationalUnit on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method DescribeOrganizationalUnit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOrganizationalUnit.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $DescribeOrganizationalUnitResponse =
      $organizations->DescribeOrganizationalUnit(
      OrganizationalUnitId => 'MyOrganizationalUnitId',

      );

    # Results:
    my $OrganizationalUnit =
      $DescribeOrganizationalUnitResponse->OrganizationalUnit;

  # Returns a L<Paws::Organizations::DescribeOrganizationalUnitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/DescribeOrganizationalUnit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationalUnitId => Str

The unique identifier (ID) of the organizational unit that you want
details about. You can get the ID from the
ListOrganizationalUnitsForParent operation.

The regex pattern (http://wikipedia.org/wiki/regex) for an
organizational unit ID string requires "ou-" followed by from 4 to 32
lower-case letters or digits (the ID of the root that contains the OU)
followed by a second "-" dash and from 8 to 32 additional lower-case
letters or digits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOrganizationalUnit in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

