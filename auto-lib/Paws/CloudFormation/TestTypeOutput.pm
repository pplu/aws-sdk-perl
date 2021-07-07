
package Paws::CloudFormation::TestTypeOutput;
  use Moose;
  has TypeVersionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::TestTypeOutput

=head1 ATTRIBUTES


=head2 TypeVersionArn => Str

The Amazon Resource Number (ARN) of the extension.


=head2 _request_id => Str


=cut

