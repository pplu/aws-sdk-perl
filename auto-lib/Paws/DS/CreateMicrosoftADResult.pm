
package Paws::DS::CreateMicrosoftADResult;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::CreateMicrosoftADResult

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The identifier of the directory that was created.


=head2 _request_id => Str


=cut

1;