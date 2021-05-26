
package Paws::ComprehendMedical::ListPHIDetectionJobs;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::ComprehendMedical::ComprehendMedicalAsyncJobFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPHIDetectionJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComprehendMedical::ListPHIDetectionJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::ListPHIDetectionJobs - Arguments for method ListPHIDetectionJobs on L<Paws::ComprehendMedical>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPHIDetectionJobs on the
L<AWS Comprehend Medical|Paws::ComprehendMedical> service. Use the attributes of this class
as arguments to method ListPHIDetectionJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPHIDetectionJobs.

=head1 SYNOPSIS

    my $comprehendmedical = Paws->service('ComprehendMedical');
    my $ListPHIDetectionJobsResponse = $comprehendmedical->ListPHIDetectionJobs(
      Filter => {
        JobName   => 'MyJobName',    # min: 1, max: 256; OPTIONAL
        JobStatus => 'SUBMITTED'
        , # values: SUBMITTED, IN_PROGRESS, COMPLETED, PARTIAL_SUCCESS, FAILED, STOP_REQUESTED, STOPPED; OPTIONAL
        SubmitTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        SubmitTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ComprehendMedicalAsyncJobPropertiesList =
      $ListPHIDetectionJobsResponse->ComprehendMedicalAsyncJobPropertiesList;
    my $NextToken = $ListPHIDetectionJobsResponse->NextToken;

    # Returns a L<Paws::ComprehendMedical::ListPHIDetectionJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical/ListPHIDetectionJobs>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::ComprehendMedical::ComprehendMedicalAsyncJobFilter>

Filters the jobs that are returned. You can filter jobs based on their
names, status, or the date and time that they were submitted. You can
only set one filter at a time.



=head2 MaxResults => Int

The maximum number of results to return in each page. The default is
100.



=head2 NextToken => Str

Identifies the next page of results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPHIDetectionJobs in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

