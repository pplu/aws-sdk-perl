package Paws::Datasync::TaskListEntry;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TaskArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::TaskListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::TaskListEntry object:

  $service_obj->Method(Att1 => { Name => $value, ..., TaskArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::TaskListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Represents a single entry in a list of tasks. C<TaskListEntry> returns
an array that contains a list of tasks when the ListTasks operation is
called. A task includes the source and destination file systems to sync
and the options to use for the tasks.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the task.


=head2 Status => Str

  The status of the task.


=head2 TaskArn => Str

  The Amazon Resource Name (ARN) of the task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

