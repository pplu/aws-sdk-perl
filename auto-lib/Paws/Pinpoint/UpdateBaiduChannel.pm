
package Paws::Pinpoint::UpdateBaiduChannel;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has BaiduChannelRequest => (is => 'ro', isa => 'Paws::Pinpoint::BaiduChannelRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'BaiduChannelRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBaiduChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/channels/baidu');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateBaiduChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateBaiduChannel - Arguments for method UpdateBaiduChannel on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBaiduChannel on the 
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateBaiduChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBaiduChannel.

As an example:

  $service_obj->UpdateBaiduChannel(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>
=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str





=head2 B<REQUIRED> BaiduChannelRequest => L<Paws::Pinpoint::BaiduChannelRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBaiduChannel in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

