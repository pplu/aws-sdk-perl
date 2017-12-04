package Paws::MQ::User;
  use Moose;
  has ConsoleAccess => (is => 'ro', isa => 'Bool', request_name => 'consoleAccess', traits => ['NameInRequest']);
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'groups', traits => ['NameInRequest']);
  has Password => (is => 'ro', isa => 'Str', request_name => 'password', traits => ['NameInRequest']);
  has Username => (is => 'ro', isa => 'Str', request_name => 'username', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::User

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::User object:

  $service_obj->Method(Att1 => { ConsoleAccess => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::User object:

  $result = $service_obj->Method(...);
  $result->Att1->ConsoleAccess

=head1 DESCRIPTION

An ActiveMQ user associated with the broker.

=head1 ATTRIBUTES


=head2 ConsoleAccess => Bool

  Enables access to the the ActiveMQ Web Console for the ActiveMQ user.


=head2 Groups => ArrayRef[Str|Undef]

  The list of groups (20 maximum) to which the ActiveMQ user belongs.
This value can contain only alphanumeric characters, dashes, periods,
underscores, and tildes (- . _ ~). This value must be 2-100 characters
long.


=head2 Password => Str

  Required. The password of the ActiveMQ user. This value must be at
least 12 characters long, must contain at least 4 unique characters,
and must not contain commas.


=head2 Username => Str

  Required. The username of the ActiveMQ user. This value can contain
only alphanumeric characters, dashes, periods, underscores, and tildes
(- . _ ~). This value must be 2-100 characters long.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

