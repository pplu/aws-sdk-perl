
package Paws::CloudTrail::GetTrailResponse;
  use Moose;
  has Trail => (is => 'ro', isa => 'Paws::CloudTrail::Trail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::GetTrailResponse

=head1 ATTRIBUTES


=head2 Trail => L<Paws::CloudTrail::Trail>




=head2 _request_id => Str


=cut

1;