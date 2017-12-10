package Paws::ES::VPCDerivedInfo;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VPCId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::VPCDerivedInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::VPCDerivedInfo object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., VPCId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::VPCDerivedInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 DESCRIPTION

Options to specify the subnets and security groups for VPC endpoint.
For more information, see VPC Endpoints for Amazon Elasticsearch
Service Domains
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html).

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

  The availability zones for the Elasticsearch domain. Exists only if the
domain was created with VPCOptions.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  Specifies the security groups for VPC endpoint.


=head2 SubnetIds => ArrayRef[Str|Undef]

  Specifies the subnets for VPC endpoint.


=head2 VPCId => Str

  The VPC Id for the Elasticsearch domain. Exists only if the domain was
created with VPCOptions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

