
package Paws::EC2::ModifyVpcPeeringConnectionOptions;
  use Moose;
  has AccepterPeeringConnectionOptions => (is => 'ro', isa => 'Paws::EC2::PeeringConnectionOptionsRequest');
  has DryRun => (is => 'ro', isa => 'Bool');
  has RequesterPeeringConnectionOptions => (is => 'ro', isa => 'Paws::EC2::PeeringConnectionOptionsRequest');
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVpcPeeringConnectionOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVpcPeeringConnectionOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpcPeeringConnectionOptions - Arguments for method ModifyVpcPeeringConnectionOptions on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVpcPeeringConnectionOptions on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method ModifyVpcPeeringConnectionOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVpcPeeringConnectionOptions.

As an example:

  $service_obj->ModifyVpcPeeringConnectionOptions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AccepterPeeringConnectionOptions => L<Paws::EC2::PeeringConnectionOptionsRequest>

The VPC peering connection options for the accepter VPC.



=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 RequesterPeeringConnectionOptions => L<Paws::EC2::PeeringConnectionOptionsRequest>

The VPC peering connection options for the requester VPC.



=head2 B<REQUIRED> VpcPeeringConnectionId => Str

The ID of the VPC peering connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVpcPeeringConnectionOptions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

