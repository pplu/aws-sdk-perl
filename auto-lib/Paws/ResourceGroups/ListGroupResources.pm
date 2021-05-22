
package Paws::ResourceGroups::ListGroupResources;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::ResourceFilter]');
  has Group => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-group-resources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::ListGroupResourcesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ListGroupResources - Arguments for method ListGroupResources on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGroupResources on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method ListGroupResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGroupResources.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $ListGroupResourcesOutput = $resource -groups->ListGroupResources(
      Filters => [
        {
          Name   => 'resource-type',    # values: resource-type
          Values => [
            'MyResourceFilterValue', ...    # min: 1, max: 128
          ],                                # min: 1, max: 5

        },
        ...
      ],                                    # OPTIONAL
      Group      => 'MyGroupString',        # OPTIONAL
      GroupName  => 'MyGroupName',          # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $NextToken           = $ListGroupResourcesOutput->NextToken;
    my $QueryErrors         = $ListGroupResourcesOutput->QueryErrors;
    my $ResourceIdentifiers = $ListGroupResourcesOutput->ResourceIdentifiers;
    my $Resources           = $ListGroupResourcesOutput->Resources;

    # Returns a L<Paws::ResourceGroups::ListGroupResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/ListGroupResources>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ResourceGroups::ResourceFilter>]

Filters, formatted as ResourceFilter objects, that you want to apply to
a C<ListGroupResources> operation. Filters the results to include only
those of the specified resource types.

=over

=item *

C<resource-type> - Filter resources by their type. Specify up to five
resource types in the format C<AWS::ServiceCode::ResourceType>. For
example, C<AWS::EC2::Instance>, or C<AWS::S3::Bucket>.

=back

When you specify a C<resource-type> filter for C<ListGroupResources>,
AWS Resource Groups validates your filter resource types against the
types that are defined in the query associated with the group. For
example, if a group contains only S3 buckets because its query
specifies only that resource type, but your C<resource-type> filter
includes EC2 instances, AWS Resource Groups does not filter for EC2
instances. In this case, a C<ListGroupResources> request returns a
C<BadRequestException> error with a message similar to the following:

C<The resource types specified as filters in the request are not
valid.>

The error includes a list of resource types that failed the validation
because they are not part of the query associated with the group. This
validation doesn't occur when the group query specifies
C<AWS::AllSupported>, because a group based on such a query can contain
any of the allowed resource types for the query type (tag-based or AWS
CloudFormation stack-based queries).



=head2 Group => Str

The name or the ARN of the resource group



=head2 GroupName => Str

I<B<Deprecated - don't use this parameter. Use the C<Group> request
field instead.>>



=head2 MaxResults => Int

The total number of results that you want included on each page of the
response. If you do not include this parameter, it defaults to a value
that is specific to the operation. If additional items exist beyond the
maximum you specify, the C<NextToken> response element is present and
has a value (is not null). Include that value as the C<NextToken>
request parameter in the next call to the operation to get the next
part of the results. Note that the service might return fewer results
than the maximum even when there are more results available. You should
check C<NextToken> after every operation to ensure that you receive all
of the results.



=head2 NextToken => Str

The parameter for receiving additional results if you receive a
C<NextToken> response in a previous request. A C<NextToken> response
indicates that more output is available. Set this parameter to the
value provided by a previous call's C<NextToken> response to indicate
where the output should continue from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGroupResources in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

