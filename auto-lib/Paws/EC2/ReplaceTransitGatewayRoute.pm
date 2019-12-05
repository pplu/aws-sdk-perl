
package Paws::EC2::ReplaceTransitGatewayRoute;
  use Moose;
  has Blackhole => (is => 'ro', isa => 'Bool');
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has TransitGatewayAttachmentId => (is => 'ro', isa => 'Str');
  has TransitGatewayRouteTableId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceTransitGatewayRoute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ReplaceTransitGatewayRouteResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceTransitGatewayRoute - Arguments for method ReplaceTransitGatewayRoute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplaceTransitGatewayRoute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ReplaceTransitGatewayRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplaceTransitGatewayRoute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ReplaceTransitGatewayRouteResult = $ec2->ReplaceTransitGatewayRoute(
      DestinationCidrBlock       => 'MyString',
      TransitGatewayRouteTableId => 'MyString',
      Blackhole                  => 1,             # OPTIONAL
      DryRun                     => 1,             # OPTIONAL
      TransitGatewayAttachmentId => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Route = $ReplaceTransitGatewayRouteResult->Route;

    # Returns a L<Paws::EC2::ReplaceTransitGatewayRouteResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ReplaceTransitGatewayRoute>

=head1 ATTRIBUTES


=head2 Blackhole => Bool

Indicates whether traffic matching this route is to be dropped.



=head2 B<REQUIRED> DestinationCidrBlock => Str

The CIDR range used for the destination match. Routing decisions are
based on the most specific match.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 TransitGatewayAttachmentId => Str

The ID of the attachment.



=head2 B<REQUIRED> TransitGatewayRouteTableId => Str

The ID of the route table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplaceTransitGatewayRoute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

