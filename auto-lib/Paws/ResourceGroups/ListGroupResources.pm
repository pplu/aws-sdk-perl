
package Paws::ResourceGroups::ListGroupResources;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::ResourceFilter]');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/groups/{GroupName}/resource-identifiers-list');
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
      GroupName => 'MyGroupName',
      Filters   => [
        {
          Name   => 'resource-type',    # values: resource-type
          Values => [
            'MyResourceFilterValue', ...    # min: 1, max: 128
          ],                                # min: 1, max: 5

        },
        ...
      ],                                    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $NextToken           = $ListGroupResourcesOutput->NextToken;
    my $QueryErrors         = $ListGroupResourcesOutput->QueryErrors;
    my $ResourceIdentifiers = $ListGroupResourcesOutput->ResourceIdentifiers;

    # Returns a L<Paws::ResourceGroups::ListGroupResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/ListGroupResources>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ResourceGroups::ResourceFilter>]

Filters, formatted as ResourceFilter objects, that you want to apply to
a ListGroupResources operation.

=over

=item *

C<resource-type> - Filter resources by their type. Specify up to five
resource types in the format AWS::ServiceCode::ResourceType. For
example, AWS::EC2::Instance, or AWS::S3::Bucket.

=back




=head2 B<REQUIRED> GroupName => Str

The name of the resource group.



=head2 MaxResults => Int

The maximum number of group member ARNs that are returned in a single
call by ListGroupResources, in paginated output. By default, this
number is 50.



=head2 NextToken => Str

The NextToken value that is returned in a paginated ListGroupResources
request. To get the next page of results, run the call again, add the
NextToken parameter, and specify the NextToken value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGroupResources in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

