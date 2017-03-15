package Paws::CloudWatchEvents::EcsParameters;
  use Moose;
  has TaskCount => (is => 'ro', isa => 'Int');
  has TaskDefinitionArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::EcsParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::EcsParameters object:

  $service_obj->Method(Att1 => { TaskCount => $value, ..., TaskDefinitionArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::EcsParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->TaskCount

=head1 DESCRIPTION

The custom parameters to be used when the target is an Amazon ECS
cluster.

=head1 ATTRIBUTES


=head2 TaskCount => Int

  The number of tasks to create based on the C<TaskDefinition>. The
default is one.


=head2 B<REQUIRED> TaskDefinitionArn => Str

  The ARN of the task definition to use if the event target is an Amazon
ECS cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

