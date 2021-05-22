
package Paws::SESv2::CreateImportJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::CreateImportJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

A string that represents the import job ID.


=head2 _request_id => Str


=cut

