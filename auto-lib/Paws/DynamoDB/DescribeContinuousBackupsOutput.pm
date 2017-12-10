
package Paws::DynamoDB::DescribeContinuousBackupsOutput;
  use Moose;
  has ContinuousBackupsDescription => (is => 'ro', isa => 'Paws::DynamoDB::ContinuousBackupsDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeContinuousBackupsOutput

=head1 ATTRIBUTES


=head2 ContinuousBackupsDescription => L<Paws::DynamoDB::ContinuousBackupsDescription>

C<ContinuousBackupsDescription> can be one of the following : ENABLED,
DISABLED.


=head2 _request_id => Str


=cut

1;