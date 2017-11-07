package Paws::EC2::NetworkInterfacePermission;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', request_name => 'awsAccountId', traits => ['NameInRequest']);
  has AwsService => (is => 'ro', isa => 'Str', request_name => 'awsService', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has NetworkInterfacePermissionId => (is => 'ro', isa => 'Str', request_name => 'networkInterfacePermissionId', traits => ['NameInRequest']);
  has Permission => (is => 'ro', isa => 'Str', request_name => 'permission', traits => ['NameInRequest']);
  has PermissionState => (is => 'ro', isa => 'Paws::EC2::NetworkInterfacePermissionState', request_name => 'permissionState', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkInterfacePermission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkInterfacePermission object:

  $service_obj->Method(Att1 => { AwsAccountId => $value, ..., PermissionState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkInterfacePermission object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsAccountId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AwsAccountId => Str

  The AWS account ID.


=head2 AwsService => Str

  The AWS service.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 NetworkInterfacePermissionId => Str

  The ID of the network interface permission.


=head2 Permission => Str

  The type of permission.


=head2 PermissionState => L<Paws::EC2::NetworkInterfacePermissionState>

  Information about the state of the permission.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
