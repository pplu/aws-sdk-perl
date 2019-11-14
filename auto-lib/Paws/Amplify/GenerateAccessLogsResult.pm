
package Paws::Amplify::GenerateAccessLogsResult;
  use Moose;
  has LogUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logUrl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GenerateAccessLogsResult

=head1 ATTRIBUTES


=head2 LogUrl => Str

Pre-signed URL for the requested access logs.


=head2 _request_id => Str


=cut

