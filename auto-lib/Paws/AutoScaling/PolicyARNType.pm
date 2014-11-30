
package Paws::AutoScaling::PolicyARNType {
  use Moose;
  with 'Paws::API::ResultParser';
  has PolicyARN => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::PolicyARNType

=head1 ATTRIBUTES

=head2 PolicyARN => Str

  

The Amazon Resource Name (ARN) of the policy.











=cut

