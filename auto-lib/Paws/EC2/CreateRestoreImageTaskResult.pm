
package Paws::EC2::CreateRestoreImageTaskResult;
  use Moose;
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateRestoreImageTaskResult

=head1 ATTRIBUTES


=head2 ImageId => Str

The AMI ID.


=head2 _request_id => Str


=cut

