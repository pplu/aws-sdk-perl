# Generated from json/callargs_class.tt

package Paws::Transcribe::ListTranscriptionJobs;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Transcribe::Types qw//;
  has JobNameContains => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Status => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTranscriptionJobs');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Transcribe::ListTranscriptionJobsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Status' => {
                             'type' => 'Str'
                           },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'JobNameContains' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListTranscriptionJobs - Arguments for method ListTranscriptionJobs on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTranscriptionJobs on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method ListTranscriptionJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTranscriptionJobs.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $ListTranscriptionJobsResponse = $transcribe->ListTranscriptionJobs(
      JobNameContains => 'MyTranscriptionJobName',    # OPTIONAL
      MaxResults      => 1,                           # OPTIONAL
      NextToken       => 'MyNextToken',               # OPTIONAL
      Status          => 'IN_PROGRESS',               # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTranscriptionJobsResponse->NextToken;
    my $Status    = $ListTranscriptionJobsResponse->Status;
    my $TranscriptionJobSummaries =
      $ListTranscriptionJobsResponse->TranscriptionJobSummaries;

    # Returns a L<Paws::Transcribe::ListTranscriptionJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/ListTranscriptionJobs>

=head1 ATTRIBUTES


=head2 JobNameContains => Str

When specified, the jobs returned in the list are limited to jobs whose
name contains the specified string.



=head2 MaxResults => Int

The maximum number of jobs to return in the response. If there are
fewer results in the list, this response contains only the actual
results.



=head2 NextToken => Str

If the result of the previous request to C<ListTranscriptionJobs> was
truncated, include the C<NextToken> to fetch the next set of jobs.



=head2 Status => Str

When specified, returns only transcription jobs with the specified
status. Jobs are ordered by creation date, with the newest jobs
returned first. If you donE<rsquo>t specify a status, Amazon Transcribe
returns all transcription jobs ordered by creation date.

Valid values are: C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTranscriptionJobs in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

