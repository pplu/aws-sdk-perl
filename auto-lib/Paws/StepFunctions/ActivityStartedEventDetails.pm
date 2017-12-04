package Paws::StepFunctions::ActivityStartedEventDetails;
  use Moose;
  has WorkerName => (is => 'ro', isa => 'Str', request_name => 'workerName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ActivityStartedEventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::ActivityStartedEventDetails object:

  $service_obj->Method(Att1 => { WorkerName => $value, ..., WorkerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::ActivityStartedEventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->WorkerName

=head1 DESCRIPTION

Contains details about the start of an activity during an execution.

=head1 ATTRIBUTES


=head2 WorkerName => Str

  The name of the worker that the task is assigned to. These names are
provided by the workers when calling GetActivityTask.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

