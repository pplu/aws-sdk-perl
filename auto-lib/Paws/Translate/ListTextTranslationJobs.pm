
package Paws::Translate::ListTextTranslationJobs;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Translate::TextTranslationJobFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTextTranslationJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::ListTextTranslationJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::ListTextTranslationJobs - Arguments for method ListTextTranslationJobs on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTextTranslationJobs on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method ListTextTranslationJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTextTranslationJobs.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $ListTextTranslationJobsResponse = $translate->ListTextTranslationJobs(
      Filter => {
        JobName   => 'MyJobName',    # min: 1, max: 256; OPTIONAL
        JobStatus => 'SUBMITTED'
        , # values: SUBMITTED, IN_PROGRESS, COMPLETED, COMPLETED_WITH_ERROR, FAILED, STOP_REQUESTED, STOPPED; OPTIONAL
        SubmittedAfterTime  => '1970-01-01T01:00:00',    # OPTIONAL
        SubmittedBeforeTime => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTextTranslationJobsResponse->NextToken;
    my $TextTranslationJobPropertiesList =
      $ListTextTranslationJobsResponse->TextTranslationJobPropertiesList;

    # Returns a L<Paws::Translate::ListTextTranslationJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/ListTextTranslationJobs>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Translate::TextTranslationJobFilter>

The parameters that specify which batch translation jobs to retrieve.
Filters include job name, job status, and submission time. You can only
set one filter at a time.



=head2 MaxResults => Int

The maximum number of results to return in each page. The default value
is 100.



=head2 NextToken => Str

The token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTextTranslationJobs in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

