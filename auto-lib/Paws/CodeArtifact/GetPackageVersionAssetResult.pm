
package Paws::CodeArtifact::GetPackageVersionAssetResult;
  use Moose;
  has Asset => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'asset');
  has AssetName => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-AssetName');
  has PackageVersion => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-PackageVersion');
  has PackageVersionRevision => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-PackageVersionRevision');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Asset');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::GetPackageVersionAssetResult

=head1 ATTRIBUTES


=head2 Asset => Str

The binary file, or asset, that is downloaded.


=head2 AssetName => Str

The name of the asset that is downloaded.


=head2 PackageVersion => Str

A string that contains the package version (for example, C<3.5.2>).


=head2 PackageVersionRevision => Str

The name of the package version revision that contains the downloaded
asset.


=head2 _request_id => Str


=cut

