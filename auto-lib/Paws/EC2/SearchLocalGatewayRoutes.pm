
package Paws::EC2::SearchLocalGatewayRoutes;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' , required => 1);
  has LocalGatewayRouteTableId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchLocalGatewayRoutes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::SearchLocalGatewayRoutesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SearchLocalGatewayRoutes - Arguments for method SearchLocalGatewayRoutes on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchLocalGatewayRoutes on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method SearchLocalGatewayRoutes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchLocalGatewayRoutes.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $SearchLocalGatewayRoutesResult = $ec2->SearchLocalGatewayRoutes(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],
      LocalGatewayRouteTableId => 'MyLocalGatewayRoutetableId',
      DryRun                   => 1,                              # OPTIONAL
      MaxResults               => 1,                              # OPTIONAL
      NextToken                => 'MyString',                     # OPTIONAL
    );

    # Results:
    my $NextToken = $SearchLocalGatewayRoutesResult->NextToken;
    my $Routes    = $SearchLocalGatewayRoutesResult->Routes;

    # Returns a L<Paws::EC2::SearchLocalGatewayRoutesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/SearchLocalGatewayRoutes>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.



=head2 B<REQUIRED> LocalGatewayRouteTableId => Str

The ID of the local gateway route table.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchLocalGatewayRoutes in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

