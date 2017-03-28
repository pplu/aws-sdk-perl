package Paws::Pinpoint::CampaignState;
  use Moose;
  has CampaignStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CampaignState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::CampaignState object:

  $service_obj->Method(Att1 => { CampaignStatus => $value, ..., CampaignStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::CampaignState object:

  $result = $service_obj->Method(...);
  $result->Att1->CampaignStatus

=head1 DESCRIPTION

State of the Campaign

=head1 ATTRIBUTES


=head2 CampaignStatus => Str

  The status of the campaign, or the status of a treatment that belongs
to an A/B test campaign. Valid values: SCHEDULED, EXECUTING,
PENDING_NEXT_RUN, COMPLETED, PAUSED



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

