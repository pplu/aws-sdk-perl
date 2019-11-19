# Generated from default/object.tt
package Paws::S3::MultipartUpload;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_Owner S3_Initiator/;
  has Initiated => (is => 'ro', isa => Str);
  has Initiator => (is => 'ro', isa => S3_Initiator);
  has Key => (is => 'ro', isa => Str);
  has Owner => (is => 'ro', isa => S3_Owner);
  has StorageClass => (is => 'ro', isa => Str);
  has UploadId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StorageClass' => {
                                   'type' => 'Str'
                                 },
               'Key' => {
                          'type' => 'Str'
                        },
               'Initiator' => {
                                'class' => 'Paws::S3::Initiator',
                                'type' => 'S3_Initiator'
                              },
               'Initiated' => {
                                'type' => 'Str'
                              },
               'Owner' => {
                            'class' => 'Paws::S3::Owner',
                            'type' => 'S3_Owner'
                          },
               'UploadId' => {
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

Paws::S3::MultipartUpload

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::MultipartUpload object:

  $service_obj->Method(Att1 => { Initiated => $value, ..., UploadId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::MultipartUpload object:

  $result = $service_obj->Method(...);
  $result->Att1->Initiated

=head1 DESCRIPTION

Container for the MultipartUpload for the Amazon S3 object.

=head1 ATTRIBUTES


=head2 Initiated => Str

  Date and time at which the multipart upload was initiated.


=head2 Initiator => S3_Initiator

  Identifies who initiated the multipart upload.


=head2 Key => Str

  Key of the object for which the multipart upload was initiated.


=head2 Owner => S3_Owner

  Specifies the owner of the object that is part of the multipart upload.


=head2 StorageClass => Str

  The class of storage used to store the object.


=head2 UploadId => Str

  Upload ID that identifies the multipart upload.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

