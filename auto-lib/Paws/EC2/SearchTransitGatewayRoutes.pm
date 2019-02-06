
package Paws::EC2::SearchTransitGatewayRoutes;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has TransitGatewayRouteTableId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchTransitGatewayRoutes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::SearchTransitGatewayRoutesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SearchTransitGatewayRoutes - Arguments for method SearchTransitGatewayRoutes on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchTransitGatewayRoutes on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method SearchTransitGatewayRoutes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchTransitGatewayRoutes.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $SearchTransitGatewayRoutesResult = $ec2->SearchTransitGatewayRoutes(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],
      TransitGatewayRouteTableId => 'MyString',
      DryRun                     => 1,            # OPTIONAL
      MaxResults                 => 1,            # OPTIONAL
    );

    # Results:
    my $AdditionalRoutesAvailable =
      $SearchTransitGatewayRoutesResult->AdditionalRoutesAvailable;
    my $Routes = $SearchTransitGatewayRoutesResult->Routes;

    # Returns a L<Paws::EC2::SearchTransitGatewayRoutesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/SearchTransitGatewayRoutes>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters. The possible values are:

=over

=item *

C<transit-gateway-route-destination-cidr-block> - The CIDR range.

=item *

C<transit-gateway-route-state> - The state of the route (C<active> |
C<blackhole>).

=item *

C<transit-gateway-route-transit-gateway-attachment-id> - The ID of the
attachment.

=item *

C<transit-gateway-route-type> - The route type (C<static> |
C<propagated>).

=back




=head2 MaxResults => Int

The maximum number of routes to return.



=head2 B<REQUIRED> TransitGatewayRouteTableId => Str

The ID of the transit gateway route table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchTransitGatewayRoutes in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

