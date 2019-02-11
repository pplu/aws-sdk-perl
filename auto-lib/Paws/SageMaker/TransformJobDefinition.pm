package Paws::SageMaker::TransformJobDefinition;
  use Moose;
  has BatchStrategy => (is => 'ro', isa => 'Str');
  has Environment => (is => 'ro', isa => 'Paws::SageMaker::TransformEnvironmentMap');
  has MaxConcurrentTransforms => (is => 'ro', isa => 'Int');
  has MaxPayloadInMB => (is => 'ro', isa => 'Int');
  has TransformInput => (is => 'ro', isa => 'Paws::SageMaker::TransformInput', required => 1);
  has TransformOutput => (is => 'ro', isa => 'Paws::SageMaker::TransformOutput', required => 1);
  has TransformResources => (is => 'ro', isa => 'Paws::SageMaker::TransformResources', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TransformJobDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TransformJobDefinition object:

  $service_obj->Method(Att1 => { BatchStrategy => $value, ..., TransformResources => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TransformJobDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->BatchStrategy

=head1 DESCRIPTION

Defines the input needed to run a transform job using the inference
specification specified in the algorithm.

=head1 ATTRIBUTES


=head2 BatchStrategy => Str

  A string that determines the number of records included in a single
mini-batch.

C<SingleRecord> means only one record is used per mini-batch.
C<MultiRecord> means a mini-batch is set to contain as many records
that can fit within the C<MaxPayloadInMB> limit.


=head2 Environment => L<Paws::SageMaker::TransformEnvironmentMap>

  The environment variables to set in the Docker container. We support up
to 16 key and values entries in the map.


=head2 MaxConcurrentTransforms => Int

  The maximum number of parallel requests that can be sent to each
instance in a transform job. The default value is 1.


=head2 MaxPayloadInMB => Int

  The maximum payload size allowed, in MB. A payload is the data portion
of a record (without metadata).


=head2 B<REQUIRED> TransformInput => L<Paws::SageMaker::TransformInput>

  A description of the input source and the way the transform job
consumes it.


=head2 B<REQUIRED> TransformOutput => L<Paws::SageMaker::TransformOutput>

  Identifies the Amazon S3 location where you want Amazon SageMaker to
save the results from the transform job.


=head2 B<REQUIRED> TransformResources => L<Paws::SageMaker::TransformResources>

  Identifies the ML compute instances for the transform job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

