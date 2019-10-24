# Generated from default/object.tt
package Paws::AlexaForBusiness::ConferenceProvider;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_MeetingSetting AlexaForBusiness_PSTNDialIn AlexaForBusiness_IPDialIn/;
  has Arn => (is => 'ro', isa => Str);
  has IPDialIn => (is => 'ro', isa => AlexaForBusiness_IPDialIn);
  has MeetingSetting => (is => 'ro', isa => AlexaForBusiness_MeetingSetting);
  has Name => (is => 'ro', isa => Str);
  has PSTNDialIn => (is => 'ro', isa => AlexaForBusiness_PSTNDialIn);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'MeetingSetting' => {
                                     'class' => 'Paws::AlexaForBusiness::MeetingSetting',
                                     'type' => 'AlexaForBusiness_MeetingSetting'
                                   },
               'IPDialIn' => {
                               'class' => 'Paws::AlexaForBusiness::IPDialIn',
                               'type' => 'AlexaForBusiness_IPDialIn'
                             },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'PSTNDialIn' => {
                                 'class' => 'Paws::AlexaForBusiness::PSTNDialIn',
                                 'type' => 'AlexaForBusiness_PSTNDialIn'
                               }
             }
}
;
    return $Params_map;
  }


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


=head2 IPDialIn => AlexaForBusiness_IPDialIn

  The IP endpoint and protocol for calling.


=head2 MeetingSetting => AlexaForBusiness_MeetingSetting

  The meeting settings for the conference provider.


=head2 Name => Str

  The name of the conference provider.


=head2 PSTNDialIn => AlexaForBusiness_PSTNDialIn

  The information for PSTN conferencing.


=head2 Type => Str

  The type of conference providers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

