
package Paws::Config::PutStoredQueryResponse;
  use Moose;
  has QueryArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutStoredQueryResponse

=head1 ATTRIBUTES


=head2 QueryArn => Str

Amazon Resource Name (ARN) of the query. For example,
arn:partition:service:region:account-id:resource-type/resource-name/resource-id.


=head2 _request_id => Str


=cut

1;