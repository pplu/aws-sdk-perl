
package Paws::GameLift::DeleteVpcPeeringAuthorization;
  use Moose;
  has GameLiftAwsAccountId => (is => 'ro', isa => 'Str', required => 1);
  has PeerVpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpcPeeringAuthorization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DeleteVpcPeeringAuthorizationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DeleteVpcPeeringAuthorization - Arguments for method DeleteVpcPeeringAuthorization on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVpcPeeringAuthorization on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DeleteVpcPeeringAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVpcPeeringAuthorization.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DeleteVpcPeeringAuthorizationOutput =
      $gamelift->DeleteVpcPeeringAuthorization(
      GameLiftAwsAccountId => 'MyNonZeroAndMaxString',
      PeerVpcId            => 'MyNonZeroAndMaxString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DeleteVpcPeeringAuthorization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameLiftAwsAccountId => Str

Unique identifier for the AWS account that you use to manage your
Amazon GameLift fleet. You can find your Account ID in the AWS
Management Console under account settings.



=head2 B<REQUIRED> PeerVpcId => Str

Unique identifier for a VPC with resources to be accessed by your
Amazon GameLift fleet. The VPC must be in the same region where your
fleet is deployed. Look up a VPC ID using the VPC Dashboard
(https://console.aws.amazon.com/vpc/) in the AWS Management Console.
Learn more about VPC peering in VPC Peering with Amazon GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVpcPeeringAuthorization in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

