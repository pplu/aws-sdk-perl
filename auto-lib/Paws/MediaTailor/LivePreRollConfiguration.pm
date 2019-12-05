package Paws::MediaTailor::LivePreRollConfiguration;
  use Moose;
  has AdDecisionServerUrl => (is => 'ro', isa => 'Str');
  has MaxDurationSeconds => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::LivePreRollConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaTailor::LivePreRollConfiguration object:

  $service_obj->Method(Att1 => { AdDecisionServerUrl => $value, ..., MaxDurationSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaTailor::LivePreRollConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AdDecisionServerUrl

=head1 DESCRIPTION

The configuration for pre-roll ad insertion.

=head1 ATTRIBUTES


=head2 AdDecisionServerUrl => Str

  The URL for the ad decision server (ADS) for pre-roll ads. This
includes the specification of static parameters and placeholders for
dynamic parameters. AWS Elemental MediaTailor substitutes
player-specific and session-specific parameters as needed when calling
the ADS. Alternately, for testing, you can provide a static VAST URL.
The maximum length is 25,000 characters.


=head2 MaxDurationSeconds => Int

  The maximum allowed duration for the pre-roll ad avail. AWS Elemental
MediaTailor won't play pre-roll ads to exceed this duration, regardless
of the total duration of ads that the ADS returns.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

