
package Paws::MediaLive::TransferInputDevice;
  use Moose;
  has InputDeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'inputDeviceId', required => 1);
  has TargetCustomerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetCustomerId');
  has TargetRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetRegion');
  has TransferMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transferMessage');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TransferInputDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputDevices/{inputDeviceId}/transfer');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::TransferInputDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::TransferInputDevice - Arguments for method TransferInputDevice on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TransferInputDevice on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method TransferInputDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TransferInputDevice.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $TransferInputDeviceResponse = $medialive->TransferInputDevice(
      InputDeviceId    => 'My__string',
      TargetCustomerId => 'My__string',    # OPTIONAL
      TargetRegion     => 'My__string',    # OPTIONAL
      TransferMessage  => 'My__string',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/TransferInputDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputDeviceId => Str

The unique ID of this input device. For example, hd-123456789abcdef.



=head2 TargetCustomerId => Str

The AWS account ID (12 digits) for the recipient of the device
transfer.



=head2 TargetRegion => Str

The target AWS region to transfer the device.



=head2 TransferMessage => Str

An optional message for the recipient. Maximum 280 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TransferInputDevice in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

