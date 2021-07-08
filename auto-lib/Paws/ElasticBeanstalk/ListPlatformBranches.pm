
package Paws::ElasticBeanstalk::ListPlatformBranches;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::SearchFilter]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPlatformBranches');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ListPlatformBranchesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListPlatformBranchesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ListPlatformBranches - Arguments for method ListPlatformBranches on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPlatformBranches on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method ListPlatformBranches.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPlatformBranches.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    my $ListPlatformBranchesResult = $elasticbeanstalk->ListPlatformBranches(
      Filters => [
        {
          Attribute => 'MySearchFilterAttribute',         # OPTIONAL
          Operator  => 'MySearchFilterOperator',          # OPTIONAL
          Values    => [ 'MySearchFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxRecords => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPlatformBranchesResult->NextToken;
    my $PlatformBranchSummaryList =
      $ListPlatformBranchesResult->PlatformBranchSummaryList;

    # Returns a L<Paws::ElasticBeanstalk::ListPlatformBranchesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/ListPlatformBranches>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ElasticBeanstalk::SearchFilter>]

Criteria for restricting the resulting list of platform branches. The
filter is evaluated as a logical conjunction (AND) of the separate
C<SearchFilter> terms.

The following list shows valid attribute values for each of the
C<SearchFilter> terms. Most operators take a single value. The C<in>
and C<not_in> operators can take multiple values.

=over

=item *

C<Attribute = BranchName>:

=over

=item *

C<Operator>: C<=> | C<!=> | C<begins_with> | C<ends_with> | C<contains>
| C<in> | C<not_in>

=back

=item *

C<Attribute = LifecycleState>:

=over

=item *

C<Operator>: C<=> | C<!=> | C<in> | C<not_in>

=item *

C<Values>: C<beta> | C<supported> | C<deprecated> | C<retired>

=back

=item *

C<Attribute = PlatformName>:

=over

=item *

C<Operator>: C<=> | C<!=> | C<begins_with> | C<ends_with> | C<contains>
| C<in> | C<not_in>

=back

=item *

C<Attribute = TierType>:

=over

=item *

C<Operator>: C<=> | C<!=>

=item *

C<Values>: C<WebServer/Standard> | C<Worker/SQS/HTTP>

=back

=back

Array size: limited to 10 C<SearchFilter> objects.

Within each C<SearchFilter> item, the C<Values> array is limited to 10
items.



=head2 MaxRecords => Int

The maximum number of platform branch values returned in one call.



=head2 NextToken => Str

For a paginated request. Specify a token from a previous response page
to retrieve the next response page. All other parameter values must be
identical to the ones specified in the initial request.

If no C<NextToken> is specified, the first page is retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPlatformBranches in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

