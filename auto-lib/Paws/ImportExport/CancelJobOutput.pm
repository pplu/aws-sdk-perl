
package Paws::ImportExport::CancelJobOutput;
  use Moose;
  has Success => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::CancelJobOutput

=head1 ATTRIBUTES


=head2 Success => Bool




=head2 _request_id => Str


=cut

