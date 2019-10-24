# Generated from default/object.tt
package Paws::GuardDuty::NetworkConnectionAction;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::GuardDuty::Types qw/GuardDuty_RemotePortDetails GuardDuty_RemoteIpDetails GuardDuty_LocalPortDetails/;
  has Blocked => (is => 'ro', isa => Bool);
  has ConnectionDirection => (is => 'ro', isa => Str);
  has LocalPortDetails => (is => 'ro', isa => GuardDuty_LocalPortDetails);
  has Protocol => (is => 'ro', isa => Str);
  has RemoteIpDetails => (is => 'ro', isa => GuardDuty_RemoteIpDetails);
  has RemotePortDetails => (is => 'ro', isa => GuardDuty_RemotePortDetails);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Blocked' => {
                              'type' => 'Bool'
                            },
               'RemotePortDetails' => {
                                        'class' => 'Paws::GuardDuty::RemotePortDetails',
                                        'type' => 'GuardDuty_RemotePortDetails'
                                      },
               'RemoteIpDetails' => {
                                      'class' => 'Paws::GuardDuty::RemoteIpDetails',
                                      'type' => 'GuardDuty_RemoteIpDetails'
                                    },
               'Protocol' => {
                               'type' => 'Str'
                             },
               'ConnectionDirection' => {
                                          'type' => 'Str'
                                        },
               'LocalPortDetails' => {
                                       'class' => 'Paws::GuardDuty::LocalPortDetails',
                                       'type' => 'GuardDuty_LocalPortDetails'
                                     }
             },
  'NameInRequest' => {
                       'Blocked' => 'blocked',
                       'RemotePortDetails' => 'remotePortDetails',
                       'RemoteIpDetails' => 'remoteIpDetails',
                       'Protocol' => 'protocol',
                       'ConnectionDirection' => 'connectionDirection',
                       'LocalPortDetails' => 'localPortDetails'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::NetworkConnectionAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::NetworkConnectionAction object:

  $service_obj->Method(Att1 => { Blocked => $value, ..., RemotePortDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::NetworkConnectionAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Blocked

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Blocked => Bool

  Network connection blocked information.


=head2 ConnectionDirection => Str

  Network connection direction.


=head2 LocalPortDetails => GuardDuty_LocalPortDetails

  Local port information of the connection.


=head2 Protocol => Str

  Network connection protocol.


=head2 RemoteIpDetails => GuardDuty_RemoteIpDetails

  Remote IP information of the connection.


=head2 RemotePortDetails => GuardDuty_RemotePortDetails

  Remote port information of the connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

