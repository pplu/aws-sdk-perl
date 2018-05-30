
package Paws::DeviceFarm::CreateDevicePool;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' , required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Rule]', traits => ['NameInRequest'], request_name => 'rules' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDevicePool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::CreateDevicePoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateDevicePool - Arguments for method CreateDevicePool on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDevicePool on the 
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method CreateDevicePool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDevicePool.

As an example:

  $service_obj->CreateDevicePool(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/CreateDevicePool>
=head1 ATTRIBUTES


=head2 Description => Str

The device pool's description.



=head2 B<REQUIRED> Name => Str

The device pool's name.



=head2 B<REQUIRED> ProjectArn => Str

The ARN of the project for the device pool.



=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::DeviceFarm::Rule>]

The device pool's rules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDevicePool in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

