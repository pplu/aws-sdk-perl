
package Paws::Batch::TerminateJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/terminatejob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::TerminateJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::TerminateJob - Arguments for method TerminateJob on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TerminateJob on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method TerminateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TerminateJob.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To terminate a job
    # This example terminates a job with the specified job ID.
    my $TerminateJobResponse = $batch->TerminateJob(
      {
        'JobId'  => '61e743ed-35e4-48da-b2de-5c8333821c84',
        'Reason' => 'Terminating job.'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/TerminateJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The AWS Batch job ID of the job to terminate.



=head2 B<REQUIRED> Reason => Str

A message to attach to the job that explains the reason for canceling
it. This message is returned by future DescribeJobs operations on the
job. This message is also recorded in the AWS Batch activity logs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TerminateJob in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

