
package Paws::S3Control::GetAccessPointPolicyStatusForObjectLambdaResult;
  use Moose;
  has PolicyStatus => (is => 'ro', isa => 'Paws::S3Control::PolicyStatus');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetAccessPointPolicyStatusForObjectLambdaResult

=head1 ATTRIBUTES


=head2 PolicyStatus => L<Paws::S3Control::PolicyStatus>






=cut

