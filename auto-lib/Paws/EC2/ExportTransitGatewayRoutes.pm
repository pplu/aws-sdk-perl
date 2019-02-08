
package Paws::EC2::ExportTransitGatewayRoutes;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has S3Bucket => (is => 'ro', isa => 'Str', required => 1);
  has TransitGatewayRouteTableId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportTransitGatewayRoutes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ExportTransitGatewayRoutesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ExportTransitGatewayRoutes - Arguments for method ExportTransitGatewayRoutes on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportTransitGatewayRoutes on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ExportTransitGatewayRoutes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportTransitGatewayRoutes.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ExportTransitGatewayRoutesResult = $ec2->ExportTransitGatewayRoutes(
      S3Bucket                   => 'MyString',
      TransitGatewayRouteTableId => 'MyString',
      DryRun                     => 1,            # OPTIONAL
      Filters                    => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],          # OPTIONAL
        },
        ...
      ],                                          # OPTIONAL
    );

    # Results:
    my $S3Location = $ExportTransitGatewayRoutesResult->S3Location;

    # Returns a L<Paws::EC2::ExportTransitGatewayRoutesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ExportTransitGatewayRoutes>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters. The possible values are:

=over

=item *

C<attachment.transit-gateway-attachment-id>- The id of the transit
gateway attachment.

=item *

C<attachment.resource-id> - The resource id of the transit gateway
attachment.

=item *

C<route-search.exact-match> - The exact match of the specified filter.

=item *

C<route-search.longest-prefix-match> - The longest prefix that matches
the route.

=item *

C<route-search.subnet-of-match> - The routes with a subnet that match
the specified CIDR filter.

=item *

C<route-search.supernet-of-match> - The routes with a CIDR that
encompass the CIDR filter. For example, if you have 10.0.1.0/29 and
10.0.1.0/31 routes in your route table and you specify
supernet-of-match as 10.0.1.0/30, then the result returns 10.0.1.0/29.

=item *

C<state> - The state of the attachment (C<available> | C<deleted> |
C<deleting> | C<failed> | C<modifying> | C<pendingAcceptance> |
C<pending> | C<rollingBack> | C<rejected> | C<rejecting>).

=item *

C<transit-gateway-route-destination-cidr-block> - The CIDR range.

=item *

C<type> - The type of roue (C<active> | C<blackhole>).

=back




=head2 B<REQUIRED> S3Bucket => Str

The name of the S3 bucket.



=head2 B<REQUIRED> TransitGatewayRouteTableId => Str

The ID of the route table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportTransitGatewayRoutes in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

