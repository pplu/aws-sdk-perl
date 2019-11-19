# Generated from default/object.tt
package Paws::Robomaker::PortForwardingConfig;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_PortMapping/;
  has PortMappings => (is => 'ro', isa => ArrayRef[Robomaker_PortMapping]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PortMappings' => 'portMappings'
                     },
  'types' => {
               'PortMappings' => {
                                   'type' => 'ArrayRef[Robomaker_PortMapping]',
                                   'class' => 'Paws::Robomaker::PortMapping'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::PortForwardingConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::PortForwardingConfig object:

  $service_obj->Method(Att1 => { PortMappings => $value, ..., PortMappings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::PortForwardingConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->PortMappings

=head1 DESCRIPTION

Configuration information for port forwarding.

=head1 ATTRIBUTES


=head2 PortMappings => ArrayRef[Robomaker_PortMapping]

  The port mappings for the configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

