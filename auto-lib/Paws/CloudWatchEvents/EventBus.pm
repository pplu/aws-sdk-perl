package Paws::CloudWatchEvents::EventBus;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::EventBus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::EventBus object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Policy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::EventBus object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An event bus receives events from a source and routes them to rules
associated with that event bus. Your account's default event bus
receives rules from AWS services. A custom event bus can receive rules
from AWS services as well as your custom applications and services. A
partner event bus receives events from an event source created by an
SaaS partner. These events come from the partners services or
applications.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the event bus.


=head2 Name => Str

  The name of the event bus.


=head2 Policy => Str

  The permissions policy of the event bus, describing which other AWS
accounts can write events to this event bus.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

