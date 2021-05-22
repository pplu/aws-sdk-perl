
package Paws::SESv2::SendBulkEmailResponse;
  use Moose;
  has BulkEmailEntryResults => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::BulkEmailEntryResult]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::SendBulkEmailResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BulkEmailEntryResults => ArrayRef[L<Paws::SESv2::BulkEmailEntryResult>]




=head2 _request_id => Str


=cut

