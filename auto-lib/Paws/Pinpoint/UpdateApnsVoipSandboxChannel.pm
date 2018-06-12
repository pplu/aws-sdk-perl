
package Paws::Pinpoint::UpdateApnsVoipSandboxChannel;
  use Moose;
  has APNSVoipSandboxChannelRequest => (is => 'ro', isa => 'Paws::Pinpoint::APNSVoipSandboxChannelRequest', required => 1);
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'APNSVoipSandboxChannelRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApnsVoipSandboxChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/channels/apns_voip_sandbox');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateApnsVoipSandboxChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateApnsVoipSandboxChannel - Arguments for method UpdateApnsVoipSandboxChannel on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApnsVoipSandboxChannel on the 
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateApnsVoipSandboxChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApnsVoipSandboxChannel.

As an example:

  $service_obj->UpdateApnsVoipSandboxChannel(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>
=head1 ATTRIBUTES


=head2 B<REQUIRED> APNSVoipSandboxChannelRequest => L<Paws::Pinpoint::APNSVoipSandboxChannelRequest>





=head2 B<REQUIRED> ApplicationId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApnsVoipSandboxChannel in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

