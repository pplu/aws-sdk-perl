package Paws::EC2::ImportInstanceLaunchSpecification;
  use Moo;  use Types::Standard qw/Str Undef ArrayRef Bool/;
  use Paws::EC2::Types qw/EC2_Placement EC2_UserData/;
  has AdditionalInfo => (is => 'ro', isa => Str);
  has Architecture => (is => 'ro', isa => Str);
  has GroupIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has GroupNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => Str);
  has InstanceType => (is => 'ro', isa => Str);
  has Monitoring => (is => 'ro', isa => Bool);
  has Placement => (is => 'ro', isa => EC2_Placement);
  has PrivateIpAddress => (is => 'ro', isa => Str);
  has SubnetId => (is => 'ro', isa => Str);
  has UserData => (is => 'ro', isa => EC2_UserData);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Placement' => 'placement',
                       'GroupIds' => 'GroupId',
                       'PrivateIpAddress' => 'privateIpAddress',
                       'AdditionalInfo' => 'additionalInfo',
                       'Monitoring' => 'monitoring',
                       'UserData' => 'userData',
                       'InstanceInitiatedShutdownBehavior' => 'instanceInitiatedShutdownBehavior',
                       'Architecture' => 'architecture',
                       'InstanceType' => 'instanceType',
                       'GroupNames' => 'GroupName',
                       'SubnetId' => 'subnetId'
                     },
  'types' => {
               'Architecture' => {
                                   'type' => 'Str'
                                 },
               'InstanceInitiatedShutdownBehavior' => {
                                                        'type' => 'Str'
                                                      },
               'UserData' => {
                               'class' => 'Paws::EC2::UserData',
                               'type' => 'EC2_UserData'
                             },
               'Monitoring' => {
                                 'type' => 'Bool'
                               },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'GroupNames' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'GroupIds' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               'Placement' => {
                                'class' => 'Paws::EC2::Placement',
                                'type' => 'EC2_Placement'
                              },
               'AdditionalInfo' => {
                                     'type' => 'Str'
                                   },
               'PrivateIpAddress' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }

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

  The security group IDs.


=head2 GroupNames => ArrayRef[Str|Undef]

  The security group names.


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


=head2 Placement => EC2_Placement

  The placement information for the instance.


=head2 PrivateIpAddress => Str

  [EC2-VPC] An available IP address from the IP address range of the
subnet.


=head2 SubnetId => Str

  [EC2-VPC] The ID of the subnet in which to launch the instance.


=head2 UserData => EC2_UserData

  The Base64-encoded user data to make available to the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
