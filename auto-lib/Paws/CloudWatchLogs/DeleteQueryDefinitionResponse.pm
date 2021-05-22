
package Paws::CloudWatchLogs::DeleteQueryDefinitionResponse;
  use Moose;
  has Success => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'success' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DeleteQueryDefinitionResponse

=head1 ATTRIBUTES


=head2 Success => Bool

A value of TRUE indicates that the operation succeeded. FALSE indicates
that the operation failed.


=head2 _request_id => Str


=cut

1;