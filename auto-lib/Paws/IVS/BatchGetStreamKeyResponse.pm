
package Paws::IVS::BatchGetStreamKeyResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::IVS::BatchError]', traits => ['NameInRequest'], request_name => 'errors');
  has StreamKeys => (is => 'ro', isa => 'ArrayRef[Paws::IVS::StreamKey]', traits => ['NameInRequest'], request_name => 'streamKeys');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::BatchGetStreamKeyResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::IVS::BatchError>]




=head2 StreamKeys => ArrayRef[L<Paws::IVS::StreamKey>]




=head2 _request_id => Str


=cut

