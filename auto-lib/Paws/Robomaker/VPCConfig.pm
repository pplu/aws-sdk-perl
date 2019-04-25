package Paws::Robomaker::VPCConfig;
  use Moose;
  has AssignPublicIp => (is => 'ro', isa => 'Bool', request_name => 'assignPublicIp', traits => ['NameInRequest']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroups', traits => ['NameInRequest']);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnets', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::VPCConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::VPCConfig object:

  $service_obj->Method(Att1 => { AssignPublicIp => $value, ..., Subnets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::VPCConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AssignPublicIp

=head1 DESCRIPTION

If your simulation job accesses resources in a VPC, you provide this
parameter identifying the list of security group IDs and subnet IDs.
These must belong to the same VPC. You must provide at least one
security group and two subnet IDs.

=head1 ATTRIBUTES


=head2 AssignPublicIp => Bool

  A boolean indicating whether to assign a public IP address.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  A list of one or more security groups IDs in your VPC.


=head2 B<REQUIRED> Subnets => ArrayRef[Str|Undef]

  A list of one or more subnet IDs in your VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

