
package Paws::EC2::CreateLaunchTemplate;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has LaunchTemplateData => (is => 'ro', isa => 'Paws::EC2::RequestLaunchTemplateData', required => 1);
  has LaunchTemplateName => (is => 'ro', isa => 'Str', required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has VersionDescription => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLaunchTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateLaunchTemplateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateLaunchTemplate - Arguments for method CreateLaunchTemplate on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLaunchTemplate on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateLaunchTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLaunchTemplate.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
  # To create a launch template
  # This example creates a launch template that specifies the subnet in which to
  # launch the instance, assigns a public IP address and an IPv6 address to the
  # instance, and creates a tag for the instance.
    my $CreateLaunchTemplateResult = $ec2->CreateLaunchTemplate(
      'LaunchTemplateData' => {
        'ImageId'           => 'ami-8c1be5f6',
        'InstanceType'      => 't2.small',
        'NetworkInterfaces' => [

          {
            'AssociatePublicIpAddress' => 1,
            'DeviceIndex'              => 0,
            'Ipv6AddressCount'         => 1,
            'SubnetId'                 => 'subnet-7b16de0c'
          }
        ],
        'TagSpecifications' => [

          {
            'ResourceType' => 'instance',
            'Tags'         => [

              {
                'Key'   => 'Name',
                'Value' => 'webserver'
              }
            ]
          }
        ]
      },
      'LaunchTemplateName' => 'my-template',
      'VersionDescription' => 'WebVersion1'
    );

    # Results:
    my $LaunchTemplate = $CreateLaunchTemplateResult->LaunchTemplate;

    # Returns a L<Paws::EC2::CreateLaunchTemplateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateLaunchTemplate>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).

Constraint: Maximum 128 ASCII characters.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> LaunchTemplateData => L<Paws::EC2::RequestLaunchTemplateData>

The information for the launch template.



=head2 B<REQUIRED> LaunchTemplateName => Str

A name for the launch template.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the launch template during creation.



=head2 VersionDescription => Str

A description for the first version of the launch template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLaunchTemplate in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

