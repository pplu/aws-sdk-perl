
package Paws::IoT::ListJobExecutionsForJob;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw//;
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Status => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListJobExecutionsForJob');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/jobs/{jobId}/things');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::ListJobExecutionsForJobResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'JobId' => 1
                  },
  'ParamInQuery' => {
                      'Status' => 'status',
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken'
                    },
  'types' => {
               'JobId' => {
                            'type' => 'Str'
                          },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Status' => {
                             'type' => 'Str'
                           }
             },
  'ParamInURI' => {
                    'JobId' => 'jobId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListJobExecutionsForJob - Arguments for method ListJobExecutionsForJob on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobExecutionsForJob on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListJobExecutionsForJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobExecutionsForJob.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListJobExecutionsForJobResponse = $iot->ListJobExecutionsForJob(
      JobId      => 'MyJobId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      Status     => 'QUEUED',         # OPTIONAL
    );

    # Results:
    my $ExecutionSummaries =
      $ListJobExecutionsForJobResponse->ExecutionSummaries;
    my $NextToken = $ListJobExecutionsForJobResponse->NextToken;

    # Returns a L<Paws::IoT::ListJobExecutionsForJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListJobExecutionsForJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The unique identifier you assigned to this job when it was created.



=head2 MaxResults => Int

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token to retrieve the next set of results.



=head2 Status => Str

The status of the job.

Valid values are: C<"QUEUED">, C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">, C<"TIMED_OUT">, C<"REJECTED">, C<"REMOVED">, C<"CANCELED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobExecutionsForJob in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

