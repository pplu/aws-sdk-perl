
package Paws::MediaTailor::GetPlaybackConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaTailor::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetPlaybackConfiguration');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/playbackConfiguration/{Name}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaTailor::GetPlaybackConfigurationResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'ParamInURI' => {
                    'Name' => 'Name'
                  },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::GetPlaybackConfiguration - Arguments for method GetPlaybackConfiguration on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPlaybackConfiguration on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method GetPlaybackConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPlaybackConfiguration.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $GetPlaybackConfigurationResponse =
      $api . mediatailor->GetPlaybackConfiguration(
      Name => 'My__string',

      );

    # Results:
    my $AdDecisionServerUrl =
      $GetPlaybackConfigurationResponse->AdDecisionServerUrl;
    my $CdnConfiguration = $GetPlaybackConfigurationResponse->CdnConfiguration;
    my $DashConfiguration =
      $GetPlaybackConfigurationResponse->DashConfiguration;
    my $HlsConfiguration = $GetPlaybackConfigurationResponse->HlsConfiguration;
    my $Name             = $GetPlaybackConfigurationResponse->Name;
    my $PlaybackConfigurationArn =
      $GetPlaybackConfigurationResponse->PlaybackConfigurationArn;
    my $PlaybackEndpointPrefix =
      $GetPlaybackConfigurationResponse->PlaybackEndpointPrefix;
    my $SessionInitializationEndpointPrefix =
      $GetPlaybackConfigurationResponse->SessionInitializationEndpointPrefix;
    my $SlateAdUrl = $GetPlaybackConfigurationResponse->SlateAdUrl;
    my $Tags       = $GetPlaybackConfigurationResponse->Tags;
    my $TranscodeProfileName =
      $GetPlaybackConfigurationResponse->TranscodeProfileName;
    my $VideoContentSourceUrl =
      $GetPlaybackConfigurationResponse->VideoContentSourceUrl;

    # Returns a L<Paws::MediaTailor::GetPlaybackConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/GetPlaybackConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The identifier for the playback configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPlaybackConfiguration in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

