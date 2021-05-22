
package Paws::Organizations::CreateOrganizationalUnit;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ParentId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::Tag]');

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
   # To create a new organization unit
   # The following example shows how to create an OU that is named AccountingOU.
   # The new OU is directly under the root.:

    my $CreateOrganizationalUnitResponse =
      $organizations->CreateOrganizationalUnit(
      'Name'     => 'AccountingOU',
      'ParentId' => 'r-examplerootid111'
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

The unique identifier (ID) of the parent root or OU that you want to
create the new OU in.

The regex pattern (http://wikipedia.org/wiki/regex) for a parent ID
string requires one of the following:

=over

=item *

B<Root> - A string that begins with "r-" followed by from 4 to 32
lowercase letters or digits.

=item *

B<Organizational unit (OU)> - A string that begins with "ou-" followed
by from 4 to 32 lowercase letters or digits (the ID of the root that
the OU is in). This string is followed by a second "-" dash and from 8
to 32 additional lowercase letters or digits.

=back




=head2 Tags => ArrayRef[L<Paws::Organizations::Tag>]

A list of tags that you want to attach to the newly created OU. For
each tag in the list, you must specify both a tag key and a value. You
can set the value to an empty string, but you can't set it to C<null>.
For more information about tagging, see Tagging AWS Organizations
resources
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html)
in the AWS Organizations User Guide.

If any one of the tags is invalid or if you exceed the allowed number
of tags for an OU, then the entire request fails and the OU is not
created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOrganizationalUnit in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

