
package Paws::EC2::CopyImageResult;
  use Moose;
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopyImageResult

=head1 ATTRIBUTES


=head2 ImageId => Str

The ID of the new AMI.




=cut

