
package Paws::EFS::PutAccountPreferencesResponse;
  use Moose;
  has ResourceIdPreference => (is => 'ro', isa => 'Paws::EFS::ResourceIdPreference');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::PutAccountPreferencesResponse

=head1 ATTRIBUTES


=head2 ResourceIdPreference => L<Paws::EFS::ResourceIdPreference>




=head2 _request_id => Str


=cut

