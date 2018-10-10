package Paws::SSM::ScheduledWindowExecution;
  use Moose;
  has ExecutionTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has WindowId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ScheduledWindowExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ScheduledWindowExecution object:

  $service_obj->Method(Att1 => { ExecutionTime => $value, ..., WindowId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ScheduledWindowExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionTime

=head1 DESCRIPTION

Information about a scheduled execution for a Maintenance Window.

=head1 ATTRIBUTES


=head2 ExecutionTime => Str

  The time, in ISO-8601 Extended format, that the Maintenance Window is
scheduled to be run.


=head2 Name => Str

  The name of the Maintenance Window to be run.


=head2 WindowId => Str

  The ID of the Maintenance Window to be run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

