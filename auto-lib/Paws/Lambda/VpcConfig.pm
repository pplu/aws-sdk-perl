package Paws::Lambda::VpcConfig;
  use Moose;
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::VpcConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::VpcConfig object:

  $service_obj->Method(Att1 => { SecurityGroupIds => $value, ..., SubnetIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::VpcConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityGroupIds

=head1 DESCRIPTION

If your Lambda function accesses resources in a VPC, you provide this
parameter identifying the list of security group IDs and subnet IDs.
These must belong to the same VPC. You must provide at least one
security group and one subnet ID.

=head1 ATTRIBUTES


=head2 SecurityGroupIds => ArrayRef[Str]

  A list of one or more security groups IDs in your VPC.


=head2 SubnetIds => ArrayRef[Str]

  A list of one or more subnet IDs in your VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

