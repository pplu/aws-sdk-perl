# Generated from default/object.tt
package Paws::SESv2::OverallVolume;
  use Moo;
  use Types::Standard qw/ArrayRef Num/;
  use Paws::SESv2::Types qw/SESv2_DomainIspPlacement SESv2_VolumeStatistics/;
  has DomainIspPlacements => (is => 'ro', isa => ArrayRef[SESv2_DomainIspPlacement]);
  has ReadRatePercent => (is => 'ro', isa => Num);
  has VolumeStatistics => (is => 'ro', isa => SESv2_VolumeStatistics);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VolumeStatistics' => {
                                       'type' => 'SESv2_VolumeStatistics',
                                       'class' => 'Paws::SESv2::VolumeStatistics'
                                     },
               'ReadRatePercent' => {
                                      'type' => 'Num'
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

Paws::SESv2::OverallVolume

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::OverallVolume object:

  $service_obj->Method(Att1 => { DomainIspPlacements => $value, ..., VolumeStatistics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::OverallVolume object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainIspPlacements

=head1 DESCRIPTION

An object that contains information about email that was sent from the
selected domain.

=head1 ATTRIBUTES


=head2 DomainIspPlacements => ArrayRef[SESv2_DomainIspPlacement]

  An object that contains inbox and junk mail placement metrics for
individual email providers.


=head2 ReadRatePercent => Num

  The percentage of emails that were sent from the domain that were read
by their recipients.


=head2 VolumeStatistics => SESv2_VolumeStatistics

  An object that contains information about the numbers of messages that
arrived in recipients' inboxes and junk mail folders.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

