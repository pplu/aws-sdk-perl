
package Paws::ResourceGroups::TagOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::ResourceGroups::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::TagOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the tagged resource.


=head2 Tags => L<Paws::ResourceGroups::Tags>

The tags that have been added to the specified resource.


=head2 _request_id => Str


=cut

