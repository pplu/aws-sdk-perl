
package Paws::ResourceGroups::GetGroupOutput;
  use Moose;
  has Group => (is => 'ro', isa => 'Paws::ResourceGroups::Group');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GetGroupOutput

=head1 ATTRIBUTES


=head2 Group => L<Paws::ResourceGroups::Group>

A full description of the resource group.


=head2 _request_id => Str


=cut

