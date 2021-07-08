
package Paws::CloudFormation::ActivateTypeOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ActivateTypeOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Number (ARN) of the activated extension, in this
account and region.


=head2 _request_id => Str


=cut

