
package Paws::Chime::GetGlobalSettings;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGlobalSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::GetGlobalSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetGlobalSettings - Arguments for method GetGlobalSettings on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGlobalSettings on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method GetGlobalSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGlobalSettings.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $GetGlobalSettingsResponse = $chime->GetGlobalSettings();

    # Results:
    my $BusinessCalling = $GetGlobalSettingsResponse->BusinessCalling;
    my $VoiceConnector  = $GetGlobalSettingsResponse->VoiceConnector;

    # Returns a L<Paws::Chime::GetGlobalSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/GetGlobalSettings>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGlobalSettings in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

