
package Paws::Batch::CancelJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/canceljob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::CancelJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::CancelJob - Arguments for method CancelJob on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelJob on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method CancelJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelJob.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To cancel a job
    # This example cancels a job with the specified job ID.
    my $CancelJobResponse = $batch->CancelJob(
      {
        'JobId'  => '1d828f65-7a4d-42e8-996d-3b900ed59dc4',
        'Reason' => 'Cancelling job.'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/CancelJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The AWS Batch job ID of the job to cancel.



=head2 B<REQUIRED> Reason => Str

A message to attach to the job that explains the reason for canceling
it. This message is returned by future DescribeJobs operations on the
job. This message is also recorded in the AWS Batch activity logs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelJob in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

