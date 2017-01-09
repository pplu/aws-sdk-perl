package Paws::GameLift::Event;
  use Moose;
  has EventCode => (is => 'ro', isa => 'Str');
  has EventId => (is => 'ro', isa => 'Str');
  has EventTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::Event object:

  $service_obj->Method(Att1 => { EventCode => $value, ..., ResourceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->EventCode

=head1 DESCRIPTION

Log entry describing an event involving Amazon GameLift resources (such
as a fleet). In addition to tracking activity, event codes and messages
can provide additional information for troubleshooting and debugging
problems.

=head1 ATTRIBUTES


=head2 EventCode => Str

  Type of event being logged.


=head2 EventId => Str

  Unique identifier for a fleet event.


=head2 EventTime => Str

  Time stamp indicating when this event occurred. Format is a number
expressed in Unix time as milliseconds (ex: "1469498468.057").


=head2 Message => Str

  Additional information related to the event.


=head2 ResourceId => Str

  Unique identifier for the resource, such as a fleet ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

