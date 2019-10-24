# Generated from json/callargs_class.tt

package Paws::StorageGateway::UpdateNFSFileShare;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::StorageGateway::Types qw/StorageGateway_NFSFileShareDefaults/;
  has ClientList => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has DefaultStorageClass => (is => 'ro', isa => Str, predicate => 1);
  has FileShareARN => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has GuessMIMETypeEnabled => (is => 'ro', isa => Bool, predicate => 1);
  has KMSEncrypted => (is => 'ro', isa => Bool, predicate => 1);
  has KMSKey => (is => 'ro', isa => Str, predicate => 1);
  has NFSFileShareDefaults => (is => 'ro', isa => StorageGateway_NFSFileShareDefaults, predicate => 1);
  has ObjectACL => (is => 'ro', isa => Str, predicate => 1);
  has ReadOnly => (is => 'ro', isa => Bool, predicate => 1);
  has RequesterPays => (is => 'ro', isa => Bool, predicate => 1);
  has Squash => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateNFSFileShare');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::StorageGateway::UpdateNFSFileShareOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReadOnly' => {
                               'type' => 'Bool'
                             },
               'Squash' => {
                             'type' => 'Str'
                           },
               'ClientList' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'ObjectACL' => {
                                'type' => 'Str'
                              },
               'DefaultStorageClass' => {
                                          'type' => 'Str'
                                        },
               'KMSKey' => {
                             'type' => 'Str'
                           },
               'FileShareARN' => {
                                   'type' => 'Str'
                                 },
               'KMSEncrypted' => {
                                   'type' => 'Bool'
                                 },
               'NFSFileShareDefaults' => {
                                           'class' => 'Paws::StorageGateway::NFSFileShareDefaults',
                                           'type' => 'StorageGateway_NFSFileShareDefaults'
                                         },
               'RequesterPays' => {
                                    'type' => 'Bool'
                                  },
               'GuessMIMETypeEnabled' => {
                                           'type' => 'Bool'
                                         }
             },
  'IsRequired' => {
                    'FileShareARN' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateNFSFileShare - Arguments for method UpdateNFSFileShare on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNFSFileShare on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method UpdateNFSFileShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNFSFileShare.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $UpdateNFSFileShareOutput = $storagegateway->UpdateNFSFileShare(
      FileShareARN         => 'MyFileShareARN',
      ClientList           => [ 'MyIPV4AddressCIDR', ... ],    # OPTIONAL
      DefaultStorageClass  => 'MyStorageClass',                # OPTIONAL
      GuessMIMETypeEnabled => 1,                               # OPTIONAL
      KMSEncrypted         => 1,                               # OPTIONAL
      KMSKey               => 'MyKMSKey',                      # OPTIONAL
      NFSFileShareDefaults => {
        DirectoryMode => 'MyPermissionMode',    # min: 1, max: 4; OPTIONAL
        FileMode      => 'MyPermissionMode',    # min: 1, max: 4; OPTIONAL
        GroupId       => 1,                     # max: 4294967294; OPTIONAL
        OwnerId       => 1,                     # max: 4294967294; OPTIONAL
      },    # OPTIONAL
      ObjectACL     => 'private',     # OPTIONAL
      ReadOnly      => 1,             # OPTIONAL
      RequesterPays => 1,             # OPTIONAL
      Squash        => 'MySquash',    # OPTIONAL
    );

    # Results:
    my $FileShareARN = $UpdateNFSFileShareOutput->FileShareARN;

    # Returns a L<Paws::StorageGateway::UpdateNFSFileShareOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/UpdateNFSFileShare>

=head1 ATTRIBUTES


=head2 ClientList => ArrayRef[Str|Undef]

The list of clients that are allowed to access the file gateway. The
list must contain either valid IP addresses or valid CIDR blocks.



=head2 DefaultStorageClass => Str

The default storage class for objects put into an Amazon S3 bucket by
the file gateway. Possible values are C<S3_STANDARD>,
C<S3_STANDARD_IA>, or C<S3_ONEZONE_IA>. If this field is not populated,
the default value C<S3_STANDARD> is used. Optional.



=head2 B<REQUIRED> FileShareARN => Str

The Amazon Resource Name (ARN) of the file share to be updated.



=head2 GuessMIMETypeEnabled => Bool

A value that enables guessing of the MIME type for uploaded objects
based on file extensions. Set this value to true to enable MIME type
guessing, and otherwise to false. The default value is true.



=head2 KMSEncrypted => Bool

True to use Amazon S3 server side encryption with your own AWS KMS key,
or false to use a key managed by Amazon S3. Optional.



=head2 KMSKey => Str

The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3
server side encryption. This value can only be set when KMSEncrypted is
true. Optional.



=head2 NFSFileShareDefaults => StorageGateway_NFSFileShareDefaults

The default values for the file share. Optional.



=head2 ObjectACL => Str

A value that sets the access control list permission for objects in the
S3 bucket that a file gateway puts objects into. The default value is
"private".

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">, C<"bucket-owner-read">, C<"bucket-owner-full-control">, C<"aws-exec-read">

=head2 ReadOnly => Bool

A value that sets the write status of a file share. This value is true
if the write status is read-only, and otherwise false.



=head2 RequesterPays => Bool

A value that sets who pays the cost of the request and the cost
associated with data download from the S3 bucket. If this value is set
to true, the requester pays the costs. Otherwise the S3 bucket owner
pays. However, the S3 bucket owner always pays the cost of storing
data.

C<RequesterPays> is a configuration for the S3 bucket that backs the
file share, so make sure that the configuration on the file share is
the same as the S3 bucket configuration.



=head2 Squash => Str

The user mapped to anonymous user. Valid options are the following:

=over

=item *

C<RootSquash> - Only root is mapped to anonymous user.

=item *

C<NoSquash> - No one is mapped to anonymous user

=item *

C<AllSquash> - Everyone is mapped to anonymous user.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNFSFileShare in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

