
package Paws::DeviceFarm::UpdateDeviceInstance;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'labels' );
  has ProfileArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDeviceInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::UpdateDeviceInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateDeviceInstance - Arguments for method UpdateDeviceInstance on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDeviceInstance on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method UpdateDeviceInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDeviceInstance.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $UpdateDeviceInstanceResult = $devicefarm->UpdateDeviceInstance(
      Arn        => 'MyAmazonResourceName',
      Labels     => [ 'MyString', ... ],       # OPTIONAL
      ProfileArn => 'MyAmazonResourceName',    # OPTIONAL
    );

    # Results:
    my $DeviceInstance = $UpdateDeviceInstanceResult->DeviceInstance;

    # Returns a L<Paws::DeviceFarm::UpdateDeviceInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/UpdateDeviceInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the device instance.



=head2 Labels => ArrayRef[Str|Undef]

An array of strings that you want to associate with the device
instance.



=head2 ProfileArn => Str

The Amazon Resource Name (ARN) of the profile that you want to
associate with the device instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDeviceInstance in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

