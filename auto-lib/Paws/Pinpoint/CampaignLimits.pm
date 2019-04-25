package Paws::Pinpoint::CampaignLimits;
  use Moose;
  has Daily => (is => 'ro', isa => 'Int');
  has MaximumDuration => (is => 'ro', isa => 'Int');
  has MessagesPerSecond => (is => 'ro', isa => 'Int');
  has Total => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CampaignLimits

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::CampaignLimits object:

  $service_obj->Method(Att1 => { Daily => $value, ..., Total => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::CampaignLimits object:

  $result = $service_obj->Method(...);
  $result->Att1->Daily

=head1 DESCRIPTION

Campaign Limits are used to limit the number of messages that can be
sent to a single endpoint.

=head1 ATTRIBUTES


=head2 Daily => Int

  The maximum number of messages that each campaign can send to a single
endpoint in a 24-hour period.


=head2 MaximumDuration => Int

  The length of time (in seconds) that the campaign can run before it
ends and message deliveries stop. This duration begins at the scheduled
start time for the campaign. The minimum value is 60.


=head2 MessagesPerSecond => Int

  The number of messages that the campaign can send per second. The
minimum value is 50, and the maximum is 20000.


=head2 Total => Int

  The maximum number of messages that an individual campaign can send to
a single endpoint over the course of the campaign.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

