# Generated from default/object.tt
package Paws::SESv2::DailyVolume;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::SESv2::Types qw/SESv2_DomainIspPlacement SESv2_VolumeStatistics/;
  has DomainIspPlacements => (is => 'ro', isa => ArrayRef[SESv2_DomainIspPlacement]);
  has StartDate => (is => 'ro', isa => Str);
  has VolumeStatistics => (is => 'ro', isa => SESv2_VolumeStatistics);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StartDate' => {
                                'type' => 'Str'
                              },
               'VolumeStatistics' => {
                                       'type' => 'SESv2_VolumeStatistics',
                                       'class' => 'Paws::SESv2::VolumeStatistics'
                                     },
               'DomainIspPlacements' => {
                                          'type' => 'ArrayRef[SESv2_DomainIspPlacement]',
                                          'class' => 'Paws::SESv2::DomainIspPlacement'
                                        }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::DailyVolume

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::DailyVolume object:

  $service_obj->Method(Att1 => { DomainIspPlacements => $value, ..., VolumeStatistics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::DailyVolume object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainIspPlacements

=head1 DESCRIPTION

An object that contains information about the volume of email sent on
each day of the analysis period.

=head1 ATTRIBUTES


=head2 DomainIspPlacements => ArrayRef[SESv2_DomainIspPlacement]

  An object that contains inbox placement metrics for a specified day in
the analysis period, broken out by the recipient's email provider.


=head2 StartDate => Str

  The date that the DailyVolume metrics apply to, in Unix time.


=head2 VolumeStatistics => SESv2_VolumeStatistics

  An object that contains inbox placement metrics for a specific day in
the analysis period.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

