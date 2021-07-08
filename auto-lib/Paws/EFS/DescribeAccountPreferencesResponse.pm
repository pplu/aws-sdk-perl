
package Paws::EFS::DescribeAccountPreferencesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceIdPreference => (is => 'ro', isa => 'Paws::EFS::ResourceIdPreference');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeAccountPreferencesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 ResourceIdPreference => L<Paws::EFS::ResourceIdPreference>




=head2 _request_id => Str


=cut

