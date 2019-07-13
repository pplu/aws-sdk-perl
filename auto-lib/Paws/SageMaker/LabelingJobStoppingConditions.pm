package Paws::SageMaker::LabelingJobStoppingConditions;
  use Moose;
  has MaxHumanLabeledObjectCount => (is => 'ro', isa => 'Int');
  has MaxPercentageOfInputDatasetLabeled => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::LabelingJobStoppingConditions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::LabelingJobStoppingConditions object:

  $service_obj->Method(Att1 => { MaxHumanLabeledObjectCount => $value, ..., MaxPercentageOfInputDatasetLabeled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::LabelingJobStoppingConditions object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxHumanLabeledObjectCount

=head1 DESCRIPTION

A set of conditions for stopping a labeling job. If any of the
conditions are met, the job is automatically stopped. You can use these
conditions to control the cost of data labeling.

=head1 ATTRIBUTES


=head2 MaxHumanLabeledObjectCount => Int

  The maximum number of objects that can be labeled by human workers.


=head2 MaxPercentageOfInputDatasetLabeled => Int

  The maximum number of input data objects that should be labeled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

