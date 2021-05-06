
package Paws::SSM::DescribePatchPropertiesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'ArrayRef[Paws::SSM::PatchPropertyEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchPropertiesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. (You use this token in
the next call.)


=head2 Properties => ArrayRef[L<Paws::SSM::PatchPropertyEntry>]

A list of the properties for patches matching the filter request
parameters.


=head2 _request_id => Str


=cut

1;