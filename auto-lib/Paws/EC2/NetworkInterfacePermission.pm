package Paws::EC2::NetworkInterfacePermission;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_NetworkInterfacePermissionState/;
  has AwsAccountId => (is => 'ro', isa => Str);
  has AwsService => (is => 'ro', isa => Str);
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has NetworkInterfacePermissionId => (is => 'ro', isa => Str);
  has Permission => (is => 'ro', isa => Str);
  has PermissionState => (is => 'ro', isa => EC2_NetworkInterfacePermissionState);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'AwsService' => {
                                 'type' => 'Str'
                               },
               'Permission' => {
                                 'type' => 'Str'
                               },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'PermissionState' => {
                                      'class' => 'Paws::EC2::NetworkInterfacePermissionState',
                                      'type' => 'EC2_NetworkInterfacePermissionState'
                                    },
               'AwsAccountId' => {
                                   'type' => 'Str'
                                 },
               'NetworkInterfacePermissionId' => {
                                                   'type' => 'Str'
                                                 }
             },
  'NameInRequest' => {
                       'AwsService' => 'awsService',
                       'Permission' => 'permission',
                       'NetworkInterfaceId' => 'networkInterfaceId',
                       'PermissionState' => 'permissionState',
                       'AwsAccountId' => 'awsAccountId',
                       'NetworkInterfacePermissionId' => 'networkInterfacePermissionId'
                     }
}
;
      return $Params_map;
    }

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


=head2 PermissionState => EC2_NetworkInterfacePermissionState

  Information about the state of the permission.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
