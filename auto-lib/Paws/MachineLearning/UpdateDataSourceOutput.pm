
package Paws::MachineLearning::UpdateDataSourceOutput;
  use Moose;
  has DataSourceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::UpdateDataSourceOutput

=head1 ATTRIBUTES


=head2 DataSourceId => Str

The ID assigned to the C<DataSource> during creation. This value should
be identical to the value of the C<DataSourceID> in the request.


=head2 _request_id => Str


=cut

1;