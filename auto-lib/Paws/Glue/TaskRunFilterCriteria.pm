package Paws::Glue::TaskRunFilterCriteria;
  use Moose;
  has StartedAfter => (is => 'ro', isa => 'Str');
  has StartedBefore => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TaskRunType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::TaskRunFilterCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::TaskRunFilterCriteria object:

  $service_obj->Method(Att1 => { StartedAfter => $value, ..., TaskRunType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::TaskRunFilterCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->StartedAfter

=head1 DESCRIPTION

The criteria that are used to filter the task runs for the machine
learning transform.

=head1 ATTRIBUTES


=head2 StartedAfter => Str

  Filter on task runs started after this date.


=head2 StartedBefore => Str

  Filter on task runs started before this date.


=head2 Status => Str

  The current status of the task run.


=head2 TaskRunType => Str

  The type of task run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

