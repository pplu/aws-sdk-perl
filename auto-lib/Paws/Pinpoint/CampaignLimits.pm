package Paws::Pinpoint::CampaignLimits;
  use Moose;
  has Daily => (is => 'ro', isa => 'Int');
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
sent to a user.

=head1 ATTRIBUTES


=head2 Daily => Int

  The maximum number of messages that the campaign can send daily.


=head2 Total => Int

  The maximum total number of messages that the campaign can send.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

