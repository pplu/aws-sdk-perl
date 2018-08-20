
package Paws::EC2::RequestSpotFleet;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has SpotFleetRequestConfig => (is => 'ro', isa => 'Paws::EC2::SpotFleetRequestConfigData', traits => ['NameInRequest'], request_name => 'spotFleetRequestConfig' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestSpotFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::RequestSpotFleetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RequestSpotFleet - Arguments for method RequestSpotFleet on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RequestSpotFleet on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method RequestSpotFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RequestSpotFleet.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To request a Spot fleet in the subnet with the lowest price
    # This example creates a Spot fleet request with two launch specifications
    # that differ only by subnet. The Spot fleet launches the instances in the
    # specified subnet with the lowest price. If the instances are launched in a
    # default VPC, they receive a public IP address by default. If the instances
    # are launched in a nondefault VPC, they do not receive a public IP address
    # by default. Note that you can't specify different subnets from the same
    # Availability Zone in a Spot fleet request.
    my $RequestSpotFleetResponse = $ec2->RequestSpotFleet(
      {
        'SpotFleetRequestConfig' => {
          'IamFleetRole' => 'arn:aws:iam::123456789012:role/my-spot-fleet-role',
          'LaunchSpecifications' => [

            {
              'IamInstanceProfile' => {
                'Arn' =>
                  'arn:aws:iam::123456789012:instance-profile/my-iam-role'
              },
              'ImageId'        => 'ami-1a2b3c4d',
              'InstanceType'   => 'm3.medium',
              'KeyName'        => 'my-key-pair',
              'SecurityGroups' => [

                {
                  'GroupId' => 'sg-1a2b3c4d'
                }
              ],
              'SubnetId' => 'subnet-1a2b3c4d, subnet-3c4d5e6f'
            }
          ],
          'SpotPrice'      => 0.04,
          'TargetCapacity' => 2
        }
      }
    );

    # Results:
    my $SpotFleetRequestId = $RequestSpotFleetResponse->SpotFleetRequestId;

   # Returns a L<Paws::EC2::RequestSpotFleetResponse> object.
   # To request a Spot fleet in the Availability Zone with the lowest price
   # This example creates a Spot fleet request with two launch specifications
   # that differ only by Availability Zone. The Spot fleet launches the
   # instances in the specified Availability Zone with the lowest price. If your
   # account supports EC2-VPC only, Amazon EC2 launches the Spot instances in
   # the default subnet of the Availability Zone. If your account supports
   # EC2-Classic, Amazon EC2 launches the instances in EC2-Classic in the
   # Availability Zone.
    my $RequestSpotFleetResponse = $ec2->RequestSpotFleet(
      {
        'SpotFleetRequestConfig' => {
          'IamFleetRole' => 'arn:aws:iam::123456789012:role/my-spot-fleet-role',
          'LaunchSpecifications' => [

            {
              'IamInstanceProfile' => {
                'Arn' =>
                  'arn:aws:iam::123456789012:instance-profile/my-iam-role'
              },
              'ImageId'      => 'ami-1a2b3c4d',
              'InstanceType' => 'm3.medium',
              'KeyName'      => 'my-key-pair',
              'Placement'    => {
                'AvailabilityZone' => 'us-west-2a, us-west-2b'
              },
              'SecurityGroups' => [

                {
                  'GroupId' => 'sg-1a2b3c4d'
                }
              ]
            }
          ],
          'SpotPrice'      => 0.04,
          'TargetCapacity' => 2
        }
      }
    );

    # Results:
    my $SpotFleetRequestId = $RequestSpotFleetResponse->SpotFleetRequestId;

   # Returns a L<Paws::EC2::RequestSpotFleetResponse> object.
   # To launch Spot instances in a subnet and assign them public IP addresses
   # This example assigns public addresses to instances launched in a nondefault
   # VPC. Note that when you specify a network interface, you must include the
   # subnet ID and security group ID using the network interface.
    my $RequestSpotFleetResponse = $ec2->RequestSpotFleet(
      {
        'SpotFleetRequestConfig' => {
          'IamFleetRole' => 'arn:aws:iam::123456789012:role/my-spot-fleet-role',
          'LaunchSpecifications' => [

            {
              'IamInstanceProfile' => {
                'Arn' =>
                  'arn:aws:iam::880185128111:instance-profile/my-iam-role'
              },
              'ImageId'           => 'ami-1a2b3c4d',
              'InstanceType'      => 'm3.medium',
              'KeyName'           => 'my-key-pair',
              'NetworkInterfaces' => [

                {
                  'AssociatePublicIpAddress' => 1,
                  'DeviceIndex'              => 0,
                  'Groups'                   => ['sg-1a2b3c4d'],
                  'SubnetId'                 => 'subnet-1a2b3c4d'
                }
              ]
            }
          ],
          'SpotPrice'      => 0.04,
          'TargetCapacity' => 2
        }
      }
    );

    # Results:
    my $SpotFleetRequestId = $RequestSpotFleetResponse->SpotFleetRequestId;

    # Returns a L<Paws::EC2::RequestSpotFleetResponse> object.
    # To request a Spot fleet using the diversified allocation strategy
    # This example creates a Spot fleet request that launches 30 instances using
    # the diversified allocation strategy. The launch specifications differ by
    # instance type. The Spot fleet distributes the instances across the launch
    # specifications such that there are 10 instances of each type.
    my $RequestSpotFleetResponse = $ec2->RequestSpotFleet(
      {
        'SpotFleetRequestConfig' => {
          'AllocationStrategy' => 'diversified',
          'IamFleetRole' => 'arn:aws:iam::123456789012:role/my-spot-fleet-role',
          'LaunchSpecifications' => [

            {
              'ImageId'      => 'ami-1a2b3c4d',
              'InstanceType' => 'c4.2xlarge',
              'SubnetId'     => 'subnet-1a2b3c4d'
            },

            {
              'ImageId'      => 'ami-1a2b3c4d',
              'InstanceType' => 'm3.2xlarge',
              'SubnetId'     => 'subnet-1a2b3c4d'
            },

            {
              'ImageId'      => 'ami-1a2b3c4d',
              'InstanceType' => 'r3.2xlarge',
              'SubnetId'     => 'subnet-1a2b3c4d'
            }
          ],
          'SpotPrice'      => 0.70,
          'TargetCapacity' => 30
        }
      }
    );

    # Results:
    my $SpotFleetRequestId = $RequestSpotFleetResponse->SpotFleetRequestId;

    # Returns a L<Paws::EC2::RequestSpotFleetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/RequestSpotFleet>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> SpotFleetRequestConfig => L<Paws::EC2::SpotFleetRequestConfigData>

The configuration for the Spot Fleet request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RequestSpotFleet in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

