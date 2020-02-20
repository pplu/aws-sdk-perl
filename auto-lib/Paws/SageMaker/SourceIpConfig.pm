package Paws::SageMaker::SourceIpConfig;
  use Moose;
  has Cidrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SourceIpConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::SourceIpConfig object:

  $service_obj->Method(Att1 => { Cidrs => $value, ..., Cidrs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::SourceIpConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Cidrs

=head1 DESCRIPTION

A list of IP address ranges (CIDRs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html)).
Used to create an allow list of IP addresses for a private workforce.
For more information, see .

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cidrs => ArrayRef[Str|Undef]

  A list of one to four Classless Inter-Domain Routing
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html)
(CIDR) values.

Maximum: 4 CIDR values

The following Length Constraints apply to individual CIDR values in the
CIDR value list.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

