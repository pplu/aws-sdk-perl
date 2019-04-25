package Paws::EC2::ImportInstanceLaunchSpecification;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str', request_name => 'additionalInfo', traits => ['NameInRequest']);
  has Architecture => (is => 'ro', isa => 'Str', request_name => 'architecture', traits => ['NameInRequest']);
  has GroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'GroupId', traits => ['NameInRequest']);
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'GroupName', traits => ['NameInRequest']);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Str', request_name => 'instanceInitiatedShutdownBehavior', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has Monitoring => (is => 'ro', isa => 'Bool', request_name => 'monitoring', traits => ['NameInRequest']);
  has Placement => (is => 'ro', isa => 'Paws::EC2::Placement', request_name => 'placement', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has UserData => (is => 'ro', isa => 'Paws::EC2::UserData', request_name => 'userData', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportInstanceLaunchSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ImportInstanceLaunchSpecification object:

  $service_obj->Method(Att1 => { AdditionalInfo => $value, ..., UserData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ImportInstanceLaunchSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalInfo

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AdditionalInfo => Str

  Reserved.


=head2 Architecture => Str

  The architecture of the instance.


=head2 GroupIds => ArrayRef[Str|Undef]

  One or more security group IDs.


=head2 GroupNames => ArrayRef[Str|Undef]

  One or more security group names.


=head2 InstanceInitiatedShutdownBehavior => Str

  Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).


=head2 InstanceType => Str

  The instance type. For more information about the instance types that
you can import, see Instance Types
(https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-instance-types)
in the VM Import/Export User Guide.


=head2 Monitoring => Bool

  Indicates whether monitoring is enabled.


=head2 Placement => L<Paws::EC2::Placement>

  The placement information for the instance.


=head2 PrivateIpAddress => Str

  [EC2-VPC] An available IP address from the IP address range of the
subnet.


=head2 SubnetId => Str

  [EC2-VPC] The ID of the subnet in which to launch the instance.


=head2 UserData => L<Paws::EC2::UserData>

  The Base64-encoded user data to make available to the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
