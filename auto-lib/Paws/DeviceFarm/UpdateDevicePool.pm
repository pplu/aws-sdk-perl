
package Paws::DeviceFarm::UpdateDevicePool;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has ClearMaxDevices => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'clearMaxDevices' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has MaxDevices => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxDevices' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Rule]', traits => ['NameInRequest'], request_name => 'rules' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDevicePool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::UpdateDevicePoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateDevicePool - Arguments for method UpdateDevicePool on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDevicePool on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method UpdateDevicePool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDevicePool.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
   # To update a device pool
   # The following example updates the specified device pool with a new name and
   # description. It also enables remote access of devices in the device pool.
    my $UpdateDevicePoolResult = $devicefarm->UpdateDevicePool(
      {
        'Arn' =>
'arn:aws:devicefarm:us-west-2::devicepool:082d10e5-d7d7-48a5-ba5c-12345EXAMPLE',
        'Description' => 'NewDescription',
        'Name'        => 'NewName',
        'Rules'       => [

          {
            'Attribute' => 'REMOTE_ACCESS_ENABLED',
            'Operator'  => 'EQUALS',
            'Value'     => 'True'
          }
        ]
      }
    );

    # Results:
    my $devicePool = $UpdateDevicePoolResult->devicePool;

    # Returns a L<Paws::DeviceFarm::UpdateDevicePoolResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/UpdateDevicePool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resourc Name (ARN) of the Device Farm device pool you wish
to update.



=head2 ClearMaxDevices => Bool

Sets whether the C<maxDevices> parameter applies to your device pool.
If you set this parameter to C<true>, the C<maxDevices> parameter does
not apply, and Device Farm does not limit the number of devices that it
adds to your device pool. In this case, Device Farm adds all available
devices that meet the criteria that are specified for the C<rules>
parameter.

If you use this parameter in your request, you cannot use the
C<maxDevices> parameter in the same request.



=head2 Description => Str

A description of the device pool you wish to update.



=head2 MaxDevices => Int

The number of devices that Device Farm can add to your device pool.
Device Farm adds devices that are available and that meet the criteria
that you assign for the C<rules> parameter. Depending on how many
devices meet these constraints, your device pool might contain fewer
devices than the value for this parameter.

By specifying the maximum number of devices, you can control the costs
that you incur by running tests.

If you use this parameter in your request, you cannot use the
C<clearMaxDevices> parameter in the same request.



=head2 Name => Str

A string representing the name of the device pool you wish to update.



=head2 Rules => ArrayRef[L<Paws::DeviceFarm::Rule>]

Represents the rules you wish to modify for the device pool. Updating
rules is optional; however, if you choose to update rules for your
request, the update will replace the existing rules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDevicePool in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

