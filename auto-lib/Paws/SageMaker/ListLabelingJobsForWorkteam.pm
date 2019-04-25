
package Paws::SageMaker::ListLabelingJobsForWorkteam;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has JobReferenceCodeContains => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has WorkteamArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLabelingJobsForWorkteam');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListLabelingJobsForWorkteamResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListLabelingJobsForWorkteam - Arguments for method ListLabelingJobsForWorkteam on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLabelingJobsForWorkteam on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListLabelingJobsForWorkteam.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLabelingJobsForWorkteam.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListLabelingJobsForWorkteamResponse =
      $api . sagemaker->ListLabelingJobsForWorkteam(
      WorkteamArn              => 'MyWorkteamArn',
      CreationTimeAfter        => '1970-01-01T01:00:00',           # OPTIONAL
      CreationTimeBefore       => '1970-01-01T01:00:00',           # OPTIONAL
      JobReferenceCodeContains => 'MyJobReferenceCodeContains',    # OPTIONAL
      MaxResults               => 1,                               # OPTIONAL
      NextToken                => 'MyNextToken',                   # OPTIONAL
      SortBy                   => 'CreationTime',                  # OPTIONAL
      SortOrder                => 'Ascending',                     # OPTIONAL
      );

    # Results:
    my $LabelingJobSummaryList =
      $ListLabelingJobsForWorkteamResponse->LabelingJobSummaryList;
    my $NextToken = $ListLabelingJobsForWorkteamResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListLabelingJobsForWorkteamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListLabelingJobsForWorkteam>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only labeling jobs created after the specified
time (timestamp).



=head2 CreationTimeBefore => Str

A filter that returns only labeling jobs created before the specified
time (timestamp).



=head2 JobReferenceCodeContains => Str

A filter the limits jobs to only the ones whose job reference code
contains the specified string.



=head2 MaxResults => Int

The maximum number of labeling jobs to return in each page of the
response.



=head2 NextToken => Str

If the result of the previous C<ListLabelingJobsForWorkteam> request
was truncated, the response includes a C<NextToken>. To retrieve the
next set of labeling jobs, use the token in the next request.



=head2 SortBy => Str

The field to sort results by. The default is C<CreationTime>.

Valid values are: C<"CreationTime">

=head2 SortOrder => Str

The sort order for results. The default is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 B<REQUIRED> WorkteamArn => Str

The Amazon Resource Name (ARN) of the work team for which you want to
see labeling jobs for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLabelingJobsForWorkteam in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

