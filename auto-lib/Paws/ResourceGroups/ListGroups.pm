
package Paws::ResourceGroups::ListGroups;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::GroupFilter]');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/groups-list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::ListGroupsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ListGroups - Arguments for method ListGroups on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGroups on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method ListGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGroups.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $ListGroupsOutput = $resource -groups->ListGroups(
      Filters => [
        {
          Name   => 'resource-type',    # values: resource-type
          Values => [
            'MyGroupFilterValue', ...    # min: 1, max: 128
          ],                             # min: 1, max: 5

        },
        ...
      ],                                 # OPTIONAL
      MaxResults => 1,                   # OPTIONAL
      NextToken  => 'MyNextToken',       # OPTIONAL
    );

    # Results:
    my $GroupIdentifiers = $ListGroupsOutput->GroupIdentifiers;
    my $Groups           = $ListGroupsOutput->Groups;
    my $NextToken        = $ListGroupsOutput->NextToken;

    # Returns a L<Paws::ResourceGroups::ListGroupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/ListGroups>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ResourceGroups::GroupFilter>]

Filters, formatted as GroupFilter objects, that you want to apply to a
ListGroups operation.

=over

=item *

C<resource-type> - Filter groups by resource type. Specify up to five
resource types in the format AWS::ServiceCode::ResourceType. For
example, AWS::EC2::Instance, or AWS::S3::Bucket.

=back




=head2 MaxResults => Int

The maximum number of resource group results that are returned by
ListGroups in paginated output. By default, this number is 50.



=head2 NextToken => Str

The NextToken value that is returned in a paginated C<ListGroups>
request. To get the next page of results, run the call again, add the
NextToken parameter, and specify the NextToken value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGroups in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

