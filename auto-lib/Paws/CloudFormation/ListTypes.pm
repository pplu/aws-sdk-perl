
package Paws::CloudFormation::ListTypes;
  use Moose;
  has DeprecatedStatus => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProvisioningType => (is => 'ro', isa => 'Str');
  has Visibility => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListTypesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListTypesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListTypes - Arguments for method ListTypes on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTypes on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTypes.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListTypesOutput = $cloudformation->ListTypes(
      DeprecatedStatus => 'LIVE',                 # OPTIONAL
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyNextToken',          # OPTIONAL
      ProvisioningType => 'NON_PROVISIONABLE',    # OPTIONAL
      Visibility       => 'PUBLIC',               # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListTypesOutput->NextToken;
    my $TypeSummaries = $ListTypesOutput->TypeSummaries;

    # Returns a L<Paws::CloudFormation::ListTypesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListTypes>

=head1 ATTRIBUTES


=head2 DeprecatedStatus => Str

The deprecation status of the types that you want to get summary
information about.

Valid values include:

=over

=item *

C<LIVE>: The type is registered for use in CloudFormation operations.

=item *

C<DEPRECATED>: The type has been deregistered and can no longer be used
in CloudFormation operations.

=back


Valid values are: C<"LIVE">, C<"DEPRECATED">

=head2 MaxResults => Int

The maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a C<NextToken> value that you can assign to the C<NextToken> request
parameter to get the next set of results.



=head2 NextToken => Str

If the previous paginated request didn't return all of the remaining
results, the response object's C<NextToken> parameter value is set to a
token. To retrieve the next set of results, call this action again and
assign that token to the request object's C<NextToken> parameter. If
there are no remaining results, the previous response object's
C<NextToken> parameter is set to C<null>.



=head2 ProvisioningType => Str

The provisioning behavior of the type. AWS CloudFormation determines
the provisioning type during registration, based on the types of
handlers in the schema handler package submitted.

Valid values include:

=over

=item *

C<FULLY_MUTABLE>: The type includes an update handler to process
updates to the type during stack update operations.

=item *

C<IMMUTABLE>: The type does not include an update handler, so the type
cannot be updated and must instead be replaced during stack update
operations.

=item *

C<NON_PROVISIONABLE>: The type does not include create, read, and
delete handlers, and therefore cannot actually be provisioned.

=back


Valid values are: C<"NON_PROVISIONABLE">, C<"IMMUTABLE">, C<"FULLY_MUTABLE">

=head2 Visibility => Str

The scope at which the type is visible and usable in CloudFormation
operations.

Valid values include:

=over

=item *

C<PRIVATE>: The type is only visible and usable within the account in
which it is registered. Currently, AWS CloudFormation marks any types
you create as C<PRIVATE>.

=item *

C<PUBLIC>: The type is publically visible and usable within any Amazon
account.

=back


Valid values are: C<"PUBLIC">, C<"PRIVATE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTypes in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

