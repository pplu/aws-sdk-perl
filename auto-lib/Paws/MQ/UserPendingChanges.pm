package Paws::MQ::UserPendingChanges;
  use Moose;
  has ConsoleAccess => (is => 'ro', isa => 'Bool', request_name => 'consoleAccess', traits => ['NameInRequest']);
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'groups', traits => ['NameInRequest']);
  has PendingChange => (is => 'ro', isa => 'Str', request_name => 'pendingChange', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UserPendingChanges

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::UserPendingChanges object:

  $service_obj->Method(Att1 => { ConsoleAccess => $value, ..., PendingChange => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::UserPendingChanges object:

  $result = $service_obj->Method(...);
  $result->Att1->ConsoleAccess

=head1 DESCRIPTION

Returns information about the status of the changes pending for the
ActiveMQ user.

=head1 ATTRIBUTES


=head2 ConsoleAccess => Bool

  Enables access to the the ActiveMQ Web Console for the ActiveMQ user.


=head2 Groups => ArrayRef[Str|Undef]

  The list of groups (20 maximum) to which the ActiveMQ user belongs.
This value can contain only alphanumeric characters, dashes, periods,
underscores, and tildes (- . _ ~). This value must be 2-100 characters
long.


=head2 PendingChange => Str

  Required. The type of change pending for the ActiveMQ user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

