
package Paws::ResourceTagging::GetComplianceSummary;
  use Moose;
  has GroupBy => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has PaginationToken => (is => 'ro', isa => 'Str');
  has RegionFilters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResourceTypeFilters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TagKeyFilters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TargetIdFilters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetComplianceSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceTagging::GetComplianceSummaryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::GetComplianceSummary - Arguments for method GetComplianceSummary on L<Paws::ResourceTagging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetComplianceSummary on the
L<AWS Resource Groups Tagging API|Paws::ResourceTagging> service. Use the attributes of this class
as arguments to method GetComplianceSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetComplianceSummary.

=head1 SYNOPSIS

    my $tagging = Paws->service('ResourceTagging');
    my $GetComplianceSummaryOutput = $tagging->GetComplianceSummary(
      GroupBy => [
        'TARGET_ID', ...    # values: TARGET_ID, REGION, RESOURCE_TYPE
      ],                    # OPTIONAL
      MaxResults      => 1,                      # OPTIONAL
      PaginationToken => 'MyPaginationToken',    # OPTIONAL
      RegionFilters   => [
        'MyRegion', ...                          # min: 1, max: 256
      ],                                         # OPTIONAL
      ResourceTypeFilters => [
        'MyAmazonResourceType', ...              # max: 256
      ],                                         # OPTIONAL
      TagKeyFilters => [
        'MyTagKey', ...                          # min: 1, max: 128
      ],                                         # OPTIONAL
      TargetIdFilters => [
        'MyTargetId', ...                        # min: 6, max: 68
      ],                                         # OPTIONAL
    );

    # Results:
    my $PaginationToken = $GetComplianceSummaryOutput->PaginationToken;
    my $SummaryList     = $GetComplianceSummaryOutput->SummaryList;

    # Returns a L<Paws::ResourceTagging::GetComplianceSummaryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tagging/GetComplianceSummary>

=head1 ATTRIBUTES


=head2 GroupBy => ArrayRef[Str|Undef]

A list of attributes to group the counts of noncompliant resources by.
If supplied, the counts are sorted by those attributes.



=head2 MaxResults => Int

A limit that restricts the number of results that are returned per
page.



=head2 PaginationToken => Str

A string that indicates that additional data is available. Leave this
value empty for your initial request. If the response includes a
C<PaginationToken>, use that string for this value to request an
additional page of data.



=head2 RegionFilters => ArrayRef[Str|Undef]

A list of Regions to limit the output by. If you use this parameter,
the count of returned noncompliant resources includes only resources in
the specified Regions.



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



=head2 TagKeyFilters => ArrayRef[Str|Undef]

A list of tag keys to limit the output by. If you use this parameter,
the count of returned noncompliant resources includes only resources
that have the specified tag keys.



=head2 TargetIdFilters => ArrayRef[Str|Undef]

The target identifiers (usually, specific account IDs) to limit the
output by. If you use this parameter, the count of returned
noncompliant resources includes only resources with the specified
target IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetComplianceSummary in L<Paws::ResourceTagging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

