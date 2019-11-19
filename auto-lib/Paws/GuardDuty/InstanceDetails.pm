# Generated from default/object.tt
package Paws::GuardDuty::InstanceDetails;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GuardDuty::Types qw/GuardDuty_NetworkInterface GuardDuty_IamInstanceProfile GuardDuty_ProductCode GuardDuty_Tag/;
  has AvailabilityZone => (is => 'ro', isa => Str);
  has IamInstanceProfile => (is => 'ro', isa => GuardDuty_IamInstanceProfile);
  has ImageDescription => (is => 'ro', isa => Str);
  has ImageId => (is => 'ro', isa => Str);
  has InstanceId => (is => 'ro', isa => Str);
  has InstanceState => (is => 'ro', isa => Str);
  has InstanceType => (is => 'ro', isa => Str);
  has LaunchTime => (is => 'ro', isa => Str);
  has NetworkInterfaces => (is => 'ro', isa => ArrayRef[GuardDuty_NetworkInterface]);
  has Platform => (is => 'ro', isa => Str);
  has ProductCodes => (is => 'ro', isa => ArrayRef[GuardDuty_ProductCode]);
  has Tags => (is => 'ro', isa => ArrayRef[GuardDuty_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Platform' => {
                               'type' => 'Str'
                             },
               'IamInstanceProfile' => {
                                         'type' => 'GuardDuty_IamInstanceProfile',
                                         'class' => 'Paws::GuardDuty::IamInstanceProfile'
                                       },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'ImageDescription' => {
                                       'type' => 'Str'
                                     },
               'LaunchTime' => {
                                 'type' => 'Str'
                               },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'InstanceState' => {
                                    'type' => 'Str'
                                  },
               'Tags' => {
                           'class' => 'Paws::GuardDuty::Tag',
                           'type' => 'ArrayRef[GuardDuty_Tag]'
                         },
               'NetworkInterfaces' => {
                                        'type' => 'ArrayRef[GuardDuty_NetworkInterface]',
                                        'class' => 'Paws::GuardDuty::NetworkInterface'
                                      },
               'ImageId' => {
                              'type' => 'Str'
                            },
               'ProductCodes' => {
                                   'type' => 'ArrayRef[GuardDuty_ProductCode]',
                                   'class' => 'Paws::GuardDuty::ProductCode'
                                 },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'IamInstanceProfile' => 'iamInstanceProfile',
                       'InstanceType' => 'instanceType',
                       'Platform' => 'platform',
                       'InstanceState' => 'instanceState',
                       'ImageDescription' => 'imageDescription',
                       'LaunchTime' => 'launchTime',
                       'InstanceId' => 'instanceId',
                       'Tags' => 'tags',
                       'NetworkInterfaces' => 'networkInterfaces',
                       'ImageId' => 'imageId',
                       'ProductCodes' => 'productCodes',
                       'AvailabilityZone' => 'availabilityZone'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::InstanceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::InstanceDetails object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::InstanceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Contains information about the details of an instance.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The availability zone of the EC2 instance.


=head2 IamInstanceProfile => GuardDuty_IamInstanceProfile

  The profile information of the EC2 instance.


=head2 ImageDescription => Str

  The image description of the EC2 instance.


=head2 ImageId => Str

  The image ID of the EC2 instance.


=head2 InstanceId => Str

  The ID of the EC2 instance.


=head2 InstanceState => Str

  The state of the EC2 instance.


=head2 InstanceType => Str

  The type of the EC2 instance.


=head2 LaunchTime => Str

  The launch time of the EC2 instance.


=head2 NetworkInterfaces => ArrayRef[GuardDuty_NetworkInterface]

  The network interface information of the EC2 instance.


=head2 Platform => Str

  The platform of the EC2 instance.


=head2 ProductCodes => ArrayRef[GuardDuty_ProductCode]

  The product code of the EC2 instance.


=head2 Tags => ArrayRef[GuardDuty_Tag]

  The tags of the EC2 instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

