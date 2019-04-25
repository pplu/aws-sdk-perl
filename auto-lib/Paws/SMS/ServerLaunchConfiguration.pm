package Paws::SMS::ServerLaunchConfiguration;
  use Moose;
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool', request_name => 'associatePublicIpAddress', traits => ['NameInRequest']);
  has Ec2KeyName => (is => 'ro', isa => 'Str', request_name => 'ec2KeyName', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has LogicalId => (is => 'ro', isa => 'Str', request_name => 'logicalId', traits => ['NameInRequest']);
  has SecurityGroup => (is => 'ro', isa => 'Str', request_name => 'securityGroup', traits => ['NameInRequest']);
  has Server => (is => 'ro', isa => 'Paws::SMS::Server', request_name => 'server', traits => ['NameInRequest']);
  has Subnet => (is => 'ro', isa => 'Str', request_name => 'subnet', traits => ['NameInRequest']);
  has UserData => (is => 'ro', isa => 'Paws::SMS::UserData', request_name => 'userData', traits => ['NameInRequest']);
  has Vpc => (is => 'ro', isa => 'Str', request_name => 'vpc', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::ServerLaunchConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::ServerLaunchConfiguration object:

  $service_obj->Method(Att1 => { AssociatePublicIpAddress => $value, ..., Vpc => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::ServerLaunchConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatePublicIpAddress

=head1 DESCRIPTION

Launch configuration for a server.

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

  If true, a publicly accessible IP address is created when launching the
server.


=head2 Ec2KeyName => Str

  Name of the EC2 SSH Key to be used for connecting to the launched
server.


=head2 InstanceType => Str

  Instance type to be used for launching the server.


=head2 LogicalId => Str

  Logical ID of the server in the Amazon CloudFormation template.


=head2 SecurityGroup => Str

  Identifier of the security group that applies to the launched server.


=head2 Server => L<Paws::SMS::Server>

  Identifier of the server the launch configuration is associated with.


=head2 Subnet => Str

  Identifier of the subnet the server should be launched into.


=head2 UserData => L<Paws::SMS::UserData>

  Location of the user-data script to be executed when launching the
server.


=head2 Vpc => Str

  Identifier of the VPC the server should be launched into.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

