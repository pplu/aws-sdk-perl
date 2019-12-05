
package Paws::SageMaker::ListCandidatesForAutoMLJob;
  use Moose;
  has AutoMLJobName => (is => 'ro', isa => 'Str', required => 1);
  has CandidateNameEquals => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCandidatesForAutoMLJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListCandidatesForAutoMLJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListCandidatesForAutoMLJob - Arguments for method ListCandidatesForAutoMLJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCandidatesForAutoMLJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListCandidatesForAutoMLJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCandidatesForAutoMLJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListCandidatesForAutoMLJobResponse =
      $api . sagemaker->ListCandidatesForAutoMLJob(
      AutoMLJobName       => 'MyAutoMLJobName',
      CandidateNameEquals => 'MyCandidateName',    # OPTIONAL
      MaxResults          => 1,                    # OPTIONAL
      NextToken           => 'MyNextToken',        # OPTIONAL
      SortBy              => 'CreationTime',       # OPTIONAL
      SortOrder           => 'Ascending',          # OPTIONAL
      StatusEquals        => 'Completed',          # OPTIONAL
      );

    # Results:
    my $Candidates = $ListCandidatesForAutoMLJobResponse->Candidates;
    my $NextToken  = $ListCandidatesForAutoMLJobResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListCandidatesForAutoMLJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListCandidatesForAutoMLJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoMLJobName => Str

List the Candidates created for the job by providing the job's name.



=head2 CandidateNameEquals => Str

List the Candidates for the job and filter by candidate name.



=head2 MaxResults => Int

List the job's Candidates up to a specified limit.



=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.



=head2 SortBy => Str

The parameter by which to sort the results. The default is Descending.

Valid values are: C<"CreationTime">, C<"Status">, C<"FinalObjectiveMetricValue">

=head2 SortOrder => Str

The sort order for the results. The default is Ascending.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

List the Candidates for the job and filter by status.

Valid values are: C<"Completed">, C<"InProgress">, C<"Failed">, C<"Stopped">, C<"Stopping">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCandidatesForAutoMLJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

