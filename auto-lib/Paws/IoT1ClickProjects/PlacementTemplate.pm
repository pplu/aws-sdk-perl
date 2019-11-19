# Generated from default/object.tt
package Paws::IoT1ClickProjects::PlacementTemplate;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoT1ClickProjects::Types qw/IoT1ClickProjects_DefaultPlacementAttributeMap IoT1ClickProjects_DeviceTemplateMap/;
  has DefaultAttributes => (is => 'ro', isa => IoT1ClickProjects_DefaultPlacementAttributeMap);
  has DeviceTemplates => (is => 'ro', isa => IoT1ClickProjects_DeviceTemplateMap);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeviceTemplates' => {
                                      'class' => 'Paws::IoT1ClickProjects::DeviceTemplateMap',
                                      'type' => 'IoT1ClickProjects_DeviceTemplateMap'
                                    },
               'DefaultAttributes' => {
                                        'type' => 'IoT1ClickProjects_DefaultPlacementAttributeMap',
                                        'class' => 'Paws::IoT1ClickProjects::DefaultPlacementAttributeMap'
                                      }
             },
  'NameInRequest' => {
                       'DeviceTemplates' => 'deviceTemplates',
                       'DefaultAttributes' => 'defaultAttributes'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::PlacementTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT1ClickProjects::PlacementTemplate object:

  $service_obj->Method(Att1 => { DefaultAttributes => $value, ..., DeviceTemplates => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT1ClickProjects::PlacementTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultAttributes

=head1 DESCRIPTION

An object defining the template for a placement.

=head1 ATTRIBUTES


=head2 DefaultAttributes => IoT1ClickProjects_DefaultPlacementAttributeMap

  The default attributes (key/value pairs) to be applied to all
placements using this template.


=head2 DeviceTemplates => IoT1ClickProjects_DeviceTemplateMap

  An object specifying the DeviceTemplate for all placements using this
(PlacementTemplate) template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT1ClickProjects>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

