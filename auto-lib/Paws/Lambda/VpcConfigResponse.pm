package Paws::Lambda::VpcConfigResponse;
  use Moose;
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::VpcConfigResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::VpcConfigResponse object:

  $service_obj->Method(Att1 => { SecurityGroupIds => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::VpcConfigResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityGroupIds

=head1 DESCRIPTION

The VPC security groups and subnets attached to a Lambda function.

=head1 ATTRIBUTES


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  A list of VPC security groups IDs.


=head2 SubnetIds => ArrayRef[Str|Undef]

  A list of VPC subnet IDs.


=head2 VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

