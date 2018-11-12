package Paws::CloudWatchEvents::BatchParameters;
  use Moose;
  has ArrayProperties => (is => 'ro', isa => 'Paws::CloudWatchEvents::BatchArrayProperties');
  has JobDefinition => (is => 'ro', isa => 'Str', required => 1);
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has RetryStrategy => (is => 'ro', isa => 'Paws::CloudWatchEvents::BatchRetryStrategy');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::BatchParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::BatchParameters object:

  $service_obj->Method(Att1 => { ArrayProperties => $value, ..., RetryStrategy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::BatchParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->ArrayProperties

=head1 DESCRIPTION

The custom parameters to be used when the target is an AWS Batch job.

=head1 ATTRIBUTES


=head2 ArrayProperties => L<Paws::CloudWatchEvents::BatchArrayProperties>

  The array properties for the submitted job, such as the size of the
array. The array size can be between 2 and 10,000. If you specify array
properties for a job, it becomes an array job. This parameter is used
only if the target is an AWS Batch job.


=head2 B<REQUIRED> JobDefinition => Str

  The ARN or name of the job definition to use if the event target is an
AWS Batch job. This job definition must already exist.


=head2 B<REQUIRED> JobName => Str

  The name to use for this execution of the job, if the target is an AWS
Batch job.


=head2 RetryStrategy => L<Paws::CloudWatchEvents::BatchRetryStrategy>

  The retry strategy to use for failed jobs, if the target is an AWS
Batch job. The retry strategy is the number of times to retry the
failed job execution. Valid values are 1E<ndash>10. When you specify a
retry strategy here, it overrides the retry strategy defined in the job
definition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

