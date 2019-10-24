
package Paws::MediaPackageVod::DescribeAsset;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackageVod::Types qw//;
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeAsset');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/assets/{id}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaPackageVod::DescribeAssetResponse');

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

Paws::MediaPackageVod::DescribeAsset - Arguments for method DescribeAsset on L<Paws::MediaPackageVod>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAsset on the
L<AWS Elemental MediaPackage VOD|Paws::MediaPackageVod> service. Use the attributes of this class
as arguments to method DescribeAsset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAsset.

=head1 SYNOPSIS

    my $mediapackage-vod = Paws->service('MediaPackageVod');
    my $DescribeAssetResponse = $mediapackage -vod->DescribeAsset(
      Id => 'My__string',

    );

    # Results:
    my $Arn              = $DescribeAssetResponse->Arn;
    my $EgressEndpoints  = $DescribeAssetResponse->EgressEndpoints;
    my $Id               = $DescribeAssetResponse->Id;
    my $PackagingGroupId = $DescribeAssetResponse->PackagingGroupId;
    my $ResourceId       = $DescribeAssetResponse->ResourceId;
    my $SourceArn        = $DescribeAssetResponse->SourceArn;
    my $SourceRoleArn    = $DescribeAssetResponse->SourceRoleArn;

    # Returns a L<Paws::MediaPackageVod::DescribeAssetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod/DescribeAsset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of an MediaPackage VOD Asset resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAsset in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

