package Paws::EC2::TerminateConnectionStatus;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ClientVpnConnectionStatus/;
  has ConnectionId => (is => 'ro', isa => Str);
  has CurrentStatus => (is => 'ro', isa => EC2_ClientVpnConnectionStatus);
  has PreviousStatus => (is => 'ro', isa => EC2_ClientVpnConnectionStatus);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'PreviousStatus' => {
                                     'class' => 'Paws::EC2::ClientVpnConnectionStatus',
                                     'type' => 'EC2_ClientVpnConnectionStatus'
                                   },
               'CurrentStatus' => {
                                    'class' => 'Paws::EC2::ClientVpnConnectionStatus',
                                    'type' => 'EC2_ClientVpnConnectionStatus'
                                  },
               'ConnectionId' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'PreviousStatus' => 'previousStatus',
                       'CurrentStatus' => 'currentStatus',
                       'ConnectionId' => 'connectionId'
                     }
}
;
      return $Params_map;
    }

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


=head2 CurrentStatus => EC2_ClientVpnConnectionStatus

  A message about the status of the client connection, if applicable.


=head2 PreviousStatus => EC2_ClientVpnConnectionStatus

  The state of the client connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
