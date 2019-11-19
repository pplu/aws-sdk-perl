# Generated from json/callargs_class.tt

package Paws::AlexaForBusiness::UpdateConferenceProvider;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_PSTNDialIn AlexaForBusiness_MeetingSetting AlexaForBusiness_IPDialIn/;
  has ConferenceProviderArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ConferenceProviderType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IPDialIn => (is => 'ro', isa => AlexaForBusiness_IPDialIn, predicate => 1);
  has MeetingSetting => (is => 'ro', isa => AlexaForBusiness_MeetingSetting, required => 1, predicate => 1);
  has PSTNDialIn => (is => 'ro', isa => AlexaForBusiness_PSTNDialIn, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateConferenceProvider');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AlexaForBusiness::UpdateConferenceProviderResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConferenceProviderType' => {
                                             'type' => 'Str'
                                           },
               'MeetingSetting' => {
                                     'class' => 'Paws::AlexaForBusiness::MeetingSetting',
                                     'type' => 'AlexaForBusiness_MeetingSetting'
                                   },
               'PSTNDialIn' => {
                                 'type' => 'AlexaForBusiness_PSTNDialIn',
                                 'class' => 'Paws::AlexaForBusiness::PSTNDialIn'
                               },
               'ConferenceProviderArn' => {
                                            'type' => 'Str'
                                          },
               'IPDialIn' => {
                               'type' => 'AlexaForBusiness_IPDialIn',
                               'class' => 'Paws::AlexaForBusiness::IPDialIn'
                             }
             },
  'IsRequired' => {
                    'ConferenceProviderType' => 1,
                    'MeetingSetting' => 1,
                    'ConferenceProviderArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateConferenceProvider - Arguments for method UpdateConferenceProvider on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConferenceProvider on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method UpdateConferenceProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConferenceProvider.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $UpdateConferenceProviderResponse = $a4b->UpdateConferenceProvider(
      ConferenceProviderArn  => 'MyArn',
      ConferenceProviderType => 'CHIME',
      MeetingSetting         => {
        RequirePin => 'YES',    # values: YES, NO, OPTIONAL

      },
      IPDialIn => {
        CommsProtocol => 'SIP',           # values: SIP, SIPS, H323
        Endpoint      => 'MyEndpoint',    # min: 1, max: 256

      },    # OPTIONAL
      PSTNDialIn => {
        CountryCode      => 'MyCountryCode',
        OneClickIdDelay  => 'MyOneClickIdDelay',       # min: 1, max: 2
        OneClickPinDelay => 'MyOneClickPinDelay',      # min: 1, max: 2
        PhoneNumber      => 'MyOutboundPhoneNumber',

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/UpdateConferenceProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConferenceProviderArn => Str

The ARN of the conference provider.



=head2 B<REQUIRED> ConferenceProviderType => Str

The type of the conference provider.

Valid values are: C<"CHIME">, C<"BLUEJEANS">, C<"FUZE">, C<"GOOGLE_HANGOUTS">, C<"POLYCOM">, C<"RINGCENTRAL">, C<"SKYPE_FOR_BUSINESS">, C<"WEBEX">, C<"ZOOM">, C<"CUSTOM">

=head2 IPDialIn => AlexaForBusiness_IPDialIn

The IP endpoint and protocol for calling.



=head2 B<REQUIRED> MeetingSetting => AlexaForBusiness_MeetingSetting

The meeting settings for the conference provider.



=head2 PSTNDialIn => AlexaForBusiness_PSTNDialIn

The information for PSTN conferencing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConferenceProvider in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

