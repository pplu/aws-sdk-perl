
package Paws::WorkMail::CreateResourceResponse;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateResourceResponse

=head1 ATTRIBUTES


=head2 ResourceId => Str

The identifier of the created resource.


=head2 _request_id => Str


=cut

1;