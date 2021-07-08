
package Paws::S3Control::GetStorageLensConfigurationTaggingResult;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::StorageLensTag]', request_name => 'Tag', traits => ['NameInRequest']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetStorageLensConfigurationTaggingResult

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::S3Control::StorageLensTag>]

The tags of S3 Storage Lens configuration requested.




=cut

