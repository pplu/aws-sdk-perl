
package Paws::Pinpoint::UpdateApnsVoipChannel;
  use Moose;
  has APNSVoipChannelRequest => (is => 'ro', isa => 'Paws::Pinpoint::APNSVoipChannelRequest', required => 1);
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'APNSVoipChannelRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApnsVoipChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/channels/apns_voip');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::APNSVoipChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateApnsVoipChannel - Arguments for method UpdateApnsVoipChannel on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApnsVoipChannel on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateApnsVoipChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApnsVoipChannel.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $APNSVoipChannelResponse = $pinpoint->UpdateApnsVoipChannel(
      APNSVoipChannelRequest => {
        BundleId                    => 'My__string',    # OPTIONAL
        Certificate                 => 'My__string',    # OPTIONAL
        DefaultAuthenticationMethod => 'My__string',    # OPTIONAL
        Enabled                     => 1,               # OPTIONAL
        PrivateKey                  => 'My__string',    # OPTIONAL
        TeamId                      => 'My__string',    # OPTIONAL
        TokenKey                    => 'My__string',    # OPTIONAL
        TokenKeyId                  => 'My__string',    # OPTIONAL
      },
      ApplicationId => 'My__string',

    );

    # Results:
    my $ApplicationId = $APNSVoipChannelResponse->ApplicationId;
    my $CreationDate  = $APNSVoipChannelResponse->CreationDate;
    my $DefaultAuthenticationMethod =
      $APNSVoipChannelResponse->DefaultAuthenticationMethod;
    my $Enabled          = $APNSVoipChannelResponse->Enabled;
    my $HasCredential    = $APNSVoipChannelResponse->HasCredential;
    my $HasTokenKey      = $APNSVoipChannelResponse->HasTokenKey;
    my $Id               = $APNSVoipChannelResponse->Id;
    my $IsArchived       = $APNSVoipChannelResponse->IsArchived;
    my $LastModifiedBy   = $APNSVoipChannelResponse->LastModifiedBy;
    my $LastModifiedDate = $APNSVoipChannelResponse->LastModifiedDate;
    my $Platform         = $APNSVoipChannelResponse->Platform;
    my $Version          = $APNSVoipChannelResponse->Version;

    # Returns a L<Paws::Pinpoint::APNSVoipChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdateApnsVoipChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> APNSVoipChannelRequest => L<Paws::Pinpoint::APNSVoipChannelRequest>





=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApnsVoipChannel in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

