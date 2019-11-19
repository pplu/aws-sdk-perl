# Generated from default/object.tt
package Paws::Greengrass::CoreDefinitionVersion;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_Core/;
  has Cores => (is => 'ro', isa => ArrayRef[Greengrass_Core]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Cores' => {
                            'class' => 'Paws::Greengrass::Core',
                            'type' => 'ArrayRef[Greengrass_Core]'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CoreDefinitionVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::CoreDefinitionVersion object:

  $service_obj->Method(Att1 => { Cores => $value, ..., Cores => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::CoreDefinitionVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->Cores

=head1 DESCRIPTION

Information about a core definition version.

=head1 ATTRIBUTES


=head2 Cores => ArrayRef[Greengrass_Core]

  A list of cores in the core definition version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

