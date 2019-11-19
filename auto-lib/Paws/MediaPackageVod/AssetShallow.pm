# Generated from default/object.tt
package Paws::MediaPackageVod::AssetShallow;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackageVod::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has PackagingGroupId => (is => 'ro', isa => Str);
  has ResourceId => (is => 'ro', isa => Str);
  has SourceArn => (is => 'ro', isa => Str);
  has SourceRoleArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceArn' => {
                                'type' => 'Str'
                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Id' => {
                         'type' => 'Str'
                       },
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'PackagingGroupId' => {
                                       'type' => 'Str'
                                     },
               'SourceRoleArn' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'PackagingGroupId' => 'packagingGroupId',
                       'SourceRoleArn' => 'sourceRoleArn',
                       'SourceArn' => 'sourceArn',
                       'ResourceId' => 'resourceId',
                       'Id' => 'id',
                       'Arn' => 'arn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::AssetShallow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::AssetShallow object:

  $service_obj->Method(Att1 => { Arn => $value, ..., SourceRoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::AssetShallow object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A MediaPackage VOD Asset resource.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the Asset.


=head2 Id => Str

  The unique identifier for the Asset.


=head2 PackagingGroupId => Str

  The ID of the PackagingGroup for the Asset.


=head2 ResourceId => Str

  The resource ID to include in SPEKE key requests.


=head2 SourceArn => Str

  ARN of the source object in S3.


=head2 SourceRoleArn => Str

  The IAM role ARN used to access the source S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

