# Generated from default/object.tt
package Paws::SMS::ServerLaunchConfiguration;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::SMS::Types qw/SMS_UserData SMS_Server/;
  has AssociatePublicIpAddress => (is => 'ro', isa => Bool);
  has Ec2KeyName => (is => 'ro', isa => Str);
  has InstanceType => (is => 'ro', isa => Str);
  has LogicalId => (is => 'ro', isa => Str);
  has SecurityGroup => (is => 'ro', isa => Str);
  has Server => (is => 'ro', isa => SMS_Server);
  has Subnet => (is => 'ro', isa => Str);
  has UserData => (is => 'ro', isa => SMS_UserData);
  has Vpc => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecurityGroup' => {
                                    'type' => 'Str'
                                  },
               'Subnet' => {
                             'type' => 'Str'
                           },
               'Server' => {
                             'class' => 'Paws::SMS::Server',
                             'type' => 'SMS_Server'
                           },
               'LogicalId' => {
                                'type' => 'Str'
                              },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'Vpc' => {
                          'type' => 'Str'
                        },
               'AssociatePublicIpAddress' => {
                                               'type' => 'Bool'
                                             },
               'UserData' => {
                               'class' => 'Paws::SMS::UserData',
                               'type' => 'SMS_UserData'
                             },
               'Ec2KeyName' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'SecurityGroup' => 'securityGroup',
                       'Subnet' => 'subnet',
                       'Server' => 'server',
                       'LogicalId' => 'logicalId',
                       'InstanceType' => 'instanceType',
                       'Vpc' => 'vpc',
                       'AssociatePublicIpAddress' => 'associatePublicIpAddress',
                       'UserData' => 'userData',
                       'Ec2KeyName' => 'ec2KeyName'
                     }
}
;
    return $Params_map;
  }


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


=head2 Server => SMS_Server

  Identifier of the server the launch configuration is associated with.


=head2 Subnet => Str

  Identifier of the subnet the server should be launched into.


=head2 UserData => SMS_UserData

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

