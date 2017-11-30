
package Paws::EC2::DescribeVpcEndpointServiceConfigurationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has ServiceConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ServiceConfiguration]', request_name => 'serviceConfigurationSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcEndpointServiceConfigurationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ServiceConfigurations => ArrayRef[L<Paws::EC2::ServiceConfiguration>]

Information about one or more services.


=head2 _request_id => Str


=cut

