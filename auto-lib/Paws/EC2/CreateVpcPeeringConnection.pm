
package Paws::EC2::CreateVpcPeeringConnection;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has PeerOwnerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'peerOwnerId' );
  has PeerRegion => (is => 'ro', isa => 'Str');
  has PeerVpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'peerVpcId' );
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcPeeringConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateVpcPeeringConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcPeeringConnection - Arguments for method CreateVpcPeeringConnection on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcPeeringConnection on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVpcPeeringConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcPeeringConnection.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateVpcPeeringConnectionResult = $ec2->CreateVpcPeeringConnection(
      DryRun      => 1,             # OPTIONAL
      PeerOwnerId => 'MyString',    # OPTIONAL
      PeerRegion  => 'MyString',    # OPTIONAL
      PeerVpcId   => 'MyString',    # OPTIONAL
      VpcId       => 'MyString',    # OPTIONAL
    );

    # Results:
    my $VpcPeeringConnection =
      $CreateVpcPeeringConnectionResult->VpcPeeringConnection;

    # Returns a L<Paws::EC2::CreateVpcPeeringConnectionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVpcPeeringConnection>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 PeerOwnerId => Str

The AWS account ID of the owner of the accepter VPC.

Default: Your AWS account ID



=head2 PeerRegion => Str

The region code for the accepter VPC, if the accepter VPC is located in
a region other than the region in which you make the request.

Default: The region in which you make the request.



=head2 PeerVpcId => Str

The ID of the VPC with which you are creating the VPC peering
connection. You must specify this parameter in the request.



=head2 VpcId => Str

The ID of the requester VPC. You must specify this parameter in the
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcPeeringConnection in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

