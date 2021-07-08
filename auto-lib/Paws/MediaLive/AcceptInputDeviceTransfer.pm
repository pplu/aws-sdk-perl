
package Paws::MediaLive::AcceptInputDeviceTransfer;
  use Moose;
  has InputDeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'inputDeviceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptInputDeviceTransfer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputDevices/{inputDeviceId}/accept');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::AcceptInputDeviceTransferResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AcceptInputDeviceTransfer - Arguments for method AcceptInputDeviceTransfer on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptInputDeviceTransfer on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method AcceptInputDeviceTransfer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptInputDeviceTransfer.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $AcceptInputDeviceTransferResponse =
      $medialive->AcceptInputDeviceTransfer(
      InputDeviceId => 'My__string',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/AcceptInputDeviceTransfer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputDeviceId => Str

The unique ID of the input device to accept. For example,
hd-123456789abcdef.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptInputDeviceTransfer in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

