
package Paws::Pinpoint::UpdateApplicationSettings;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has WriteApplicationSettingsRequest => (is => 'ro', isa => 'Paws::Pinpoint::WriteApplicationSettingsRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'WriteApplicationSettingsRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplicationSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateApplicationSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateApplicationSettings - Arguments for method UpdateApplicationSettings on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplicationSettings on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateApplicationSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplicationSettings.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateApplicationSettingsResponse =
      $pinpoint->UpdateApplicationSettings(
      ApplicationId                   => 'My__string',
      WriteApplicationSettingsRequest => {
        CampaignHook => {
          LambdaFunctionName => 'My__string',
          Mode   => 'DELIVERY',     # values: DELIVERY, FILTER; OPTIONAL
          WebUrl => 'My__string',
        },    # OPTIONAL
        CloudWatchMetricsEnabled => 1,    # OPTIONAL
        Limits                   => {
          Daily             => 1,         # OPTIONAL
          MaximumDuration   => 1,         # OPTIONAL
          MessagesPerSecond => 1,         # OPTIONAL
          Total             => 1,         # OPTIONAL
        },    # OPTIONAL
        QuietTime => {
          End   => 'My__string',
          Start => 'My__string',
        },    # OPTIONAL
      },

      );

    # Results:
    my $ApplicationSettingsResource =
      $UpdateApplicationSettingsResponse->ApplicationSettingsResource;

    # Returns a L<Paws::Pinpoint::UpdateApplicationSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdateApplicationSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique ID of your Amazon Pinpoint application.



=head2 B<REQUIRED> WriteApplicationSettingsRequest => L<Paws::Pinpoint::WriteApplicationSettingsRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplicationSettings in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

