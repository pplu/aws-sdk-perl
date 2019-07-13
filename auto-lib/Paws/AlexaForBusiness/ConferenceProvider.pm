package Paws::AlexaForBusiness::ConferenceProvider;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has IPDialIn => (is => 'ro', isa => 'Paws::AlexaForBusiness::IPDialIn');
  has MeetingSetting => (is => 'ro', isa => 'Paws::AlexaForBusiness::MeetingSetting');
  has Name => (is => 'ro', isa => 'Str');
  has PSTNDialIn => (is => 'ro', isa => 'Paws::AlexaForBusiness::PSTNDialIn');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ConferenceProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::ConferenceProvider object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::ConferenceProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An entity that provides a conferencing solution. Alexa for Business
acts as the voice interface and mediator that connects users to their
preferred conference provider. Examples of conference providers include
Amazon Chime, Zoom, Cisco, and Polycom.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the newly created conference provider.


=head2 IPDialIn => L<Paws::AlexaForBusiness::IPDialIn>

  The IP endpoint and protocol for calling.


=head2 MeetingSetting => L<Paws::AlexaForBusiness::MeetingSetting>

  The meeting settings for the conference provider.


=head2 Name => Str

  The name of the conference provider.


=head2 PSTNDialIn => L<Paws::AlexaForBusiness::PSTNDialIn>

  The information for PSTN conferencing.


=head2 Type => Str

  The type of conference providers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

