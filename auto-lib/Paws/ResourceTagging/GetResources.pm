
package Paws::ResourceTagging::GetResources;
  use Moose;
  has PaginationToken => (is => 'ro', isa => 'Str');
  has ResourceTypeFilters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::ResourceTagging::TagFilter]');
  has TagsPerPage => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceTagging::GetResourcesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::GetResources - Arguments for method GetResources on Paws::ResourceTagging

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResources on the 
AWS Resource Groups Tagging API service. Use the attributes of this class
as arguments to method GetResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResources.

As an example:

  $service_obj->GetResources(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 PaginationToken => Str

A string that indicates that additional data is available. Leave this
value empty for your initial request. If the response includes a
C<PaginationToken>, use that string for this value to request an
additional page of data.



=head2 ResourceTypeFilters => ArrayRef[Str|Undef]

The constraints on the resources that you want returned. The format of
each resource type is C<service[:resourceType]>. For example,
specifying a resource type of C<ec2> returns all tagged Amazon EC2
resources (which includes tagged EC2 instances). Specifying a resource
type of C<ec2:instance> returns only EC2 instances.

The string for each service name and resource type is the same as that
embedded in a resource's Amazon Resource Name (ARN). Consult the I<AWS
General Reference> for the following:

=over

=item *

For a list of service name strings, see AWS Service Namespaces.

=item *

For resource type strings, see Example ARNs.

=item *

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces.

=back




=head2 TagFilters => ArrayRef[L<Paws::ResourceTagging::TagFilter>]

A list of tags (keys and values). A request can include up to 50 keys,
and each key can include up to 20 values.

If you specify multiple filters connected by an AND operator in a
single request, the response returns only those resources that are
associated with every specified filter.

If you specify multiple filters connected by an OR operator in a single
request, the response returns all resources that are associated with at
least one or possibly more of the specified filters.



=head2 B<REQUIRED> TagsPerPage => Int

A limit that restricts the number of tags (key and value pairs)
returned by GetResources in paginated output. A resource with no tags
is counted as having one tag (one key and value pair).

C<GetResources> does not split a resource and its associated tags
across pages. If the specified C<TagsPerPage> would cause such a break,
a C<PaginationToken> is returned in place of the affected resource and
its tags. Use that token in another request to get the remaining data.
For example, if you specify a C<TagsPerPage> of C<100> and the account
has 22 resources with 10 tags each (meaning that each resource has 10
key and value pairs), the output will consist of 3 pages, with the
first page displaying the first 10 resources, each with its 10 tags,
the second page displaying the next 10 resources each with its 10 tags,
and the third page displaying the remaining 2 resources, each with its
10 tags.

You can set C<TagsPerPage> to a minimum of 100 items and the maximum of
500 items.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResources in L<Paws::ResourceTagging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

