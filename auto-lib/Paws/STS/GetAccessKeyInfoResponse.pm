
package Paws::STS::GetAccessKeyInfoResponse;
  use Moose;
  has Account => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::GetAccessKeyInfoResponse

=head1 ATTRIBUTES


=head2 Account => Str

The number used to identify the AWS account.


=head2 _request_id => Str


=cut

