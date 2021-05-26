
package Paws::Quicksight::UpdateDataSourceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has DataSourceId => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has UpdateStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateDataSourceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the data source.


=head2 DataSourceId => Str

The ID of the data source. This ID is unique per AWS Region for each
AWS account.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 UpdateStatus => Str

The update status of the data source's last update.

Valid values are: C<"CREATION_IN_PROGRESS">, C<"CREATION_SUCCESSFUL">, C<"CREATION_FAILED">, C<"UPDATE_IN_PROGRESS">, C<"UPDATE_SUCCESSFUL">, C<"UPDATE_FAILED">
=head2 _request_id => Str


=cut

