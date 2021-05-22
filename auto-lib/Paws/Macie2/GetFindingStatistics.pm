
package Paws::Macie2::GetFindingStatistics;
  use Moose;
  has FindingCriteria => (is => 'ro', isa => 'Paws::Macie2::FindingCriteria', traits => ['NameInRequest'], request_name => 'findingCriteria');
  has GroupBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupBy', required => 1);
  has Size => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'size');
  has SortCriteria => (is => 'ro', isa => 'Paws::Macie2::FindingStatisticsSortCriteria', traits => ['NameInRequest'], request_name => 'sortCriteria');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFindingStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findings/statistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::GetFindingStatisticsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetFindingStatistics - Arguments for method GetFindingStatistics on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFindingStatistics on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method GetFindingStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFindingStatistics.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $GetFindingStatisticsResponse = $macie2->GetFindingStatistics(
      GroupBy         => 'resourcesAffected.s3Bucket.name',
      FindingCriteria => {
        Criterion => {
          'My__string' => {
            Eq           => [ 'My__string', ... ],    # OPTIONAL
            EqExactMatch => [ 'My__string', ... ],    # OPTIONAL
            Gt  => 1,                                 # OPTIONAL
            Gte => 1,                                 # OPTIONAL
            Lt  => 1,                                 # OPTIONAL
            Lte => 1,                                 # OPTIONAL
            Neq => [ 'My__string', ... ],             # OPTIONAL
          },
        },    # OPTIONAL
      },    # OPTIONAL
      Size         => 1,    # OPTIONAL
      SortCriteria => {
        AttributeName => 'groupKey',    # values: groupKey, count; OPTIONAL
        OrderBy       => 'ASC',         # values: ASC, DESC; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $CountsByGroup = $GetFindingStatisticsResponse->CountsByGroup;

    # Returns a L<Paws::Macie2::GetFindingStatisticsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/GetFindingStatistics>

=head1 ATTRIBUTES


=head2 FindingCriteria => L<Paws::Macie2::FindingCriteria>

The criteria to use to filter the query results.



=head2 B<REQUIRED> GroupBy => Str

The finding property to use to group the query results. Valid values
are:

=over

=item *

classificationDetails.jobId - The unique identifier for the
classification job that produced the finding.

=item *

resourcesAffected.s3Bucket.name - The name of the S3 bucket that the
finding applies to.

=item *

severity.description - The severity level of the finding, such as High
or Medium.

=item *

type - The type of finding, such as Policy:IAMUser/S3BucketPublic and
SensitiveData:S3Object/Personal.

=back


Valid values are: C<"resourcesAffected.s3Bucket.name">, C<"type">, C<"classificationDetails.jobId">, C<"severity.description">

=head2 Size => Int

The maximum number of items to include in each page of the response.



=head2 SortCriteria => L<Paws::Macie2::FindingStatisticsSortCriteria>

The criteria to use to sort the query results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFindingStatistics in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

