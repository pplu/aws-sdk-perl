
package Paws::EC2::ModifyVpcEndpoint;
  use Moose;
  has AddRouteTableIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AddRouteTableId' );
  has AddSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AddSecurityGroupId' );
  has AddSubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AddSubnetId' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has PolicyDocument => (is => 'ro', isa => 'Str');
  has PrivateDnsEnabled => (is => 'ro', isa => 'Bool');
  has RemoveRouteTableIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'RemoveRouteTableId' );
  has RemoveSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'RemoveSecurityGroupId' );
  has RemoveSubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'RemoveSubnetId' );
  has ResetPolicy => (is => 'ro', isa => 'Bool');
  has VpcEndpointId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVpcEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVpcEndpointResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpcEndpoint - Arguments for method ModifyVpcEndpoint on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVpcEndpoint on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVpcEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVpcEndpoint.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVpcEndpointResult = $ec2->ModifyVpcEndpoint(
      VpcEndpointId          => 'MyString',
      AddRouteTableIds       => [ 'MyString', ... ],    # OPTIONAL
      AddSecurityGroupIds    => [ 'MyString', ... ],    # OPTIONAL
      AddSubnetIds           => [ 'MyString', ... ],    # OPTIONAL
      DryRun                 => 1,                      # OPTIONAL
      PolicyDocument         => 'MyString',             # OPTIONAL
      PrivateDnsEnabled      => 1,                      # OPTIONAL
      RemoveRouteTableIds    => [ 'MyString', ... ],    # OPTIONAL
      RemoveSecurityGroupIds => [ 'MyString', ... ],    # OPTIONAL
      RemoveSubnetIds        => [ 'MyString', ... ],    # OPTIONAL
      ResetPolicy            => 1,                      # OPTIONAL
    );

    # Results:
    my $Return = $ModifyVpcEndpointResult->Return;

    # Returns a L<Paws::EC2::ModifyVpcEndpointResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVpcEndpoint>

=head1 ATTRIBUTES


=head2 AddRouteTableIds => ArrayRef[Str|Undef]

(Gateway endpoint) One or more route tables IDs to associate with the
endpoint.



=head2 AddSecurityGroupIds => ArrayRef[Str|Undef]

(Interface endpoint) One or more security group IDs to associate with
the network interface.



=head2 AddSubnetIds => ArrayRef[Str|Undef]

(Interface endpoint) One or more subnet IDs in which to serve the
endpoint.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 PolicyDocument => Str

(Gateway endpoint) A policy document to attach to the endpoint. The
policy must be in valid JSON format.



=head2 PrivateDnsEnabled => Bool

(Interface endpoint) Indicate whether a private hosted zone is
associated with the VPC.



=head2 RemoveRouteTableIds => ArrayRef[Str|Undef]

(Gateway endpoint) One or more route table IDs to disassociate from the
endpoint.



=head2 RemoveSecurityGroupIds => ArrayRef[Str|Undef]

(Interface endpoint) One or more security group IDs to disassociate
from the network interface.



=head2 RemoveSubnetIds => ArrayRef[Str|Undef]

(Interface endpoint) One or more subnets IDs in which to remove the
endpoint.



=head2 ResetPolicy => Bool

(Gateway endpoint) Specify C<true> to reset the policy document to the
default policy. The default policy allows full access to the service.



=head2 B<REQUIRED> VpcEndpointId => Str

The ID of the endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVpcEndpoint in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

