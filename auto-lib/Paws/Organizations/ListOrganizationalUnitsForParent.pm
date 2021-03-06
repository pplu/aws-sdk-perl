
package Paws::Organizations::ListOrganizationalUnitsForParent;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ParentId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOrganizationalUnitsForParent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::ListOrganizationalUnitsForParentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListOrganizationalUnitsForParent - Arguments for method ListOrganizationalUnitsForParent on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOrganizationalUnitsForParent on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method ListOrganizationalUnitsForParent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOrganizationalUnitsForParent.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
 # To retrieve a list of all of the child OUs in a parent root or OU
 # The following example shows how to get a list of OUs in a specified root:/n/n
    my $ListOrganizationalUnitsForParentResponse =
      $organizations->ListOrganizationalUnitsForParent(
      'ParentId' => 'r-examplerootid111' );

    # Results:
    my $OrganizationalUnits =
      $ListOrganizationalUnitsForParentResponse->OrganizationalUnits;

# Returns a L<Paws::Organizations::ListOrganizationalUnitsForParentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/ListOrganizationalUnitsForParent>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The total number of results that you want included on each page of the
response. If you do not include this parameter, it defaults to a value
that is specific to the operation. If additional items exist beyond the
maximum you specify, the C<NextToken> response element is present and
has a value (is not null). Include that value as the C<NextToken>
request parameter in the next call to the operation to get the next
part of the results. Note that Organizations might return fewer results
than the maximum even when there are more results available. You should
check C<NextToken> after every operation to ensure that you receive all
of the results.



=head2 NextToken => Str

The parameter for receiving additional results if you receive a
C<NextToken> response in a previous request. A C<NextToken> response
indicates that more output is available. Set this parameter to the
value of the previous call's C<NextToken> response to indicate where
the output should continue from.



=head2 B<REQUIRED> ParentId => Str

The unique identifier (ID) of the root or OU whose child OUs you want
to list.

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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOrganizationalUnitsForParent in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

