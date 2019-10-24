# Generated from default/object.tt
package Paws::IoTEvents::DetectorModelSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw//;
  has CreationTime => (is => 'ro', isa => Str);
  has DetectorModelDescription => (is => 'ro', isa => Str);
  has DetectorModelName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DetectorModelDescription' => {
                                               'type' => 'Str'
                                             },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'DetectorModelName' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'DetectorModelDescription' => 'detectorModelDescription',
                       'CreationTime' => 'creationTime',
                       'DetectorModelName' => 'detectorModelName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DetectorModelSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::DetectorModelSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., DetectorModelName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::DetectorModelSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Information about the detector model.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The time the detector model was created.


=head2 DetectorModelDescription => Str

  A brief description of the detector model.


=head2 DetectorModelName => Str

  The name of the detector model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

