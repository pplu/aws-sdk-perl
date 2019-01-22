
package Paws::StorageGateway::RefreshCache;
  use Moose;
  has FileShareARN => (is => 'ro', isa => 'Str', required => 1);
  has FolderList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Recursive => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RefreshCache');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::RefreshCacheOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::RefreshCache - Arguments for method RefreshCache on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RefreshCache on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method RefreshCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RefreshCache.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $RefreshCacheOutput = $storagegateway->RefreshCache(
      FileShareARN => 'MyFileShareARN',
      FolderList   => [
        'MyFolder', ...    # min: 1, max: 1024
      ],                   # OPTIONAL
      Recursive => 1,      # OPTIONAL
    );

    # Results:
    my $FileShareARN   = $RefreshCacheOutput->FileShareARN;
    my $NotificationId = $RefreshCacheOutput->NotificationId;

    # Returns a L<Paws::StorageGateway::RefreshCacheOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/RefreshCache>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileShareARN => Str

The Amazon Resource Name (ARN) of the file share you want to refresh.



=head2 FolderList => ArrayRef[Str|Undef]

A comma-separated list of the paths of folders to refresh in the cache.
The default is [C<"/">]. The default refreshes objects and folders at
the root of the Amazon S3 bucket. If C<Recursive> is set to "true", the
entire S3 bucket that the file share has access to is refreshed.



=head2 Recursive => Bool

A value that specifies whether to recursively refresh folders in the
cache. The refresh includes folders that were in the cache the last
time the gateway listed the folder's contents. If this value set to
"true", each folder that is listed in C<FolderList> is recursively
updated. Otherwise, subfolders listed in C<FolderList> are not
refreshed. Only objects that are in folders listed directly under
C<FolderList> are found and used for the update. The default is "true".




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RefreshCache in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

