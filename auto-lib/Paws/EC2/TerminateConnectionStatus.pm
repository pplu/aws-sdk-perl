package Paws::EC2::TerminateConnectionStatus;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', request_name => 'connectionId', traits => ['NameInRequest']);
  has CurrentStatus => (is => 'ro', isa => 'Paws::EC2::ClientVpnConnectionStatus', request_name => 'currentStatus', traits => ['NameInRequest']);
  has PreviousStatus => (is => 'ro', isa => 'Paws::EC2::ClientVpnConnectionStatus', request_name => 'previousStatus', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TerminateConnectionStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TerminateConnectionStatus object:

  $service_obj->Method(Att1 => { ConnectionId => $value, ..., PreviousStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TerminateConnectionStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ConnectionId => Str

  The ID of the client connection.


=head2 CurrentStatus => L<Paws::EC2::ClientVpnConnectionStatus>

  A message about the status of the client connection, if applicable.


=head2 PreviousStatus => L<Paws::EC2::ClientVpnConnectionStatus>

  The state of the client connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
