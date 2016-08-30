package Paws::EC2::ImportInstanceLaunchSpecification;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str', xmlname => 'additionalInfo', traits => ['Unwrapped']);
  has Architecture => (is => 'ro', isa => 'Str', xmlname => 'architecture', traits => ['Unwrapped']);
  has GroupIds => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'GroupId', traits => ['Unwrapped']);
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'GroupName', traits => ['Unwrapped']);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Str', xmlname => 'instanceInitiatedShutdownBehavior', traits => ['Unwrapped']);
  has InstanceType => (is => 'ro', isa => 'Str', xmlname => 'instanceType', traits => ['Unwrapped']);
  has Monitoring => (is => 'ro', isa => 'Bool', xmlname => 'monitoring', traits => ['Unwrapped']);
  has Placement => (is => 'ro', isa => 'Paws::EC2::Placement', xmlname => 'placement', traits => ['Unwrapped']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', xmlname => 'privateIpAddress', traits => ['Unwrapped']);
  has SubnetId => (is => 'ro', isa => 'Str', xmlname => 'subnetId', traits => ['Unwrapped']);
  has UserData => (is => 'ro', isa => 'Paws::EC2::UserData', xmlname => 'userData', traits => ['Unwrapped']);
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


=head2 GroupIds => ArrayRef[Str]

  One or more security group IDs.


=head2 GroupNames => ArrayRef[Str]

  One or more security group names.


=head2 InstanceInitiatedShutdownBehavior => Str

  Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).


=head2 InstanceType => Str

  The instance type. For more information about the instance types that
you can import, see Instance Types in the VM Import/Export User Guide.


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

  The user data to make available to the instance. If you are using an
AWS SDK or command line tool, Base64-encoding is performed for you, and
you can load the text from a file. Otherwise, you must provide
Base64-encoded text.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
