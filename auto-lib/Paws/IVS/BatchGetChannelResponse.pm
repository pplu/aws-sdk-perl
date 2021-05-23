
package Paws::IVS::BatchGetChannelResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Paws::IVS::Channel]', traits => ['NameInRequest'], request_name => 'channels');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::IVS::BatchError]', traits => ['NameInRequest'], request_name => 'errors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::BatchGetChannelResponse

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[L<Paws::IVS::Channel>]




=head2 Errors => ArrayRef[L<Paws::IVS::BatchError>]

Each error object is related to a specific ARN in the request.


=head2 _request_id => Str


=cut

