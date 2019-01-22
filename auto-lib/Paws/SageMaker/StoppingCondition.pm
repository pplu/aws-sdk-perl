package Paws::SageMaker::StoppingCondition;
  use Moose;
  has MaxRuntimeInSeconds => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::StoppingCondition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::StoppingCondition object:

  $service_obj->Method(Att1 => { MaxRuntimeInSeconds => $value, ..., MaxRuntimeInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::StoppingCondition object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxRuntimeInSeconds

=head1 DESCRIPTION

Specifies how long model training can run. When model training reaches
the limit, Amazon SageMaker ends the training job. Use this API to cap
model training cost.

To stop a job, Amazon SageMaker sends the algorithm the C<SIGTERM>
signal, which delays job termination for120 seconds. Algorithms might
use this 120-second window to save the model artifacts, so the results
of training is not lost.

Training algorithms provided by Amazon SageMaker automatically saves
the intermediate results of a model training job (it is best effort
case, as model might not be ready to save as some stages, for example
training just started). This intermediate data is a valid model
artifact. You can use it to create a model (C<CreateModel>).

=head1 ATTRIBUTES


=head2 MaxRuntimeInSeconds => Int

  The maximum length of time, in seconds, that the training job can run.
If model training does not complete during this time, Amazon SageMaker
ends the job. If value is not specified, default value is 1 day.
Maximum value is 28 days.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

