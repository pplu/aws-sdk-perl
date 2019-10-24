# Generated from default/object.tt
package Paws::Pinpoint::TreatmentResource;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Pinpoint::Types qw/Pinpoint_MessageConfiguration Pinpoint_Schedule Pinpoint_CampaignState/;
  has Id => (is => 'ro', isa => Str, required => 1);
  has MessageConfiguration => (is => 'ro', isa => Pinpoint_MessageConfiguration);
  has Schedule => (is => 'ro', isa => Pinpoint_Schedule);
  has SizePercent => (is => 'ro', isa => Int, required => 1);
  has State => (is => 'ro', isa => Pinpoint_CampaignState);
  has TreatmentDescription => (is => 'ro', isa => Str);
  has TreatmentName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'TreatmentDescription' => {
                                           'type' => 'Str'
                                         },
               'SizePercent' => {
                                  'type' => 'Int'
                                },
               'TreatmentName' => {
                                    'type' => 'Str'
                                  },
               'Schedule' => {
                               'class' => 'Paws::Pinpoint::Schedule',
                               'type' => 'Pinpoint_Schedule'
                             },
               'MessageConfiguration' => {
                                           'class' => 'Paws::Pinpoint::MessageConfiguration',
                                           'type' => 'Pinpoint_MessageConfiguration'
                                         },
               'State' => {
                            'class' => 'Paws::Pinpoint::CampaignState',
                            'type' => 'Pinpoint_CampaignState'
                          }
             },
  'IsRequired' => {
                    'Id' => 1,
                    'SizePercent' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::TreatmentResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::TreatmentResource object:

  $service_obj->Method(Att1 => { Id => $value, ..., TreatmentName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::TreatmentResource object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Specifies the settings for a campaign treatment. A treatment is a
variation of a campaign that's used for A/B testing of a campaign.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  The unique identifier for the treatment.


=head2 MessageConfiguration => Pinpoint_MessageConfiguration

  The message configuration settings for the treatment.


=head2 Schedule => Pinpoint_Schedule

  The schedule settings for the treatment.


=head2 B<REQUIRED> SizePercent => Int

  The allocated percentage of users (segment members) that the treatment
is sent to.


=head2 State => Pinpoint_CampaignState

  The status of the treatment.


=head2 TreatmentDescription => Str

  The custom description of the treatment.


=head2 TreatmentName => Str

  The custom name of the treatment. A treatment is a variation of a
campaign that's used for A/B testing of a campaign.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

