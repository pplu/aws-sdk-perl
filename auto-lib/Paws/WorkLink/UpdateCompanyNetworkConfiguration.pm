
package Paws::WorkLink::UpdateCompanyNetworkConfiguration;
  use Moose;
  has FleetArn => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCompanyNetworkConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateCompanyNetworkConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkLink::UpdateCompanyNetworkConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::UpdateCompanyNetworkConfiguration - Arguments for method UpdateCompanyNetworkConfiguration on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCompanyNetworkConfiguration on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method UpdateCompanyNetworkConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCompanyNetworkConfiguration.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $UpdateCompanyNetworkConfigurationResponse =
      $worklink->UpdateCompanyNetworkConfiguration(
      FleetArn         => 'MyFleetArn',
      SecurityGroupIds => [ 'MySecurityGroupId', ... ],
      SubnetIds        => [ 'MySubnetId', ... ],
      VpcId            => 'MyVpcId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/UpdateCompanyNetworkConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetArn => Str

The ARN of the fleet.



=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str|Undef]

The security groups associated with access to the provided subnets.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The subnets used for X-ENI connections from Amazon WorkLink rendering
containers.



=head2 B<REQUIRED> VpcId => Str

The VPC with connectivity to associated websites.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCompanyNetworkConfiguration in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

