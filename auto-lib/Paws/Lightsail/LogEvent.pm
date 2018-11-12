package Paws::Lightsail::LogEvent;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::LogEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::LogEvent object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::LogEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Describes a database log event.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The timestamp when the database log event was created.


=head2 Message => Str

  The message of the database log event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

