# Generated from default/object.tt
package Paws::SageMaker::StoppingCondition;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::SageMaker::Types qw//;
  has MaxRuntimeInSeconds => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxRuntimeInSeconds' => {
                                          'type' => 'Int'
                                        }
             }
}
;
    return $Params_map;
  }


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

Specifies a limit to how long a model training or compilation job can
run. When the job reaches the time limit, Amazon SageMaker ends the
training or compilation job. Use this API to cap model training costs.

To stop a job, Amazon SageMaker sends the algorithm the C<SIGTERM>
signal, which delays job termination for 120 seconds. Algorithms can
use this 120-second window to save the model artifacts, so the results
of training are not lost.

The training algorithms provided by Amazon SageMaker automatically save
the intermediate results of a model training job when possible. This
attempt to save artifacts is only a best effort case as model might not
be in a state from which it can be saved. For example, if training has
just started, the model might not be ready to save. When saved, this
intermediate data is a valid model artifact. You can use it to create a
model with C<CreateModel>.

The Neural Topic Model (NTM) currently does not support saving
intermediate model artifacts. When training NTMs, make sure that the
maximum runtime is sufficient for the training job to complete.

=head1 ATTRIBUTES


=head2 MaxRuntimeInSeconds => Int

  The maximum length of time, in seconds, that the training or
compilation job can run. If job does not complete during this time,
Amazon SageMaker ends the job. If value is not specified, default value
is 1 day. The maximum value is 28 days.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

