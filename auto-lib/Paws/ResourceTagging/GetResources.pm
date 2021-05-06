
package Paws::ResourceTagging::GetResources;
  use Moose;
  has ExcludeCompliantResources => (is => 'ro', isa => 'Bool');
  has IncludeComplianceDetails => (is => 'ro', isa => 'Bool');
  has PaginationToken => (is => 'ro', isa => 'Str');
  has ResourcesPerPage => (is => 'ro', isa => 'Int');
  has ResourceTypeFilters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::ResourceTagging::TagFilter]');
  has TagsPerPage => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceTagging::GetResourcesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::GetResources - Arguments for method GetResources on L<Paws::ResourceTagging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResources on the
L<AWS Resource Groups Tagging API|Paws::ResourceTagging> service. Use the attributes of this class
as arguments to method GetResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResources.

=head1 SYNOPSIS

    my $tagging = Paws->service('ResourceTagging');
    my $GetResourcesOutput = $tagging->GetResources(
      ExcludeCompliantResources => 1,                      # OPTIONAL
      IncludeComplianceDetails  => 1,                      # OPTIONAL
      PaginationToken           => 'MyPaginationToken',    # OPTIONAL
      ResourceTypeFilters       => [
        'MyAmazonResourceType', ...                        # max: 256
      ],                                                   # OPTIONAL
      ResourcesPerPage => 1,                               # OPTIONAL
      TagFilters       => [
        {
          Key    => 'MyTagKey',    # min: 1, max: 128; OPTIONAL
          Values => [
            'MyTagValue', ...      # max: 256
          ],                       # max: 20; OPTIONAL
        },
        ...
      ],                           # OPTIONAL
      TagsPerPage => 1,            # OPTIONAL
    );

    # Results:
    my $PaginationToken        = $GetResourcesOutput->PaginationToken;
    my $ResourceTagMappingList = $GetResourcesOutput->ResourceTagMappingList;

    # Returns a L<Paws::ResourceTagging::GetResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tagging/GetResources>

=head1 ATTRIBUTES


=head2 ExcludeCompliantResources => Bool

Specifies whether to exclude resources that are compliant with the tag
policy. Set this to C<true> if you are interested in retrieving
information on noncompliant resources only.

You can use this parameter only if the C<IncludeComplianceDetails>
parameter is also set to C<true>.



=head2 IncludeComplianceDetails => Bool

Specifies whether to include details regarding the compliance with the
effective tag policy. Set this to C<true> to determine whether
resources are compliant with the tag policy and to get details.



=head2 PaginationToken => Str

A string that indicates that additional data is available. Leave this
value empty for your initial request. If the response includes a
C<PaginationToken>, use that string for this value to request an
additional page of data.



=head2 ResourcesPerPage => Int

A limit that restricts the number of resources returned by GetResources
in paginated output. You can set ResourcesPerPage to a minimum of 1
item and the maximum of 100 items.



=head2 ResourceTypeFilters => ArrayRef[Str|Undef]

The constraints on the resources that you want returned. The format of
each resource type is C<service[:resourceType]>. For example,
specifying a resource type of C<ec2> returns all Amazon EC2 resources
(which includes EC2 instances). Specifying a resource type of
C<ec2:instance> returns only EC2 instances.

The string for each service name and resource type is the same as that
embedded in a resource's Amazon Resource Name (ARN). Consult the I<AWS
General Reference> for the following:

=over

=item *

For a list of service name strings, see AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces).

=item *

For resource type strings, see Example ARNs
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax).

=item *

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).

=back

You can specify multiple resource types by using an array. The array
can include up to 100 items. Note that the length constraint
requirement applies to each resource type filter.



=head2 TagFilters => ArrayRef[L<Paws::ResourceTagging::TagFilter>]

A list of TagFilters (keys and values). Each TagFilter specified must
contain a key with values as optional. A request can include up to 50
keys, and each key can include up to 20 values.

Note the following when deciding how to use TagFilters:

=over

=item *

If you I<do> specify a TagFilter, the response returns only those
resources that are currently associated with the specified tag.

=item *

If you I<don't> specify a TagFilter, the response includes all
resources that were ever associated with tags. Resources that currently
don't have associated tags are shown with an empty tag set, like this:
C<"Tags": []>.

=item *

If you specify more than one filter in a single request, the response
returns only those resources that satisfy all specified filters.

=item *

If you specify a filter that contains more than one value for a key,
the response returns resources that match any of the specified values
for that key.

=item *

If you don't specify any values for a key, the response returns
resources that are tagged with that key irrespective of the value.

For example, for filters: filter1 = {key1, {value1}}, filter2 = {key2,
{value2,value3,value4}} , filter3 = {key3}:

=over

=item *

GetResources( {filter1} ) returns resources tagged with key1=value1

=item *

GetResources( {filter2} ) returns resources tagged with key2=value2 or
key2=value3 or key2=value4

=item *

GetResources( {filter3} ) returns resources tagged with any tag
containing key3 as its tag key, irrespective of its value

=item *

GetResources( {filter1,filter2,filter3} ) returns resources tagged with
( key1=value1) and ( key2=value2 or key2=value3 or key2=value4) and
(key3, irrespective of the value)

=back

=back




=head2 TagsPerPage => Int

AWS recommends using C<ResourcesPerPage> instead of this parameter.

A limit that restricts the number of tags (key and value pairs)
returned by GetResources in paginated output. A resource with no tags
is counted as having one tag (one key and value pair).

C<GetResources> does not split a resource and its associated tags
across pages. If the specified C<TagsPerPage> would cause such a break,
a C<PaginationToken> is returned in place of the affected resource and
its tags. Use that token in another request to get the remaining data.
For example, if you specify a C<TagsPerPage> of C<100> and the account
has 22 resources with 10 tags each (meaning that each resource has 10
key and value pairs), the output will consist of three pages. The first
page displays the first 10 resources, each with its 10 tags. The second
page displays the next 10 resources, each with its 10 tags. The third
page displays the remaining 2 resources, each with its 10 tags.

You can set C<TagsPerPage> to a minimum of 100 items and the maximum of
500 items.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResources in L<Paws::ResourceTagging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

