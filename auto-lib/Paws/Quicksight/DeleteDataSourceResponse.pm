
package Paws::Quicksight::DeleteDataSourceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has DataSourceId => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteDataSourceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the data source that you deleted.


=head2 DataSourceId => Str

The ID of the data source. This ID is unique per AWS Region for each
AWS account.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

