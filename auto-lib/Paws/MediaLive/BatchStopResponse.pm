
package Paws::MediaLive::BatchStopResponse;
  use Moose;
  has Failed => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::BatchFailedResultModel]', traits => ['NameInRequest'], request_name => 'failed');
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::BatchSuccessfulResultModel]', traits => ['NameInRequest'], request_name => 'successful');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::BatchStopResponse

=head1 ATTRIBUTES


=head2 Failed => ArrayRef[L<Paws::MediaLive::BatchFailedResultModel>]

List of failed operations


=head2 Successful => ArrayRef[L<Paws::MediaLive::BatchSuccessfulResultModel>]

List of successful operations


=head2 _request_id => Str


=cut

