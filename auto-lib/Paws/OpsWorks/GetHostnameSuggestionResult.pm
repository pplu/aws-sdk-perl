
package Paws::OpsWorks::GetHostnameSuggestionResult;
  use Moose;
  has Hostname => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::GetHostnameSuggestionResult

=head1 ATTRIBUTES


=head2 Hostname => Str

The generated host name.


=head2 LayerId => Str

The layer ID.


=head2 _request_id => Str


=cut

1;