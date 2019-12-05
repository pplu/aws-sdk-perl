
package Paws::Kendra::CreateDataSourceResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateDataSourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

A unique identifier for the data source.


=head2 _request_id => Str


=cut

1;