# Generated from default/object.tt
package Paws::MediaPackage::S3Destination;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackage::Types qw//;
  has BucketName => (is => 'ro', isa => Str, required => 1);
  has ManifestKey => (is => 'ro', isa => Str, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'BucketName' => 'bucketName',
                       'ManifestKey' => 'manifestKey'
                     },
  'IsRequired' => {
                    'ManifestKey' => 1,
                    'BucketName' => 1,
                    'RoleArn' => 1
                  },
  'types' => {
               'ManifestKey' => {
                                  'type' => 'Str'
                                },
               'BucketName' => {
                                 'type' => 'Str'
                               },
               'RoleArn' => {
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

Paws::MediaPackage::S3Destination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::S3Destination object:

  $service_obj->Method(Att1 => { BucketName => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::S3Destination object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketName

=head1 DESCRIPTION

Configuration parameters for where in an S3 bucket to place the
harvested content

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketName => Str

  The name of an S3 bucket within which harvested content will be
exported


=head2 B<REQUIRED> ManifestKey => Str

  The key in the specified S3 bucket where the harvested top-level
manifest will be placed.


=head2 B<REQUIRED> RoleArn => Str

  The IAM role used to write to the specified S3 bucket



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

