
package Paws::MediaPackageVod::DeleteAsset;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackageVod::Types qw//;
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteAsset');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/assets/{id}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaPackageVod::DeleteAssetResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'ParamInURI' => {
                    'Id' => 'id'
                  },
  'IsRequired' => {
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::DeleteAsset - Arguments for method DeleteAsset on L<Paws::MediaPackageVod>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAsset on the
L<AWS Elemental MediaPackage VOD|Paws::MediaPackageVod> service. Use the attributes of this class
as arguments to method DeleteAsset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAsset.

=head1 SYNOPSIS

    my $mediapackage-vod = Paws->service('MediaPackageVod');
    my $DeleteAssetResponse = $mediapackage -vod->DeleteAsset(
      Id => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod/DeleteAsset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the MediaPackage VOD Asset resource to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAsset in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

