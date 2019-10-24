# Generated from default/object.tt
package Paws::StorageGateway::NFSFileShareInfo;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str Bool/;
  use Paws::StorageGateway::Types qw/StorageGateway_Tag StorageGateway_NFSFileShareDefaults/;
  has ClientList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has DefaultStorageClass => (is => 'ro', isa => Str);
  has FileShareARN => (is => 'ro', isa => Str);
  has FileShareId => (is => 'ro', isa => Str);
  has FileShareStatus => (is => 'ro', isa => Str);
  has GatewayARN => (is => 'ro', isa => Str);
  has GuessMIMETypeEnabled => (is => 'ro', isa => Bool);
  has KMSEncrypted => (is => 'ro', isa => Bool);
  has KMSKey => (is => 'ro', isa => Str);
  has LocationARN => (is => 'ro', isa => Str);
  has NFSFileShareDefaults => (is => 'ro', isa => StorageGateway_NFSFileShareDefaults);
  has ObjectACL => (is => 'ro', isa => Str);
  has Path => (is => 'ro', isa => Str);
  has ReadOnly => (is => 'ro', isa => Bool);
  has RequesterPays => (is => 'ro', isa => Bool);
  has Role => (is => 'ro', isa => Str);
  has Squash => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[StorageGateway_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Squash' => {
                             'type' => 'Str'
                           },
               'FileShareId' => {
                                  'type' => 'Str'
                                },
               'ObjectACL' => {
                                'type' => 'Str'
                              },
               'KMSKey' => {
                             'type' => 'Str'
                           },
               'KMSEncrypted' => {
                                   'type' => 'Bool'
                                 },
               'NFSFileShareDefaults' => {
                                           'class' => 'Paws::StorageGateway::NFSFileShareDefaults',
                                           'type' => 'StorageGateway_NFSFileShareDefaults'
                                         },
               'GatewayARN' => {
                                 'type' => 'Str'
                               },
               'RequesterPays' => {
                                    'type' => 'Bool'
                                  },
               'LocationARN' => {
                                  'type' => 'Str'
                                },
               'ReadOnly' => {
                               'type' => 'Bool'
                             },
               'Role' => {
                           'type' => 'Str'
                         },
               'FileShareStatus' => {
                                      'type' => 'Str'
                                    },
               'ClientList' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'DefaultStorageClass' => {
                                          'type' => 'Str'
                                        },
               'Path' => {
                           'type' => 'Str'
                         },
               'Tags' => {
                           'class' => 'Paws::StorageGateway::Tag',
                           'type' => 'ArrayRef[StorageGateway_Tag]'
                         },
               'FileShareARN' => {
                                   'type' => 'Str'
                                 },
               'GuessMIMETypeEnabled' => {
                                           'type' => 'Bool'
                                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::NFSFileShareInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::NFSFileShareInfo object:

  $service_obj->Method(Att1 => { ClientList => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::NFSFileShareInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientList

=head1 DESCRIPTION

The Unix file permissions and ownership information assigned, by
default, to native S3 objects when file gateway discovers them in S3
buckets. This operation is only supported in file gateways.

=head1 ATTRIBUTES


=head2 ClientList => ArrayRef[Str|Undef]

  


=head2 DefaultStorageClass => Str

  The default storage class for objects put into an Amazon S3 bucket by
the file gateway. Possible values are C<S3_STANDARD>,
C<S3_STANDARD_IA>, or C<S3_ONEZONE_IA>. If this field is not populated,
the default value C<S3_STANDARD> is used. Optional.


=head2 FileShareARN => Str

  


=head2 FileShareId => Str

  


=head2 FileShareStatus => Str

  


=head2 GatewayARN => Str

  


=head2 GuessMIMETypeEnabled => Bool

  A value that enables guessing of the MIME type for uploaded objects
based on file extensions. Set this value to true to enable MIME type
guessing, and otherwise to false. The default value is true.


=head2 KMSEncrypted => Bool

  True to use Amazon S3 server side encryption with your own AWS KMS key,
or false to use a key managed by Amazon S3. Optional.


=head2 KMSKey => Str

  


=head2 LocationARN => Str

  


=head2 NFSFileShareDefaults => StorageGateway_NFSFileShareDefaults

  


=head2 ObjectACL => Str

  


=head2 Path => Str

  


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


=head2 Role => Str

  


=head2 Squash => Str

  


=head2 Tags => ArrayRef[StorageGateway_Tag]

  A list of up to 50 tags assigned to the NFS file share, sorted
alphabetically by key name. Each tag is a key-value pair. For a gateway
with more than 10 tags assigned, you can view all tags using the
C<ListTagsForResource> API operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

