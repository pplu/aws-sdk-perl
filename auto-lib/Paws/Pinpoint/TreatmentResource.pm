package Paws::Pinpoint::TreatmentResource;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has MessageConfiguration => (is => 'ro', isa => 'Paws::Pinpoint::MessageConfiguration');
  has Schedule => (is => 'ro', isa => 'Paws::Pinpoint::Schedule');
  has SizePercent => (is => 'ro', isa => 'Int');
  has State => (is => 'ro', isa => 'Paws::Pinpoint::CampaignState');
  has TreatmentDescription => (is => 'ro', isa => 'Str');
  has TreatmentName => (is => 'ro', isa => 'Str');
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

Treatment resource

=head1 ATTRIBUTES


=head2 Id => Str

  The unique treatment ID.


=head2 MessageConfiguration => L<Paws::Pinpoint::MessageConfiguration>

  The message configuration settings.


=head2 Schedule => L<Paws::Pinpoint::Schedule>

  The campaign schedule.


=head2 SizePercent => Int

  The allocated percentage of users for this treatment.


=head2 State => L<Paws::Pinpoint::CampaignState>

  The treatment status.


=head2 TreatmentDescription => Str

  A custom description for the treatment.


=head2 TreatmentName => Str

  The custom name of a variation of the campaign used for A/B testing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

