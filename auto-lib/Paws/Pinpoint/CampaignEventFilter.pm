package Paws::Pinpoint::CampaignEventFilter;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'Paws::Pinpoint::EventDimensions', required => 1);
  has FilterType => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CampaignEventFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::CampaignEventFilter object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., FilterType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::CampaignEventFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

Specifies the settings for events that cause a campaign to be sent.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Dimensions => L<Paws::Pinpoint::EventDimensions>

  The dimension settings of the event filter for the campaign.


=head2 B<REQUIRED> FilterType => Str

  The type of event that causes the campaign to be sent. Valid values
are: SYSTEM, sends the campaign when a system event occurs; and,
ENDPOINT, sends the campaign when an endpoint event (

Events resource) occurs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

