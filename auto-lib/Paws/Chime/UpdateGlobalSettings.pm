
package Paws::Chime::UpdateGlobalSettings;
  use Moose;
  has BusinessCalling => (is => 'ro', isa => 'Paws::Chime::BusinessCallingSettings', required => 1);
  has VoiceConnector => (is => 'ro', isa => 'Paws::Chime::VoiceConnectorSettings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGlobalSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateGlobalSettings - Arguments for method UpdateGlobalSettings on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGlobalSettings on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method UpdateGlobalSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGlobalSettings.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    $chime->UpdateGlobalSettings(
      BusinessCalling => {
        CdrBucket => 'MyString',    # OPTIONAL
      },
      VoiceConnector => {
        CdrBucket => 'MyString',    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/UpdateGlobalSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BusinessCalling => L<Paws::Chime::BusinessCallingSettings>

The Amazon Chime Business Calling settings.



=head2 B<REQUIRED> VoiceConnector => L<Paws::Chime::VoiceConnectorSettings>

The Amazon Chime Voice Connector settings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGlobalSettings in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

