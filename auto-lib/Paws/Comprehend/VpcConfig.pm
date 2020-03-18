package Paws::Comprehend::VpcConfig;
  use Moose;
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::VpcConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::VpcConfig object:

  $service_obj->Method(Att1 => { SecurityGroupIds => $value, ..., Subnets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::VpcConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityGroupIds

=head1 DESCRIPTION

Configuration parameters for an optional private Virtual Private Cloud
(VPC) containing the resources you are using for the job. For For more
information, see Amazon VPC
(https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str|Undef]

  The ID number for a security group on an instance of your private VPC.
Security groups on your VPC function serve as a virtual firewall to
control inbound and outbound traffic and provides security for the
resources that youE<rsquo>ll be accessing on the VPC. This ID number is
preceded by "sg-", for instance: "sg-03b388029b0a285ea". For more
information, see Security Groups for your VPC
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html).


=head2 B<REQUIRED> Subnets => ArrayRef[Str|Undef]

  The ID for each subnet being used in your private VPC. This subnet is a
subset of the a range of IPv4 addresses used by the VPC and is specific
to a given availability zone in the VPCE<rsquo>s region. This ID number
is preceded by "subnet-", for instance: "subnet-04ccf456919e69055". For
more information, see VPCs and Subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

