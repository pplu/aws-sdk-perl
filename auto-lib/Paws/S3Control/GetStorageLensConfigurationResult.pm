
package Paws::S3Control::GetStorageLensConfigurationResult;
  use Moose;
  has StorageLensConfiguration => (is => 'ro', isa => 'Paws::S3Control::StorageLensConfiguration', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetStorageLensConfigurationResult

=head1 ATTRIBUTES


=head2 StorageLensConfiguration => L<Paws::S3Control::StorageLensConfiguration>

The S3 Storage Lens configuration requested.




=cut

