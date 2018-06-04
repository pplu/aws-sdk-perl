
package Paws::GameLift::CreateVpcPeeringConnection;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has PeerVpcAwsAccountId => (is => 'ro', isa => 'Str', required => 1);
  has PeerVpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcPeeringConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateVpcPeeringConnectionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateVpcPeeringConnection - Arguments for method CreateVpcPeeringConnection on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcPeeringConnection on the 
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateVpcPeeringConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcPeeringConnection.

As an example:

  $service_obj->CreateVpcPeeringConnection(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateVpcPeeringConnection>
=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

Unique identifier for a fleet. This tells Amazon GameLift which
GameLift VPC to peer with.



=head2 B<REQUIRED> PeerVpcAwsAccountId => Str

Unique identifier for the AWS account with the VPC that you want to
peer your Amazon GameLift fleet with. You can find your Account ID in
the AWS Management Console under account settings.



=head2 B<REQUIRED> PeerVpcId => Str

Unique identifier for a VPC with resources to be accessed by your
Amazon GameLift fleet. The VPC must be in the same region where your
fleet is deployed. To get VPC information, including IDs, use the
Virtual Private Cloud service tools, including the VPC Dashboard in the
AWS Management Console.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcPeeringConnection in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

