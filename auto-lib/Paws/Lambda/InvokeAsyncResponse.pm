
package Paws::Lambda::InvokeAsyncResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::InvokeAsyncResponse

=head1 ATTRIBUTES


=head2 Status => Int

The status code.


=head2 _request_id => Str


=cut

