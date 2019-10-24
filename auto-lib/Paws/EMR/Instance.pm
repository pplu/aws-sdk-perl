# Generated from default/object.tt
package Paws::EMR::Instance;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::EMR::Types qw/EMR_InstanceStatus EMR_EbsVolume/;
  has EbsVolumes => (is => 'ro', isa => ArrayRef[EMR_EbsVolume]);
  has Ec2InstanceId => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has InstanceFleetId => (is => 'ro', isa => Str);
  has InstanceGroupId => (is => 'ro', isa => Str);
  has InstanceType => (is => 'ro', isa => Str);
  has Market => (is => 'ro', isa => Str);
  has PrivateDnsName => (is => 'ro', isa => Str);
  has PrivateIpAddress => (is => 'ro', isa => Str);
  has PublicDnsName => (is => 'ro', isa => Str);
  has PublicIpAddress => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => EMR_InstanceStatus);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'Id' => {
                         'type' => 'Str'
                       },
               'Status' => {
                             'class' => 'Paws::EMR::InstanceStatus',
                             'type' => 'EMR_InstanceStatus'
                           },
               'PublicIpAddress' => {
                                      'type' => 'Str'
                                    },
               'InstanceFleetId' => {
                                      'type' => 'Str'
                                    },
               'InstanceGroupId' => {
                                      'type' => 'Str'
                                    },
               'PrivateIpAddress' => {
                                       'type' => 'Str'
                                     },
               'Market' => {
                             'type' => 'Str'
                           },
               'EbsVolumes' => {
                                 'class' => 'Paws::EMR::EbsVolume',
                                 'type' => 'ArrayRef[EMR_EbsVolume]'
                               },
               'PrivateDnsName' => {
                                     'type' => 'Str'
                                   },
               'PublicDnsName' => {
                                    'type' => 'Str'
                                  },
               'Ec2InstanceId' => {
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

Paws::EMR::Instance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::Instance object:

  $service_obj->Method(Att1 => { EbsVolumes => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::Instance object:

  $result = $service_obj->Method(...);
  $result->Att1->EbsVolumes

=head1 DESCRIPTION

Represents an EC2 instance provisioned as part of cluster.

=head1 ATTRIBUTES


=head2 EbsVolumes => ArrayRef[EMR_EbsVolume]

  The list of EBS volumes that are attached to this instance.


=head2 Ec2InstanceId => Str

  The unique identifier of the instance in Amazon EC2.


=head2 Id => Str

  The unique identifier for the instance in Amazon EMR.


=head2 InstanceFleetId => Str

  The unique identifier of the instance fleet to which an EC2 instance
belongs.


=head2 InstanceGroupId => Str

  The identifier of the instance group to which this instance belongs.


=head2 InstanceType => Str

  The EC2 instance type, for example C<m3.xlarge>.


=head2 Market => Str

  The instance purchasing option. Valid values are C<ON_DEMAND> or
C<SPOT>.


=head2 PrivateDnsName => Str

  The private DNS name of the instance.


=head2 PrivateIpAddress => Str

  The private IP address of the instance.


=head2 PublicDnsName => Str

  The public DNS name of the instance.


=head2 PublicIpAddress => Str

  The public IP address of the instance.


=head2 Status => EMR_InstanceStatus

  The current status of the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

