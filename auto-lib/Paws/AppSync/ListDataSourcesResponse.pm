
package Paws::AppSync::ListDataSourcesResponse;
  use Moose;
  has DataSources => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::DataSource]', traits => ['NameInRequest'], request_name => 'dataSources');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListDataSourcesResponse

=head1 ATTRIBUTES


=head2 DataSources => ArrayRef[L<Paws::AppSync::DataSource>]

The C<DataSource> objects.


=head2 NextToken => Str

An identifier to be passed in the next request to this operation to
return the next set of items in the list.


=head2 _request_id => Str


=cut

