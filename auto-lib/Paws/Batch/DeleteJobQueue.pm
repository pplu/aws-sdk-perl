
package Paws::Batch::DeleteJobQueue;
  use Moose;
  has JobQueue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobQueue', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteJobQueue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/deletejobqueue');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::DeleteJobQueueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::DeleteJobQueue - Arguments for method DeleteJobQueue on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteJobQueue on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method DeleteJobQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteJobQueue.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To delete a job queue
    # This example deletes the GPGPU job queue.
    my $DeleteJobQueueResponse = $batch->DeleteJobQueue(
      {
        'JobQueue' => 'GPGPU'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/DeleteJobQueue>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobQueue => Str

The short name or full Amazon Resource Name (ARN) of the queue to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteJobQueue in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

