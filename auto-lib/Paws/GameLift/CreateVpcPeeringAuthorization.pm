
package Paws::GameLift::CreateVpcPeeringAuthorization;
  use Moose;
  has GameLiftAwsAccountId => (is => 'ro', isa => 'Str', required => 1);
  has PeerVpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcPeeringAuthorization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateVpcPeeringAuthorizationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateVpcPeeringAuthorization - Arguments for method CreateVpcPeeringAuthorization on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcPeeringAuthorization on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method CreateVpcPeeringAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcPeeringAuthorization.

As an example:

  $service_obj->CreateVpcPeeringAuthorization(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameLiftAwsAccountId => Str

Unique identifier for the AWS account that you use to manage your
Amazon GameLift fleet. You can find your Account ID in the AWS
Management Console under account settings.



=head2 B<REQUIRED> PeerVpcId => Str

Unique identifier for a VPC with resources to be accessed by your
Amazon GameLift fleet. The VPC must be in the same region where your
fleet is deployed. To get VPC information, including IDs, use the
Virtual Private Cloud service tools, including the VPC Dashboard in the
AWS Management Console.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcPeeringAuthorization in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

