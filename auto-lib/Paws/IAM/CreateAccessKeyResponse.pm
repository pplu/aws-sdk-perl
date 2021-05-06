
package Paws::IAM::CreateAccessKeyResponse;
  use Moose;
  has AccessKey => (is => 'ro', isa => 'Paws::IAM::AccessKey', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateAccessKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessKey => L<Paws::IAM::AccessKey>

A structure with details about the access key.


=head2 _request_id => Str


=cut

