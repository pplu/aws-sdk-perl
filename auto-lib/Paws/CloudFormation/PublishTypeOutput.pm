
package Paws::CloudFormation::PublishTypeOutput;
  use Moose;
  has PublicTypeArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::PublishTypeOutput

=head1 ATTRIBUTES


=head2 PublicTypeArn => Str

The Amazon Resource Number (ARN) assigned to the public extension upon
publication.


=head2 _request_id => Str


=cut

