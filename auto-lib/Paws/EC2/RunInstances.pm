
package Paws::EC2::RunInstances;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool Int Undef/;
  use Paws::EC2::Types qw/EC2_InstanceIpv6Address EC2_HibernationOptionsRequest EC2_CreditSpecificationRequest EC2_RunInstancesMonitoringEnabled EC2_TagSpecification EC2_IamInstanceProfileSpecification EC2_Placement EC2_InstanceNetworkInterfaceSpecification EC2_ElasticGpuSpecification EC2_ElasticInferenceAccelerator EC2_LaunchTemplateSpecification EC2_CapacityReservationSpecification EC2_LicenseConfigurationRequest EC2_InstanceMarketOptionsRequest EC2_BlockDeviceMapping EC2_CpuOptionsRequest/;
  has AdditionalInfo => (is => 'ro', isa => Str, predicate => 1);
  has BlockDeviceMappings => (is => 'ro', isa => ArrayRef[EC2_BlockDeviceMapping], predicate => 1);
  has CapacityReservationSpecification => (is => 'ro', isa => EC2_CapacityReservationSpecification, predicate => 1);
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has CpuOptions => (is => 'ro', isa => EC2_CpuOptionsRequest, predicate => 1);
  has CreditSpecification => (is => 'ro', isa => EC2_CreditSpecificationRequest, predicate => 1);
  has DisableApiTermination => (is => 'ro', isa => Bool, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has EbsOptimized => (is => 'ro', isa => Bool, predicate => 1);
  has ElasticGpuSpecification => (is => 'ro', isa => ArrayRef[EC2_ElasticGpuSpecification], predicate => 1);
  has ElasticInferenceAccelerators => (is => 'ro', isa => ArrayRef[EC2_ElasticInferenceAccelerator], predicate => 1);
  has HibernationOptions => (is => 'ro', isa => EC2_HibernationOptionsRequest, predicate => 1);
  has IamInstanceProfile => (is => 'ro', isa => EC2_IamInstanceProfileSpecification, predicate => 1);
  has ImageId => (is => 'ro', isa => Str, predicate => 1);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => Str, predicate => 1);
  has InstanceMarketOptions => (is => 'ro', isa => EC2_InstanceMarketOptionsRequest, predicate => 1);
  has InstanceType => (is => 'ro', isa => Str, predicate => 1);
  has Ipv6AddressCount => (is => 'ro', isa => Int, predicate => 1);
  has Ipv6Addresses => (is => 'ro', isa => ArrayRef[EC2_InstanceIpv6Address], predicate => 1);
  has KernelId => (is => 'ro', isa => Str, predicate => 1);
  has KeyName => (is => 'ro', isa => Str, predicate => 1);
  has LaunchTemplate => (is => 'ro', isa => EC2_LaunchTemplateSpecification, predicate => 1);
  has LicenseSpecifications => (is => 'ro', isa => ArrayRef[EC2_LicenseConfigurationRequest], predicate => 1);
  has MaxCount => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has MinCount => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has Monitoring => (is => 'ro', isa => EC2_RunInstancesMonitoringEnabled, predicate => 1);
  has NetworkInterfaces => (is => 'ro', isa => ArrayRef[EC2_InstanceNetworkInterfaceSpecification], predicate => 1);
  has Placement => (is => 'ro', isa => EC2_Placement, predicate => 1);
  has PrivateIpAddress => (is => 'ro', isa => Str, predicate => 1);
  has RamdiskId => (is => 'ro', isa => Str, predicate => 1);
  has SecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has SubnetId => (is => 'ro', isa => Str, predicate => 1);
  has TagSpecifications => (is => 'ro', isa => ArrayRef[EC2_TagSpecification], predicate => 1);
  has UserData => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RunInstances');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::Reservation');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Ipv6Addresses' => {
                                    'class' => 'Paws::EC2::InstanceIpv6Address',
                                    'type' => 'ArrayRef[EC2_InstanceIpv6Address]'
                                  },
               'MaxCount' => {
                               'type' => 'Int'
                             },
               'ImageId' => {
                              'type' => 'Str'
                            },
               'TagSpecifications' => {
                                        'class' => 'Paws::EC2::TagSpecification',
                                        'type' => 'ArrayRef[EC2_TagSpecification]'
                                      },
               'SecurityGroupIds' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'KeyName' => {
                              'type' => 'Str'
                            },
               'AdditionalInfo' => {
                                     'type' => 'Str'
                                   },
               'Placement' => {
                                'class' => 'Paws::EC2::Placement',
                                'type' => 'EC2_Placement'
                              },
               'Monitoring' => {
                                 'class' => 'Paws::EC2::RunInstancesMonitoringEnabled',
                                 'type' => 'EC2_RunInstancesMonitoringEnabled'
                               },
               'InstanceInitiatedShutdownBehavior' => {
                                                        'type' => 'Str'
                                                      },
               'HibernationOptions' => {
                                         'class' => 'Paws::EC2::HibernationOptionsRequest',
                                         'type' => 'EC2_HibernationOptionsRequest'
                                       },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'LicenseSpecifications' => {
                                            'class' => 'Paws::EC2::LicenseConfigurationRequest',
                                            'type' => 'ArrayRef[EC2_LicenseConfigurationRequest]'
                                          },
               'InstanceMarketOptions' => {
                                            'class' => 'Paws::EC2::InstanceMarketOptionsRequest',
                                            'type' => 'EC2_InstanceMarketOptionsRequest'
                                          },
               'UserData' => {
                               'type' => 'Str'
                             },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'NetworkInterfaces' => {
                                        'class' => 'Paws::EC2::InstanceNetworkInterfaceSpecification',
                                        'type' => 'ArrayRef[EC2_InstanceNetworkInterfaceSpecification]'
                                      },
               'BlockDeviceMappings' => {
                                          'class' => 'Paws::EC2::BlockDeviceMapping',
                                          'type' => 'ArrayRef[EC2_BlockDeviceMapping]'
                                        },
               'ElasticGpuSpecification' => {
                                              'class' => 'Paws::EC2::ElasticGpuSpecification',
                                              'type' => 'ArrayRef[EC2_ElasticGpuSpecification]'
                                            },
               'IamInstanceProfile' => {
                                         'class' => 'Paws::EC2::IamInstanceProfileSpecification',
                                         'type' => 'EC2_IamInstanceProfileSpecification'
                                       },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'CreditSpecification' => {
                                          'class' => 'Paws::EC2::CreditSpecificationRequest',
                                          'type' => 'EC2_CreditSpecificationRequest'
                                        },
               'LaunchTemplate' => {
                                     'class' => 'Paws::EC2::LaunchTemplateSpecification',
                                     'type' => 'EC2_LaunchTemplateSpecification'
                                   },
               'ElasticInferenceAccelerators' => {
                                                   'class' => 'Paws::EC2::ElasticInferenceAccelerator',
                                                   'type' => 'ArrayRef[EC2_ElasticInferenceAccelerator]'
                                                 },
               'KernelId' => {
                               'type' => 'Str'
                             },
               'PrivateIpAddress' => {
                                       'type' => 'Str'
                                     },
               'DisableApiTermination' => {
                                            'type' => 'Bool'
                                          },
               'CapacityReservationSpecification' => {
                                                       'class' => 'Paws::EC2::CapacityReservationSpecification',
                                                       'type' => 'EC2_CapacityReservationSpecification'
                                                     },
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'EbsOptimized' => {
                                   'type' => 'Bool'
                                 },
               'MinCount' => {
                               'type' => 'Int'
                             },
               'RamdiskId' => {
                                'type' => 'Str'
                              },
               'CpuOptions' => {
                                 'class' => 'Paws::EC2::CpuOptionsRequest',
                                 'type' => 'EC2_CpuOptionsRequest'
                               },
               'Ipv6AddressCount' => {
                                       'type' => 'Int'
                                     }
             },
  'NameInRequest' => {
                       'Ipv6Addresses' => 'Ipv6Address',
                       'TagSpecifications' => 'TagSpecification',
                       'ElasticInferenceAccelerators' => 'ElasticInferenceAccelerator',
                       'PrivateIpAddress' => 'privateIpAddress',
                       'SecurityGroupIds' => 'SecurityGroupId',
                       'DisableApiTermination' => 'disableApiTermination',
                       'AdditionalInfo' => 'additionalInfo',
                       'InstanceInitiatedShutdownBehavior' => 'instanceInitiatedShutdownBehavior',
                       'DryRun' => 'dryRun',
                       'ClientToken' => 'clientToken',
                       'EbsOptimized' => 'ebsOptimized',
                       'LicenseSpecifications' => 'LicenseSpecification',
                       'NetworkInterfaces' => 'networkInterface',
                       'BlockDeviceMappings' => 'BlockDeviceMapping',
                       'IamInstanceProfile' => 'iamInstanceProfile',
                       'SecurityGroups' => 'SecurityGroup'
                     },
  'IsRequired' => {
                    'MaxCount' => 1,
                    'MinCount' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RunInstances - Arguments for method RunInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RunInstances on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method RunInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RunInstances.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $Reservation = $ec2->RunInstances(
      MaxCount            => 1,
      MinCount            => 1,
      AdditionalInfo      => 'MyString',    # OPTIONAL
      BlockDeviceMappings => [
        {
          DeviceName => 'MyString',
          Ebs        => {
            DeleteOnTermination => 1,            # OPTIONAL
            Encrypted           => 1,            # OPTIONAL
            Iops                => 1,
            KmsKeyId            => 'MyString',
            SnapshotId          => 'MyString',
            VolumeSize          => 1,
            VolumeType =>
              'standard',    # values: standard, io1, gp2, sc1, st1; OPTIONAL
          },    # OPTIONAL
          NoDevice    => 'MyString',
          VirtualName => 'MyString',
        },
        ...
      ],        # OPTIONAL
      CapacityReservationSpecification => {
        CapacityReservationPreference => 'open',  # values: open, none; OPTIONAL
        CapacityReservationTarget => { CapacityReservationId => 'MyString', }
        ,                                         # OPTIONAL
      },    # OPTIONAL
      ClientToken => 'MyString',    # OPTIONAL
      CpuOptions  => {
        CoreCount      => 1,
        ThreadsPerCore => 1,
      },                            # OPTIONAL
      CreditSpecification => {
        CpuCredits => 'MyString',

      },                            # OPTIONAL
      DisableApiTermination   => 1, # OPTIONAL
      DryRun                  => 1, # OPTIONAL
      EbsOptimized            => 1, # OPTIONAL
      ElasticGpuSpecification => [
        {
          Type => 'MyString',

        },
        ...
      ],                            # OPTIONAL
      ElasticInferenceAccelerators => [
        {
          Type => 'MyString',

        },
        ...
      ],                            # OPTIONAL
      HibernationOptions => {
        Configured => 1,            # OPTIONAL
      },    # OPTIONAL
      IamInstanceProfile => {
        Arn  => 'MyString',
        Name => 'MyString',
      },    # OPTIONAL
      ImageId                           => 'MyString',    # OPTIONAL
      InstanceInitiatedShutdownBehavior => 'stop',        # OPTIONAL
      InstanceMarketOptions             => {
        MarketType  => 'spot',    # values: spot; OPTIONAL
        SpotOptions => {
          BlockDurationMinutes => 1,
          InstanceInterruptionBehavior =>
            'hibernate',          # values: hibernate, stop, terminate; OPTIONAL
          MaxPrice => 'MyString',
          SpotInstanceType =>
            'one-time',           # values: one-time, persistent; OPTIONAL
          ValidUntil => '1970-01-01T01:00:00',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      InstanceType     => 't1.micro',                                 # OPTIONAL
      Ipv6AddressCount => 1,                                          # OPTIONAL
      Ipv6Addresses    => [ { Ipv6Address => 'MyString', }, ... ],    # OPTIONAL
      KernelId         => 'MyString',                                 # OPTIONAL
      KeyName          => 'MyString',                                 # OPTIONAL
      LaunchTemplate   => {
        LaunchTemplateId   => 'MyString',
        LaunchTemplateName => 'MyString',
        Version            => 'MyString',
      },                                                              # OPTIONAL
      LicenseSpecifications =>
        [ { LicenseConfigurationArn => 'MyString', }, ... ],          # OPTIONAL
      Monitoring => {
        Enabled => 1,                                                 # OPTIONAL

      },    # OPTIONAL
      NetworkInterfaces => [
        {
          AssociatePublicIpAddress => 1,                      # OPTIONAL
          DeleteOnTermination      => 1,                      # OPTIONAL
          Description              => 'MyString',
          DeviceIndex              => 1,
          Groups                   => [ 'MyString', ... ],    # OPTIONAL
          InterfaceType            => 'MyString',
          Ipv6AddressCount         => 1,
          Ipv6Addresses      => [ { Ipv6Address => 'MyString', }, ... ],
          NetworkInterfaceId => 'MyString',
          PrivateIpAddress   => 'MyString',
          PrivateIpAddresses => [
            {
              Primary          => 1,                          # OPTIONAL
              PrivateIpAddress => 'MyString',
            },
            ...
          ],                                                  # OPTIONAL
          SecondaryPrivateIpAddressCount => 1,
          SubnetId                       => 'MyString',
        },
        ...
      ],                                                      # OPTIONAL
      Placement => {
        Affinity         => 'MyString',
        AvailabilityZone => 'MyString',
        GroupName        => 'MyString',
        HostId           => 'MyString',
        PartitionNumber  => 1,
        SpreadDomain     => 'MyString',
        Tenancy => 'default',    # values: default, dedicated, host; OPTIONAL
      },    # OPTIONAL
      PrivateIpAddress  => 'MyString',             # OPTIONAL
      RamdiskId         => 'MyString',             # OPTIONAL
      SecurityGroupIds  => [ 'MyString', ... ],    # OPTIONAL
      SecurityGroups    => [ 'MyString', ... ],    # OPTIONAL
      SubnetId          => 'MyString',             # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'client-vpn-endpoint'
          , # values: client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, elastic-ip, fleet, fpga-image, host-reservation, image, instance, internet-gateway, launch-template, natgateway, network-acl, network-interface, reserved-instances, route-table, security-group, snapshot, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',
              Value => 'MyString',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      UserData => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Groups        = $Reservation->Groups;
    my $Instances     = $Reservation->Instances;
    my $OwnerId       = $Reservation->OwnerId;
    my $RequesterId   = $Reservation->RequesterId;
    my $ReservationId = $Reservation->ReservationId;

    # Returns a L<Paws::EC2::Reservation> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/RunInstances>

=head1 ATTRIBUTES


=head2 AdditionalInfo => Str

Reserved.



=head2 BlockDeviceMappings => ArrayRef[EC2_BlockDeviceMapping]

The block device mapping entries.



=head2 CapacityReservationSpecification => EC2_CapacityReservationSpecification

Information about the Capacity Reservation targeting option. If you do
not specify this parameter, the instance's Capacity Reservation
preference defaults to C<open>, which enables it to run in any open
Capacity Reservation that has matching attributes (instance type,
platform, Availability Zone).



=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).

Constraints: Maximum 64 ASCII characters



=head2 CpuOptions => EC2_CpuOptionsRequest

The CPU options for the instance. For more information, see Optimizing
CPU Options
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 CreditSpecification => EC2_CreditSpecificationRequest

The credit option for CPU usage of the T2 or T3 instance. Valid values
are C<standard> and C<unlimited>. To change this attribute after
launch, use ModifyInstanceCreditSpecification
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceCreditSpecification.html).
For more information, see Burstable Performance Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Default: C<standard> (T2 instances) or C<unlimited> (T3 instances)



=head2 DisableApiTermination => Bool

If you set this parameter to C<true>, you can't terminate the instance
using the Amazon EC2 console, CLI, or API; otherwise, you can. To
change this attribute after launch, use ModifyInstanceAttribute
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html).
Alternatively, if you set C<InstanceInitiatedShutdownBehavior> to
C<terminate>, you can terminate the instance by running the shutdown
command from the instance.

Default: C<false>



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EbsOptimized => Bool

Indicates whether the instance is optimized for Amazon EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal Amazon EBS I/O
performance. This optimization isn't available with all instance types.
Additional usage charges apply when using an EBS-optimized instance.

Default: C<false>



=head2 ElasticGpuSpecification => ArrayRef[EC2_ElasticGpuSpecification]

An elastic GPU to associate with the instance. An Elastic GPU is a GPU
resource that you can attach to your Windows instance to accelerate the
graphics performance of your applications. For more information, see
Amazon EC2 Elastic GPUs
(https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 ElasticInferenceAccelerators => ArrayRef[EC2_ElasticInferenceAccelerator]

An elastic inference accelerator to associate with the instance.
Elastic inference accelerators are a resource you can attach to your
Amazon EC2 instances to accelerate your Deep Learning (DL) inference
workloads.



=head2 HibernationOptions => EC2_HibernationOptionsRequest

Indicates whether an instance is enabled for hibernation. For more
information, see Hibernate Your Instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in
the I<Amazon Elastic Compute Cloud User Guide>.



=head2 IamInstanceProfile => EC2_IamInstanceProfileSpecification

The IAM instance profile.



=head2 ImageId => Str

The ID of the AMI. An AMI ID is required to launch an instance and must
be specified here or in a launch template.



=head2 InstanceInitiatedShutdownBehavior => Str

Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).

Default: C<stop>

Valid values are: C<"stop">, C<"terminate">

=head2 InstanceMarketOptions => EC2_InstanceMarketOptionsRequest

The market (purchasing) option for the instances.

For RunInstances, persistent Spot Instance requests are only supported
when B<InstanceInterruptionBehavior> is set to either C<hibernate> or
C<stop>.



=head2 InstanceType => Str

The instance type. For more information, see Instance Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Default: C<m1.small>

Valid values are: C<"t1.micro">, C<"t2.nano">, C<"t2.micro">, C<"t2.small">, C<"t2.medium">, C<"t2.large">, C<"t2.xlarge">, C<"t2.2xlarge">, C<"t3.nano">, C<"t3.micro">, C<"t3.small">, C<"t3.medium">, C<"t3.large">, C<"t3.xlarge">, C<"t3.2xlarge">, C<"t3a.nano">, C<"t3a.micro">, C<"t3a.small">, C<"t3a.medium">, C<"t3a.large">, C<"t3a.xlarge">, C<"t3a.2xlarge">, C<"m1.small">, C<"m1.medium">, C<"m1.large">, C<"m1.xlarge">, C<"m3.medium">, C<"m3.large">, C<"m3.xlarge">, C<"m3.2xlarge">, C<"m4.large">, C<"m4.xlarge">, C<"m4.2xlarge">, C<"m4.4xlarge">, C<"m4.10xlarge">, C<"m4.16xlarge">, C<"m2.xlarge">, C<"m2.2xlarge">, C<"m2.4xlarge">, C<"cr1.8xlarge">, C<"r3.large">, C<"r3.xlarge">, C<"r3.2xlarge">, C<"r3.4xlarge">, C<"r3.8xlarge">, C<"r4.large">, C<"r4.xlarge">, C<"r4.2xlarge">, C<"r4.4xlarge">, C<"r4.8xlarge">, C<"r4.16xlarge">, C<"r5.large">, C<"r5.xlarge">, C<"r5.2xlarge">, C<"r5.4xlarge">, C<"r5.8xlarge">, C<"r5.12xlarge">, C<"r5.16xlarge">, C<"r5.24xlarge">, C<"r5.metal">, C<"r5a.large">, C<"r5a.xlarge">, C<"r5a.2xlarge">, C<"r5a.4xlarge">, C<"r5a.8xlarge">, C<"r5a.12xlarge">, C<"r5a.16xlarge">, C<"r5a.24xlarge">, C<"r5d.large">, C<"r5d.xlarge">, C<"r5d.2xlarge">, C<"r5d.4xlarge">, C<"r5d.8xlarge">, C<"r5d.12xlarge">, C<"r5d.16xlarge">, C<"r5d.24xlarge">, C<"r5d.metal">, C<"r5ad.large">, C<"r5ad.xlarge">, C<"r5ad.2xlarge">, C<"r5ad.4xlarge">, C<"r5ad.8xlarge">, C<"r5ad.12xlarge">, C<"r5ad.16xlarge">, C<"r5ad.24xlarge">, C<"x1.16xlarge">, C<"x1.32xlarge">, C<"x1e.xlarge">, C<"x1e.2xlarge">, C<"x1e.4xlarge">, C<"x1e.8xlarge">, C<"x1e.16xlarge">, C<"x1e.32xlarge">, C<"i2.xlarge">, C<"i2.2xlarge">, C<"i2.4xlarge">, C<"i2.8xlarge">, C<"i3.large">, C<"i3.xlarge">, C<"i3.2xlarge">, C<"i3.4xlarge">, C<"i3.8xlarge">, C<"i3.16xlarge">, C<"i3.metal">, C<"i3en.large">, C<"i3en.xlarge">, C<"i3en.2xlarge">, C<"i3en.3xlarge">, C<"i3en.6xlarge">, C<"i3en.12xlarge">, C<"i3en.24xlarge">, C<"hi1.4xlarge">, C<"hs1.8xlarge">, C<"c1.medium">, C<"c1.xlarge">, C<"c3.large">, C<"c3.xlarge">, C<"c3.2xlarge">, C<"c3.4xlarge">, C<"c3.8xlarge">, C<"c4.large">, C<"c4.xlarge">, C<"c4.2xlarge">, C<"c4.4xlarge">, C<"c4.8xlarge">, C<"c5.large">, C<"c5.xlarge">, C<"c5.2xlarge">, C<"c5.4xlarge">, C<"c5.9xlarge">, C<"c5.12xlarge">, C<"c5.18xlarge">, C<"c5.24xlarge">, C<"c5.metal">, C<"c5d.large">, C<"c5d.xlarge">, C<"c5d.2xlarge">, C<"c5d.4xlarge">, C<"c5d.9xlarge">, C<"c5d.18xlarge">, C<"c5n.large">, C<"c5n.xlarge">, C<"c5n.2xlarge">, C<"c5n.4xlarge">, C<"c5n.9xlarge">, C<"c5n.18xlarge">, C<"cc1.4xlarge">, C<"cc2.8xlarge">, C<"g2.2xlarge">, C<"g2.8xlarge">, C<"g3.4xlarge">, C<"g3.8xlarge">, C<"g3.16xlarge">, C<"g3s.xlarge">, C<"cg1.4xlarge">, C<"p2.xlarge">, C<"p2.8xlarge">, C<"p2.16xlarge">, C<"p3.2xlarge">, C<"p3.8xlarge">, C<"p3.16xlarge">, C<"p3dn.24xlarge">, C<"d2.xlarge">, C<"d2.2xlarge">, C<"d2.4xlarge">, C<"d2.8xlarge">, C<"f1.2xlarge">, C<"f1.4xlarge">, C<"f1.16xlarge">, C<"m5.large">, C<"m5.xlarge">, C<"m5.2xlarge">, C<"m5.4xlarge">, C<"m5.8xlarge">, C<"m5.12xlarge">, C<"m5.16xlarge">, C<"m5.24xlarge">, C<"m5.metal">, C<"m5a.large">, C<"m5a.xlarge">, C<"m5a.2xlarge">, C<"m5a.4xlarge">, C<"m5a.8xlarge">, C<"m5a.12xlarge">, C<"m5a.16xlarge">, C<"m5a.24xlarge">, C<"m5d.large">, C<"m5d.xlarge">, C<"m5d.2xlarge">, C<"m5d.4xlarge">, C<"m5d.8xlarge">, C<"m5d.12xlarge">, C<"m5d.16xlarge">, C<"m5d.24xlarge">, C<"m5d.metal">, C<"m5ad.large">, C<"m5ad.xlarge">, C<"m5ad.2xlarge">, C<"m5ad.4xlarge">, C<"m5ad.8xlarge">, C<"m5ad.12xlarge">, C<"m5ad.16xlarge">, C<"m5ad.24xlarge">, C<"h1.2xlarge">, C<"h1.4xlarge">, C<"h1.8xlarge">, C<"h1.16xlarge">, C<"z1d.large">, C<"z1d.xlarge">, C<"z1d.2xlarge">, C<"z1d.3xlarge">, C<"z1d.6xlarge">, C<"z1d.12xlarge">, C<"z1d.metal">, C<"u-6tb1.metal">, C<"u-9tb1.metal">, C<"u-12tb1.metal">, C<"a1.medium">, C<"a1.large">, C<"a1.xlarge">, C<"a1.2xlarge">, C<"a1.4xlarge">

=head2 Ipv6AddressCount => Int

[EC2-VPC] The number of IPv6 addresses to associate with the primary
network interface. Amazon EC2 chooses the IPv6 addresses from the range
of your subnet. You cannot specify this option and the option to assign
specific IPv6 addresses in the same request. You can specify this
option if you've specified a minimum number of instances to launch.

You cannot specify this option and the network interfaces option in the
same request.



=head2 Ipv6Addresses => ArrayRef[EC2_InstanceIpv6Address]

[EC2-VPC] The IPv6 addresses from the range of the subnet to associate
with the primary network interface. You cannot specify this option and
the option to assign a number of IPv6 addresses in the same request.
You cannot specify this option if you've specified a minimum number of
instances to launch.

You cannot specify this option and the network interfaces option in the
same request.



=head2 KernelId => Str

The ID of the kernel.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see PV-GRUB
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 KeyName => Str

The name of the key pair. You can create a key pair using CreateKeyPair
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html)
or ImportKeyPair
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html).

If you do not specify a key pair, you can't connect to the instance
unless you choose an AMI that is configured to allow users another way
to log in.



=head2 LaunchTemplate => EC2_LaunchTemplateSpecification

The launch template to use to launch the instances. Any parameters that
you specify in RunInstances override the same parameters in the launch
template. You can specify either the name or ID of a launch template,
but not both.



=head2 LicenseSpecifications => ArrayRef[EC2_LicenseConfigurationRequest]

The license configurations.



=head2 B<REQUIRED> MaxCount => Int

The maximum number of instances to launch. If you specify more
instances than Amazon EC2 can launch in the target Availability Zone,
Amazon EC2 launches the largest possible number of instances above
C<MinCount>.

Constraints: Between 1 and the maximum number you're allowed for the
specified instance type. For more information about the default limits,
and how to request an increase, see How many instances can I run in
Amazon EC2
(http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2)
in the Amazon EC2 FAQ.



=head2 B<REQUIRED> MinCount => Int

The minimum number of instances to launch. If you specify a minimum
that is more instances than Amazon EC2 can launch in the target
Availability Zone, Amazon EC2 launches no instances.

Constraints: Between 1 and the maximum number you're allowed for the
specified instance type. For more information about the default limits,
and how to request an increase, see How many instances can I run in
Amazon EC2
(http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2)
in the Amazon EC2 General FAQ.



=head2 Monitoring => EC2_RunInstancesMonitoringEnabled

Specifies whether detailed monitoring is enabled for the instance.



=head2 NetworkInterfaces => ArrayRef[EC2_InstanceNetworkInterfaceSpecification]

The network interfaces to associate with the instance. If you specify a
network interface, you must specify any security groups and subnets as
part of the network interface.



=head2 Placement => EC2_Placement

The placement for the instance.



=head2 PrivateIpAddress => Str

[EC2-VPC] The primary IPv4 address. You must specify a value from the
IPv4 address range of the subnet.

Only one private IP address can be designated as primary. You can't
specify this option if you've specified the option to designate a
private IP address as the primary IP address in a network interface
specification. You cannot specify this option if you're launching more
than one instance in the request.

You cannot specify this option and the network interfaces option in the
same request.



=head2 RamdiskId => Str

The ID of the RAM disk to select. Some kernels require additional
drivers at launch. Check the kernel requirements for information about
whether you need to specify a RAM disk. To find kernel requirements, go
to the AWS Resource Center and search for the kernel ID.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see PV-GRUB
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups. You can create a security group using
CreateSecurityGroup
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html).

If you specify a network interface, you must specify any security
groups as part of the network interface.



=head2 SecurityGroups => ArrayRef[Str|Undef]

[EC2-Classic, default VPC] The names of the security groups. For a
nondefault VPC, you must use security group IDs instead.

If you specify a network interface, you must specify any security
groups as part of the network interface.

Default: Amazon EC2 uses the default security group.



=head2 SubnetId => Str

[EC2-VPC] The ID of the subnet to launch the instance into.

If you specify a network interface, you must specify any subnets as
part of the network interface.



=head2 TagSpecifications => ArrayRef[EC2_TagSpecification]

The tags to apply to the resources during launch. You can only tag
instances and volumes on launch. The specified tags are applied to all
instances or volumes that are created during launch. To tag a resource
after it has been created, see CreateTags
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).



=head2 UserData => Str

The user data to make available to the instance. For more information,
see Running Commands on Your Linux Instance at Launch
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html)
(Linux) and Adding User Data
(https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data)
(Windows). If you are using a command line tool, base64-encoding is
performed for you, and you can load the text from a file. Otherwise,
you must provide base64-encoded text. User data is limited to 16 KB.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RunInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

