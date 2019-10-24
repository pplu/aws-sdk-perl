
package Paws::MediaPackageVod::CreateAsset;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackageVod::Types qw//;
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PackagingGroupId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResourceId => (is => 'ro', isa => Str, predicate => 1);
  has SourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourceRoleArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateAsset');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/assets');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaPackageVod::CreateAssetResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'SourceRoleArn' => {
                                    'type' => 'Str'
                                  },
               'PackagingGroupId' => {
                                       'type' => 'Str'
                                     },
               'SourceArn' => {
                                'type' => 'Str'
                              },
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'NameInRequest' => {
                       'ResourceId' => 'resourceId',
                       'SourceRoleArn' => 'sourceRoleArn',
                       'PackagingGroupId' => 'packagingGroupId',
                       'SourceArn' => 'sourceArn',
                       'Id' => 'id'
                     },
  'IsRequired' => {
                    'SourceRoleArn' => 1,
                    'PackagingGroupId' => 1,
                    'SourceArn' => 1,
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::CreateAsset - Arguments for method CreateAsset on L<Paws::MediaPackageVod>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAsset on the
L<AWS Elemental MediaPackage VOD|Paws::MediaPackageVod> service. Use the attributes of this class
as arguments to method CreateAsset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAsset.

=head1 SYNOPSIS

    my $mediapackage-vod = Paws->service('MediaPackageVod');
    my $CreateAssetResponse = $mediapackage -vod->CreateAsset(
      Id               => 'My__string',
      PackagingGroupId => 'My__string',
      SourceArn        => 'My__string',
      SourceRoleArn    => 'My__string',
      ResourceId       => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Arn              = $CreateAssetResponse->Arn;
    my $EgressEndpoints  = $CreateAssetResponse->EgressEndpoints;
    my $Id               = $CreateAssetResponse->Id;
    my $PackagingGroupId = $CreateAssetResponse->PackagingGroupId;
    my $ResourceId       = $CreateAssetResponse->ResourceId;
    my $SourceArn        = $CreateAssetResponse->SourceArn;
    my $SourceRoleArn    = $CreateAssetResponse->SourceRoleArn;

    # Returns a L<Paws::MediaPackageVod::CreateAssetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod/CreateAsset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier for the Asset.



=head2 B<REQUIRED> PackagingGroupId => Str

The ID of the PackagingGroup for the Asset.



=head2 ResourceId => Str

The resource ID to include in SPEKE key requests.



=head2 B<REQUIRED> SourceArn => Str

ARN of the source object in S3.



=head2 B<REQUIRED> SourceRoleArn => Str

The IAM role ARN used to access the source S3 bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAsset in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

