
package Paws::S3Control::GetAccessPointPolicyResult;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetAccessPointPolicyResult

=head1 ATTRIBUTES


=head2 Policy => Str

The access point policy associated with the specified access point.




=cut

