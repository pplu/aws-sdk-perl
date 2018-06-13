
package Paws::EC2::ModifyVpcEndpointServiceConfiguration;
  use Moose;
  has AcceptanceRequired => (is => 'ro', isa => 'Bool');
  has AddNetworkLoadBalancerArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AddNetworkLoadBalancerArn' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has RemoveNetworkLoadBalancerArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'RemoveNetworkLoadBalancerArn' );
  has ServiceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVpcEndpointServiceConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVpcEndpointServiceConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpcEndpointServiceConfiguration - Arguments for method ModifyVpcEndpointServiceConfiguration on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVpcEndpointServiceConfiguration on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVpcEndpointServiceConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVpcEndpointServiceConfiguration.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVpcEndpointServiceConfigurationResult =
      $ec2->ModifyVpcEndpointServiceConfiguration(
      ServiceId                     => 'MyString',
      AcceptanceRequired            => 1,                      # OPTIONAL
      AddNetworkLoadBalancerArns    => [ 'MyString', ... ],    # OPTIONAL
      DryRun                        => 1,                      # OPTIONAL
      RemoveNetworkLoadBalancerArns => [ 'MyString', ... ],    # OPTIONAL
      );

    # Results:
    my $Return = $ModifyVpcEndpointServiceConfigurationResult->Return;

   # Returns a L<Paws::EC2::ModifyVpcEndpointServiceConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVpcEndpointServiceConfiguration>

=head1 ATTRIBUTES


=head2 AcceptanceRequired => Bool

Indicate whether requests to create an endpoint to your service must be
accepted.



=head2 AddNetworkLoadBalancerArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of Network Load Balancers to add to
your service configuration.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 RemoveNetworkLoadBalancerArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of Network Load Balancers to remove
from your service configuration.



=head2 B<REQUIRED> ServiceId => Str

The ID of the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVpcEndpointServiceConfiguration in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

