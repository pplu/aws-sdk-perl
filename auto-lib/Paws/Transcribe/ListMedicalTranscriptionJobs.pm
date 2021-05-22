
package Paws::Transcribe::ListMedicalTranscriptionJobs;
  use Moose;
  has JobNameContains => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMedicalTranscriptionJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::ListMedicalTranscriptionJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListMedicalTranscriptionJobs - Arguments for method ListMedicalTranscriptionJobs on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMedicalTranscriptionJobs on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method ListMedicalTranscriptionJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMedicalTranscriptionJobs.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $ListMedicalTranscriptionJobsResponse =
      $transcribe->ListMedicalTranscriptionJobs(
      JobNameContains => 'MyTranscriptionJobName',    # OPTIONAL
      MaxResults      => 1,                           # OPTIONAL
      NextToken       => 'MyNextToken',               # OPTIONAL
      Status          => 'QUEUED',                    # OPTIONAL
      );

    # Results:
    my $MedicalTranscriptionJobSummaries =
      $ListMedicalTranscriptionJobsResponse->MedicalTranscriptionJobSummaries;
    my $NextToken = $ListMedicalTranscriptionJobsResponse->NextToken;
    my $Status    = $ListMedicalTranscriptionJobsResponse->Status;

   # Returns a L<Paws::Transcribe::ListMedicalTranscriptionJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/ListMedicalTranscriptionJobs>

=head1 ATTRIBUTES


=head2 JobNameContains => Str

When specified, the jobs returned in the list are limited to jobs whose
name contains the specified string.



=head2 MaxResults => Int

The maximum number of medical transcription jobs to return in the
response. IF there are fewer results in the list, this response
contains only the actual results.



=head2 NextToken => Str

If you a receive a truncated result in the previous request of
C<ListMedicalTranscriptionJobs>, include C<NextToken> to fetch the next
set of jobs.



=head2 Status => Str

When specified, returns only medical transcription jobs with the
specified status. Jobs are ordered by creation date, with the newest
jobs returned first. If you don't specify a status, Amazon Transcribe
Medical returns all transcription jobs ordered by creation date.

Valid values are: C<"QUEUED">, C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMedicalTranscriptionJobs in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

