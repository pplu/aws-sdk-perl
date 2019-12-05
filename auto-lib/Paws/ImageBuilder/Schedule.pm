package Paws::ImageBuilder::Schedule;
  use Moose;
  has PipelineExecutionStartCondition => (is => 'ro', isa => 'Str', request_name => 'pipelineExecutionStartCondition', traits => ['NameInRequest']);
  has ScheduleExpression => (is => 'ro', isa => 'Str', request_name => 'scheduleExpression', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::Schedule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::Schedule object:

  $service_obj->Method(Att1 => { PipelineExecutionStartCondition => $value, ..., ScheduleExpression => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::Schedule object:

  $result = $service_obj->Method(...);
  $result->Att1->PipelineExecutionStartCondition

=head1 DESCRIPTION

A schedule configures how often and when a pipeline will automatically
create a new image.

=head1 ATTRIBUTES


=head2 PipelineExecutionStartCondition => Str

  The condition configures when the pipeline should trigger a new image
build.


=head2 ScheduleExpression => Str

  The expression determines how often a pipeline starts the creation of
new images.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

