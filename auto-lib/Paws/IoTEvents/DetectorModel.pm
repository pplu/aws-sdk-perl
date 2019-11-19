# Generated from default/object.tt
package Paws::IoTEvents::DetectorModel;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoTEvents::Types qw/IoTEvents_DetectorModelDefinition IoTEvents_DetectorModelConfiguration/;
  has DetectorModelConfiguration => (is => 'ro', isa => IoTEvents_DetectorModelConfiguration);
  has DetectorModelDefinition => (is => 'ro', isa => IoTEvents_DetectorModelDefinition);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DetectorModelDefinition' => {
                                              'type' => 'IoTEvents_DetectorModelDefinition',
                                              'class' => 'Paws::IoTEvents::DetectorModelDefinition'
                                            },
               'DetectorModelConfiguration' => {
                                                 'type' => 'IoTEvents_DetectorModelConfiguration',
                                                 'class' => 'Paws::IoTEvents::DetectorModelConfiguration'
                                               }
             },
  'NameInRequest' => {
                       'DetectorModelDefinition' => 'detectorModelDefinition',
                       'DetectorModelConfiguration' => 'detectorModelConfiguration'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DetectorModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::DetectorModel object:

  $service_obj->Method(Att1 => { DetectorModelConfiguration => $value, ..., DetectorModelDefinition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::DetectorModel object:

  $result = $service_obj->Method(...);
  $result->Att1->DetectorModelConfiguration

=head1 DESCRIPTION

Information about the detector model.

=head1 ATTRIBUTES


=head2 DetectorModelConfiguration => IoTEvents_DetectorModelConfiguration

  Information about how the detector is configured.


=head2 DetectorModelDefinition => IoTEvents_DetectorModelDefinition

  Information that defines how a detector operates.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

