
package Paws::S3Control::GetAccessPointPolicyForObjectLambdaResult;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetAccessPointPolicyForObjectLambdaResult

=head1 ATTRIBUTES


=head2 Policy => Str

Object Lambda Access Point resource policy document.




=cut

