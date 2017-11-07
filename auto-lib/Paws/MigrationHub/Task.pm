package Paws::MigrationHub::Task;
  use Moose;
  has ProgressPercent => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StatusDetail => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::Task

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MigrationHub::Task object:

  $service_obj->Method(Att1 => { ProgressPercent => $value, ..., StatusDetail => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MigrationHub::Task object:

  $result = $service_obj->Method(...);
  $result->Att1->ProgressPercent

=head1 DESCRIPTION

Task object encapsulating task information.

=head1 ATTRIBUTES


=head2 ProgressPercent => Int

  Indication of the percentage completion of the task.


=head2 B<REQUIRED> Status => Str

  Status of the task - Not Started, In-Progress, Complete.


=head2 StatusDetail => Str

  Details of task status as notified by a migration tool. A tool might
use this field to provide clarifying information about the status that
is unique to that tool or that explains an error state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

