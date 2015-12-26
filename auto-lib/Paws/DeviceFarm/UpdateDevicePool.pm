
package Paws::DeviceFarm::UpdateDevicePool;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Rule]', traits => ['NameInRequest'], request_name => 'rules' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDevicePool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::UpdateDevicePoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateDevicePool - Arguments for method UpdateDevicePool on Paws::DeviceFarm

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDevicePool on the 
AWS Device Farm service. Use the attributes of this class
as arguments to method UpdateDevicePool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDevicePool.

As an example:

  $service_obj->UpdateDevicePool(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resourc Name (ARN) of the Device Farm device pool you wish
to update.



=head2 Description => Str

A description of the device pool you wish to update.



=head2 Name => Str

A string representing the name of the device pool you wish to update.



=head2 Rules => ArrayRef[L<Paws::DeviceFarm::Rule>]

Represents the rules you wish to modify for the device pool. Updating
rules is optional; however, if you choose to update rules for your
request, the update will replace the existing rules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDevicePool in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

