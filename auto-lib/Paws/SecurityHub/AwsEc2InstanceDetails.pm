package Paws::SecurityHub::AwsEc2InstanceDetails;
  use Moose;
  has IamInstanceProfileArn => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str');
  has IpV4Addresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IpV6Addresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyName => (is => 'ro', isa => 'Str');
  has LaunchedAt => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEc2InstanceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEc2InstanceDetails object:

  $service_obj->Method(Att1 => { IamInstanceProfileArn => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEc2InstanceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->IamInstanceProfileArn

=head1 DESCRIPTION

The details of an AWS EC2 instance.

=head1 ATTRIBUTES


=head2 IamInstanceProfileArn => Str

  The IAM profile ARN of the instance.


=head2 ImageId => Str

  The Amazon Machine Image (AMI) ID of the instance.


=head2 IpV4Addresses => ArrayRef[Str|Undef]

  The IPv4 addresses associated with the instance.


=head2 IpV6Addresses => ArrayRef[Str|Undef]

  The IPv6 addresses associated with the instance.


=head2 KeyName => Str

  The key name associated with the instance.


=head2 LaunchedAt => Str

  The date/time the instance was launched.


=head2 SubnetId => Str

  The identifier of the subnet in which the instance was launched.


=head2 Type => Str

  The instance type of the instance.


=head2 VpcId => Str

  The identifier of the VPC in which the instance was launched.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

