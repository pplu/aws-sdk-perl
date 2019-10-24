# Generated from default/object.tt
package Paws::S3Control::S3CopyObjectOperation;
  use Moo;
  use Types::Standard qw/ArrayRef Str Bool/;
  use Paws::S3Control::Types qw/S3Control_S3Tag S3Control_S3Grant S3Control_S3ObjectMetadata/;
  has AccessControlGrants => (is => 'ro', isa => ArrayRef[S3Control_S3Grant]);
  has CannedAccessControlList => (is => 'ro', isa => Str);
  has MetadataDirective => (is => 'ro', isa => Str);
  has ModifiedSinceConstraint => (is => 'ro', isa => Str);
  has NewObjectMetadata => (is => 'ro', isa => S3Control_S3ObjectMetadata);
  has NewObjectTagging => (is => 'ro', isa => ArrayRef[S3Control_S3Tag]);
  has ObjectLockLegalHoldStatus => (is => 'ro', isa => Str);
  has ObjectLockMode => (is => 'ro', isa => Str);
  has ObjectLockRetainUntilDate => (is => 'ro', isa => Str);
  has RedirectLocation => (is => 'ro', isa => Str);
  has RequesterPays => (is => 'ro', isa => Bool);
  has SSEAwsKmsKeyId => (is => 'ro', isa => Str);
  has StorageClass => (is => 'ro', isa => Str);
  has TargetKeyPrefix => (is => 'ro', isa => Str);
  has TargetResource => (is => 'ro', isa => Str);
  has UnModifiedSinceConstraint => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NewObjectTagging' => {
                                       'class' => 'Paws::S3Control::S3Tag',
                                       'type' => 'ArrayRef[S3Control_S3Tag]'
                                     },
               'ModifiedSinceConstraint' => {
                                              'type' => 'Str'
                                            },
               'AccessControlGrants' => {
                                          'class' => 'Paws::S3Control::S3Grant',
                                          'type' => 'ArrayRef[S3Control_S3Grant]'
                                        },
               'SSEAwsKmsKeyId' => {
                                     'type' => 'Str'
                                   },
               'TargetResource' => {
                                     'type' => 'Str'
                                   },
               'ObjectLockLegalHoldStatus' => {
                                                'type' => 'Str'
                                              },
               'RequesterPays' => {
                                    'type' => 'Bool'
                                  },
               'ObjectLockRetainUntilDate' => {
                                                'type' => 'Str'
                                              },
               'TargetKeyPrefix' => {
                                      'type' => 'Str'
                                    },
               'NewObjectMetadata' => {
                                        'class' => 'Paws::S3Control::S3ObjectMetadata',
                                        'type' => 'S3Control_S3ObjectMetadata'
                                      },
               'RedirectLocation' => {
                                       'type' => 'Str'
                                     },
               'MetadataDirective' => {
                                        'type' => 'Str'
                                      },
               'ObjectLockMode' => {
                                     'type' => 'Str'
                                   },
               'UnModifiedSinceConstraint' => {
                                                'type' => 'Str'
                                              },
               'CannedAccessControlList' => {
                                              'type' => 'Str'
                                            },
               'StorageClass' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::S3CopyObjectOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::S3CopyObjectOperation object:

  $service_obj->Method(Att1 => { AccessControlGrants => $value, ..., UnModifiedSinceConstraint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::S3CopyObjectOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessControlGrants

=head1 DESCRIPTION

Contains the configuration parameters for a PUT Copy object operation.
Amazon S3 batch operations passes each value through to the underlying
PUT Copy object API. For more information about the parameters for this
operation, see PUT Object - Copy
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectCOPY.html).

=head1 ATTRIBUTES


=head2 AccessControlGrants => ArrayRef[S3Control_S3Grant]

  


=head2 CannedAccessControlList => Str

  


=head2 MetadataDirective => Str

  


=head2 ModifiedSinceConstraint => Str

  


=head2 NewObjectMetadata => S3Control_S3ObjectMetadata

  


=head2 NewObjectTagging => ArrayRef[S3Control_S3Tag]

  


=head2 ObjectLockLegalHoldStatus => Str

  


=head2 ObjectLockMode => Str

  


=head2 ObjectLockRetainUntilDate => Str

  


=head2 RedirectLocation => Str

  


=head2 RequesterPays => Bool

  


=head2 SSEAwsKmsKeyId => Str

  


=head2 StorageClass => Str

  


=head2 TargetKeyPrefix => Str

  


=head2 TargetResource => Str

  


=head2 UnModifiedSinceConstraint => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

