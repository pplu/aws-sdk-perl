package Paws::ECS::ServiceEvent;
  use Moose;
  has createdAt => (is => 'ro', isa => 'Str');
  has id => (is => 'ro', isa => 'Str');
  has message => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ServiceEvent

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ServiceEvent object:

  $service_obj->Method(Att1 => { createdAt => $value, ..., message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ServiceEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->createdAt

=head1 ATTRIBUTES

=head2 createdAt => Str

  

The Unix time in seconds and milliseconds when the event was triggered.










=head2 id => Str

  

The ID string of the event.










=head2 message => Str

  

The event message.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

