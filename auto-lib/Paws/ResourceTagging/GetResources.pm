
package Paws::ResourceTagging::GetResources;
  use Moose;
  has ExcludeCompliantResources => (is => 'ro', isa => 'Bool');
  has IncludeComplianceDetails => (is => 'ro', isa => 'Bool');
  has PaginationToken => (is => 'ro', isa => 'Str');
  has ResourceARNList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
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
      ResourceARNList           => [
        'MyResourceARN', ...                               # min: 1, max: 1011
      ],    # OPTIONAL
      ResourceTypeFilters => [
        'MyAmazonResourceType', ...    # max: 256
      ],    # OPTIONAL
      ResourcesPerPage => 1,    # OPTIONAL
      TagFilters       => [
        {
          Key    => 'MyTagKey',    # min: 1, max: 128; OPTIONAL
          Values => [
            'MyTagValue', ...      # max: 256
          ],    # max: 20; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TagsPerPage => 1,    # OPTIONAL
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

Specifies a C<PaginationToken> response value from a previous request
to indicate that you want the next page of results. Leave this
parameter empty in your initial request.



=head2 ResourceARNList => ArrayRef[Str|Undef]

Specifies a list of ARNs of resources for which you want to retrieve
tag data. You can't specify both this parameter and any of the
pagination parameters (C<ResourcesPerPage>, C<TagsPerPage>,
C<PaginationToken>) in the same request. If you specify both, you get
an C<Invalid Parameter> exception.

If a resource specified by this parameter doesn't exist, it doesn't
generate an error; it simply isn't included in the response.

An ARN (Amazon Resource Name) uniquely identifies a resource. For more
information, see Amazon Resource Names (ARNs) and AWS Service
Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.



=head2 ResourcesPerPage => Int

Specifies the maximum number of results to be returned in each page. A
query can return fewer than this maximum, even if there are more
results still to return. You should always check the C<PaginationToken>
response value to see if there are more results. You can specify a
minimum of 1 and a maximum value of 100.



=head2 ResourceTypeFilters => ArrayRef[Str|Undef]

Specifies the resource types that you want included in the response.
The format of each resource type is C<service[:resourceType]>. For
example, specifying a resource type of C<ec2> returns all Amazon EC2
resources (which includes EC2 instances). Specifying a resource type of
C<ec2:instance> returns only EC2 instances.

The string for each service name and resource type is the same as that
embedded in a resource's Amazon Resource Name (ARN). Consult the I<AWS
General Reference> for the following:

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).

You can specify multiple resource types by using an array. The array
can include up to 100 items. Note that the length constraint
requirement applies to each resource type filter.



=head2 TagFilters => ArrayRef[L<Paws::ResourceTagging::TagFilter>]

Specifies a list of TagFilters (keys and values) to restrict the output
to only those resources that have the specified tag and, if included,
the specified value. Each C<TagFilter> must contain a key with values
optional. A request can include up to 50 keys, and each key can include
up to 20 values.

Note the following when deciding how to use TagFilters:

=over

=item *

If you I<don't> specify a C<TagFilter>, the response includes all
resources that are currently tagged or ever had a tag. Resources that
currently don't have tags are shown with an empty tag set, like this:
C<"Tags": []>.

=item *

If you specify more than one filter in a single request, the response
returns only those resources that satisfy all filters.

=item *

If you specify a filter that contains more than one value for a key,
the response returns resources that match any of the specified values
for that key.

=item *

If you don't specify any values for a key, the response returns
resources that are tagged with that key and any or no value.

For example, for the following filters: C<filter1= {keyA,{value1}}>,
C<filter2={keyB,{value2,value3,value4}}>, C<filter3= {keyC}>:

=over

=item *

C<GetResources({filter1})> returns resources tagged with C<key1=value1>

=item *

C<GetResources({filter2})> returns resources tagged with C<key2=value2>
or C<key2=value3> or C<key2=value4>

=item *

C<GetResources({filter3})> returns resources tagged with any tag with
the key C<key3>, and with any or no value

=item *

C<GetResources({filter1,filter2,filter3})> returns resources tagged
with C<(key1=value1) and (key2=value2 or key2=value3 or key2=value4)
and (key3, any or no value)>

=back

=back




=head2 TagsPerPage => Int

AWS recommends using C<ResourcesPerPage> instead of this parameter.

A limit that restricts the number of tags (key and value pairs)
returned by C<GetResources> in paginated output. A resource with no
tags is counted as having one tag (one key and value pair).

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

You can set C<TagsPerPage> to a minimum of 100 items up to a maximum of
500 items.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResources in L<Paws::ResourceTagging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

