
package Paws::EC2::CopyImageResult;
  use Moose;
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopyImageResult

=head1 ATTRIBUTES


=head2 ImageId => Str

The ID of the new AMI.


=head2 _request_id => Str


=cut

