
package Paws::PinpointSMSVoice::CreateConfigurationSet;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/sms-voice/configuration-sets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoice::CreateConfigurationSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::CreateConfigurationSet - Arguments for method CreateConfigurationSet on L<Paws::PinpointSMSVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationSet on the
L<Amazon Pinpoint SMS and Voice Service|Paws::PinpointSMSVoice> service. Use the attributes of this class
as arguments to method CreateConfigurationSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationSet.

=head1 SYNOPSIS

    my $sms-voice.pinpoint = Paws->service('PinpointSMSVoice');
    my $CreateConfigurationSetResponse =
      $sms -voice . pinpoint->CreateConfigurationSet(
      ConfigurationSetName => 'MyWordCharactersWithDelimiters',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice.pinpoint/CreateConfigurationSet>

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The name that you want to give the configuration set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationSet in L<Paws::PinpointSMSVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

