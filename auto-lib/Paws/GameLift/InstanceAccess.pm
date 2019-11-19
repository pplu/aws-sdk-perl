# Generated from default/object.tt
package Paws::GameLift::InstanceAccess;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_InstanceCredentials/;
  has Credentials => (is => 'ro', isa => GameLift_InstanceCredentials);
  has FleetId => (is => 'ro', isa => Str);
  has InstanceId => (is => 'ro', isa => Str);
  has IpAddress => (is => 'ro', isa => Str);
  has OperatingSystem => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OperatingSystem' => {
                                      'type' => 'Str'
                                    },
               'IpAddress' => {
                                'type' => 'Str'
                              },
               'FleetId' => {
                              'type' => 'Str'
                            },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'Credentials' => {
                                  'type' => 'GameLift_InstanceCredentials',
                                  'class' => 'Paws::GameLift::InstanceCredentials'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::InstanceAccess

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::InstanceAccess object:

  $service_obj->Method(Att1 => { Credentials => $value, ..., OperatingSystem => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::InstanceAccess object:

  $result = $service_obj->Method(...);
  $result->Att1->Credentials

=head1 DESCRIPTION

Information required to remotely connect to a fleet instance. Access is
requested by calling GetInstanceAccess.

=head1 ATTRIBUTES


=head2 Credentials => GameLift_InstanceCredentials

  Credentials required to access the instance.


=head2 FleetId => Str

  Unique identifier for a fleet containing the instance being accessed.


=head2 InstanceId => Str

  Unique identifier for an instance being accessed.


=head2 IpAddress => Str

  IP address assigned to the instance.


=head2 OperatingSystem => Str

  Operating system that is running on the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

