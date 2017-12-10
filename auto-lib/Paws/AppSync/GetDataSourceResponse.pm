
package Paws::AppSync::GetDataSourceResponse;
  use Moose;
  has DataSource => (is => 'ro', isa => 'Paws::AppSync::DataSource', traits => ['NameInRequest'], request_name => 'dataSource');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetDataSourceResponse

=head1 ATTRIBUTES


=head2 DataSource => L<Paws::AppSync::DataSource>

The C<DataSource> object.


=head2 _request_id => Str


=cut

