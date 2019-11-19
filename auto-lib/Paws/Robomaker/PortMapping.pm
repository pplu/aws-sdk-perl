# Generated from default/object.tt
package Paws::Robomaker::PortMapping;
  use Moo;
  use Types::Standard qw/Int Bool/;
  use Paws::Robomaker::Types qw//;
  has ApplicationPort => (is => 'ro', isa => Int, required => 1);
  has EnableOnPublicIp => (is => 'ro', isa => Bool);
  has JobPort => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationPort' => {
                                      'type' => 'Int'
                                    },
               'JobPort' => {
                              'type' => 'Int'
                            },
               'EnableOnPublicIp' => {
                                       'type' => 'Bool'
                                     }
             },
  'NameInRequest' => {
                       'JobPort' => 'jobPort',
                       'EnableOnPublicIp' => 'enableOnPublicIp',
                       'ApplicationPort' => 'applicationPort'
                     },
  'IsRequired' => {
                    'JobPort' => 1,
                    'ApplicationPort' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::PortMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::PortMapping object:

  $service_obj->Method(Att1 => { ApplicationPort => $value, ..., JobPort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::PortMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationPort

=head1 DESCRIPTION

An object representing a port mapping.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationPort => Int

  The port number on the application.


=head2 EnableOnPublicIp => Bool

  A Boolean indicating whether to enable this port mapping on public IP.


=head2 B<REQUIRED> JobPort => Int

  The port number on the simulation job instance to use as a remote
connection point.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

