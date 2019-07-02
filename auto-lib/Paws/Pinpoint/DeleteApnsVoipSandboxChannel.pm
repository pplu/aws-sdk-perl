
package Paws::Pinpoint::DeleteApnsVoipSandboxChannel;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApnsVoipSandboxChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/channels/apns_voip_sandbox');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::APNSVoipSandboxChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteApnsVoipSandboxChannel - Arguments for method DeleteApnsVoipSandboxChannel on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApnsVoipSandboxChannel on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method DeleteApnsVoipSandboxChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApnsVoipSandboxChannel.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $APNSVoipSandboxChannelResponse =
      $pinpoint->DeleteApnsVoipSandboxChannel(
      ApplicationId => 'My__string',

      );

    # Results:
    my $ApplicationId = $APNSVoipSandboxChannelResponse->ApplicationId;
    my $CreationDate  = $APNSVoipSandboxChannelResponse->CreationDate;
    my $DefaultAuthenticationMethod =
      $APNSVoipSandboxChannelResponse->DefaultAuthenticationMethod;
    my $Enabled          = $APNSVoipSandboxChannelResponse->Enabled;
    my $HasCredential    = $APNSVoipSandboxChannelResponse->HasCredential;
    my $HasTokenKey      = $APNSVoipSandboxChannelResponse->HasTokenKey;
    my $Id               = $APNSVoipSandboxChannelResponse->Id;
    my $IsArchived       = $APNSVoipSandboxChannelResponse->IsArchived;
    my $LastModifiedBy   = $APNSVoipSandboxChannelResponse->LastModifiedBy;
    my $LastModifiedDate = $APNSVoipSandboxChannelResponse->LastModifiedDate;
    my $Platform         = $APNSVoipSandboxChannelResponse->Platform;
    my $Version          = $APNSVoipSandboxChannelResponse->Version;

    # Returns a L<Paws::Pinpoint::APNSVoipSandboxChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/DeleteApnsVoipSandboxChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApnsVoipSandboxChannel in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

