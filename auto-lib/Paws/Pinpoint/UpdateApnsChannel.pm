
package Paws::Pinpoint::UpdateApnsChannel;
  use Moose;
  has APNSChannelRequest => (is => 'ro', isa => 'Paws::Pinpoint::APNSChannelRequest', required => 1);
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'APNSChannelRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApnsChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/channels/apns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateApnsChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateApnsChannel - Arguments for method UpdateApnsChannel on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApnsChannel on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateApnsChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApnsChannel.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateApnsChannelResponse = $pinpoint->UpdateApnsChannel(
      APNSChannelRequest => {
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
    my $APNSChannelResponse = $UpdateApnsChannelResponse->APNSChannelResponse;

    # Returns a L<Paws::Pinpoint::UpdateApnsChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdateApnsChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> APNSChannelRequest => L<Paws::Pinpoint::APNSChannelRequest>





=head2 B<REQUIRED> ApplicationId => Str

The unique ID of your Amazon Pinpoint application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApnsChannel in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

