
package Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJob;
  use Moose;
  has HyperParameterTuningJobName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTrainingJobsForHyperParameterTuningJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJob - Arguments for method ListTrainingJobsForHyperParameterTuningJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTrainingJobsForHyperParameterTuningJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListTrainingJobsForHyperParameterTuningJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTrainingJobsForHyperParameterTuningJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListTrainingJobsForHyperParameterTuningJobResponse =
      $api . sagemaker->ListTrainingJobsForHyperParameterTuningJob(
      HyperParameterTuningJobName => 'MyHyperParameterTuningJobName',
      MaxResults                  => 1,                               # OPTIONAL
      NextToken                   => 'MyNextToken',                   # OPTIONAL
      SortBy                      => 'Name',                          # OPTIONAL
      SortOrder                   => 'Ascending',                     # OPTIONAL
      StatusEquals                => 'InProgress',                    # OPTIONAL
      );

    # Results:
    my $NextToken =
      $ListTrainingJobsForHyperParameterTuningJobResponse->NextToken;
    my $TrainingJobSummaries =
      $ListTrainingJobsForHyperParameterTuningJobResponse->TrainingJobSummaries;

# Returns a L<Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListTrainingJobsForHyperParameterTuningJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HyperParameterTuningJobName => Str

The name of the tuning job whose training jobs you want to list.



=head2 MaxResults => Int

The maximum number of training jobs to return. The default value is 10.



=head2 NextToken => Str

If the result of the previous
C<ListTrainingJobsForHyperParameterTuningJob> request was truncated,
the response includes a C<NextToken>. To retrieve the next set of
training jobs, use the token in the next request.



=head2 SortBy => Str

The field to sort results by. The default is C<Name>.

If the value of this field is C<FinalObjectiveMetricValue>, any
training jobs that did not return an objective metric are not listed.

Valid values are: C<"Name">, C<"CreationTime">, C<"Status">, C<"FinalObjectiveMetricValue">

=head2 SortOrder => Str

The sort order for results. The default is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

A filter that returns only training jobs with the specified status.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTrainingJobsForHyperParameterTuningJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

