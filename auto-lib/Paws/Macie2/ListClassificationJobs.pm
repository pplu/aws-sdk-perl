
package Paws::Macie2::ListClassificationJobs;
  use Moose;
  has FilterCriteria => (is => 'ro', isa => 'Paws::Macie2::ListJobsFilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortCriteria => (is => 'ro', isa => 'Paws::Macie2::ListJobsSortCriteria', traits => ['NameInRequest'], request_name => 'sortCriteria');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClassificationJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::ListClassificationJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListClassificationJobs - Arguments for method ListClassificationJobs on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClassificationJobs on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method ListClassificationJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClassificationJobs.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $ListClassificationJobsResponse = $macie2->ListClassificationJobs(
      FilterCriteria => {
        Excludes => [
          {
            Comparator => 'EQ'
            , # values: EQ, GT, GTE, LT, LTE, NE, CONTAINS, STARTS_WITH; OPTIONAL
            Key =>
              'jobType', # values: jobType, jobStatus, createdAt, name; OPTIONAL
            Values => [ 'My__string', ... ],    # OPTIONAL
          },
          ...
        ],                                      # OPTIONAL
        Includes => [
          {
            Comparator => 'EQ'
            , # values: EQ, GT, GTE, LT, LTE, NE, CONTAINS, STARTS_WITH; OPTIONAL
            Key =>
              'jobType', # values: jobType, jobStatus, createdAt, name; OPTIONAL
            Values => [ 'My__string', ... ],    # OPTIONAL
          },
          ...
        ],                                      # OPTIONAL
      },    # OPTIONAL
      MaxResults   => 1,               # OPTIONAL
      NextToken    => 'My__string',    # OPTIONAL
      SortCriteria => {
        AttributeName =>
          'createdAt',   # values: createdAt, jobStatus, name, jobType; OPTIONAL
        OrderBy => 'ASC',    # values: ASC, DESC; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Items     = $ListClassificationJobsResponse->Items;
    my $NextToken = $ListClassificationJobsResponse->NextToken;

    # Returns a L<Paws::Macie2::ListClassificationJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/ListClassificationJobs>

=head1 ATTRIBUTES


=head2 FilterCriteria => L<Paws::Macie2::ListJobsFilterCriteria>

The criteria to use to filter the results.



=head2 MaxResults => Int

The maximum number of items to include in each page of the response.



=head2 NextToken => Str

The nextToken string that specifies which page of results to return in
a paginated response.



=head2 SortCriteria => L<Paws::Macie2::ListJobsSortCriteria>

The criteria to use to sort the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClassificationJobs in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

