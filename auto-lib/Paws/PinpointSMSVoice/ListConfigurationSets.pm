
package Paws::PinpointSMSVoice::ListConfigurationSets;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has PageSize => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'PageSize');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConfigurationSets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/sms-voice/configuration-sets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoice::ListConfigurationSetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::ListConfigurationSets - Arguments for method ListConfigurationSets on L<Paws::PinpointSMSVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConfigurationSets on the
L<Amazon Pinpoint SMS and Voice Service|Paws::PinpointSMSVoice> service. Use the attributes of this class
as arguments to method ListConfigurationSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConfigurationSets.

=head1 SYNOPSIS

    my $sms-voice.pinpoint = Paws->service('PinpointSMSVoice');
    my $ListConfigurationSetsResponse =
      $sms -voice . pinpoint->ListConfigurationSets(
      NextToken => 'My__string',    # OPTIONAL
      PageSize  => 'My__string',    # OPTIONAL
      );

    # Results:
    my $ConfigurationSets = $ListConfigurationSetsResponse->ConfigurationSets;
    my $NextToken         = $ListConfigurationSetsResponse->NextToken;

    # Returns a L<Paws::PinpointSMSVoice::ListConfigurationSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice.pinpoint/ListConfigurationSets>

=head1 ATTRIBUTES


=head2 NextToken => Str

A token returned from a previous call to the API that indicates the
position in the list of results.



=head2 PageSize => Str

Used to specify the number of items that should be returned in the
response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConfigurationSets in L<Paws::PinpointSMSVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

