
package Paws::S3Control::ListStorageLensConfigurationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StorageLensConfigurationList => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::ListStorageLensConfigurationEntry]', request_name => 'StorageLensConfiguration', traits => ['NameInRequest']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListStorageLensConfigurationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request produced more than the maximum number of S3 Storage Lens
configuration results, you can pass this value into a subsequent
request to retrieve the next page of results.



=head2 StorageLensConfigurationList => ArrayRef[L<Paws::S3Control::ListStorageLensConfigurationEntry>]

A list of S3 Storage Lens configurations.




=cut

