# Generated from default/object.tt
package Paws::PinpointEmail::DailyVolume;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_VolumeStatistics PinpointEmail_DomainIspPlacement/;
  has DomainIspPlacements => (is => 'ro', isa => ArrayRef[PinpointEmail_DomainIspPlacement]);
  has StartDate => (is => 'ro', isa => Str);
  has VolumeStatistics => (is => 'ro', isa => PinpointEmail_VolumeStatistics);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DomainIspPlacements' => {
                                          'class' => 'Paws::PinpointEmail::DomainIspPlacement',
                                          'type' => 'ArrayRef[PinpointEmail_DomainIspPlacement]'
                                        },
               'VolumeStatistics' => {
                                       'class' => 'Paws::PinpointEmail::VolumeStatistics',
                                       'type' => 'PinpointEmail_VolumeStatistics'
                                     },
               'StartDate' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::DailyVolume

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::DailyVolume object:

  $service_obj->Method(Att1 => { DomainIspPlacements => $value, ..., VolumeStatistics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::DailyVolume object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainIspPlacements

=head1 DESCRIPTION

An object that contains information about the volume of email sent on
each day of the analysis period.

=head1 ATTRIBUTES


=head2 DomainIspPlacements => ArrayRef[PinpointEmail_DomainIspPlacement]

  An object that contains inbox placement metrics for a specified day in
the analysis period, broken out by the recipient's email provider.


=head2 StartDate => Str

  The date that the DailyVolume metrics apply to, in Unix time.


=head2 VolumeStatistics => PinpointEmail_VolumeStatistics

  An object that contains inbox placement metrics for a specific day in
the analysis period.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

