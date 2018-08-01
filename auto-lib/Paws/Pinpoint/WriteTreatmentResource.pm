package Paws::Pinpoint::WriteTreatmentResource;
  use Moose;
  has MessageConfiguration => (is => 'ro', isa => 'Paws::Pinpoint::MessageConfiguration');
  has Schedule => (is => 'ro', isa => 'Paws::Pinpoint::Schedule');
  has SizePercent => (is => 'ro', isa => 'Int', required => 1);
  has TreatmentDescription => (is => 'ro', isa => 'Str');
  has TreatmentName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::WriteTreatmentResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::WriteTreatmentResource object:

  $service_obj->Method(Att1 => { MessageConfiguration => $value, ..., TreatmentName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::WriteTreatmentResource object:

  $result = $service_obj->Method(...);
  $result->Att1->MessageConfiguration

=head1 DESCRIPTION

Specifies the settings for a campaign treatment. A treatment is a
variation of a campaign that's used for A/B testing of a campaign.

=head1 ATTRIBUTES


=head2 MessageConfiguration => L<Paws::Pinpoint::MessageConfiguration>

  The message configuration settings for the treatment.


=head2 Schedule => L<Paws::Pinpoint::Schedule>

  The schedule settings for the treatment.


=head2 B<REQUIRED> SizePercent => Int

  The allocated percentage of users (segment members) to send the
treatment to.


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

