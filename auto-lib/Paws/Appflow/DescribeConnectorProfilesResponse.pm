
package Paws::Appflow::DescribeConnectorProfilesResponse;
  use Moose;
  has ConnectorProfileDetails => (is => 'ro', isa => 'ArrayRef[Paws::Appflow::ConnectorProfile]', traits => ['NameInRequest'], request_name => 'connectorProfileDetails');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::DescribeConnectorProfilesResponse

=head1 ATTRIBUTES


=head2 ConnectorProfileDetails => ArrayRef[L<Paws::Appflow::ConnectorProfile>]

Returns information about the connector profiles associated with the
flow.


=head2 NextToken => Str

The pagination token for the next page of data. If C<nextToken=null>,
this means that all records have been fetched.


=head2 _request_id => Str


=cut

