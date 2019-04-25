
package Paws::AlexaForBusiness::ListTagsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 Tags => ArrayRef[L<Paws::AlexaForBusiness::Tag>]

The tags requested for the specified resource.


=head2 _request_id => Str


=cut

1;