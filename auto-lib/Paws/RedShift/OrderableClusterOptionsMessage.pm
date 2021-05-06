
package Paws::RedShift::OrderableClusterOptionsMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableClusterOptions => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::OrderableClusterOption]', request_name => 'OrderableClusterOption', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::OrderableClusterOptionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<Marker> parameter and retrying the command. If
the C<Marker> field is empty, all response records have been retrieved
for the request.


=head2 OrderableClusterOptions => ArrayRef[L<Paws::RedShift::OrderableClusterOption>]

An C<OrderableClusterOption> structure containing information about
orderable options for the cluster.


=head2 _request_id => Str


=cut

