# Generated from default/object.tt
package Paws::IoT::ThingGroupIndexingConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has ThingGroupIndexingMode => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThingGroupIndexingMode' => {
                                             'type' => 'Str'
                                           }
             },
  'NameInRequest' => {
                       'ThingGroupIndexingMode' => 'thingGroupIndexingMode'
                     },
  'IsRequired' => {
                    'ThingGroupIndexingMode' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingGroupIndexingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingGroupIndexingConfiguration object:

  $service_obj->Method(Att1 => { ThingGroupIndexingMode => $value, ..., ThingGroupIndexingMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingGroupIndexingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ThingGroupIndexingMode

=head1 DESCRIPTION

Thing group indexing configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThingGroupIndexingMode => Str

  Thing group indexing mode.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

