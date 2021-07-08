
package Paws::Lambda::PublishLayerVersion;
  use Moose;
  has CompatibleRuntimes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Content => (is => 'ro', isa => 'Paws::Lambda::LayerVersionContentInput', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has LayerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LayerName', required => 1);
  has LicenseInfo => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PublishLayerVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2018-10-31/layers/{LayerName}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::PublishLayerVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::PublishLayerVersion - Arguments for method PublishLayerVersion on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PublishLayerVersion on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method PublishLayerVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PublishLayerVersion.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
# To create a Lambda layer version
# The following example creates a new Python library layer version. The command
# retrieves the layer content a file named layer.zip in the specified S3 bucket.
    my $PublishLayerVersionResponse = $lambda->PublishLayerVersion(
      'CompatibleRuntimes' => [ 'python3.6', 'python3.7' ],
      'Content'            => {
        'S3Bucket' => 'lambda-layers-us-west-2-123456789012',
        'S3Key'    => 'layer.zip'
      },
      'Description' => 'My Python layer',
      'LayerName'   => 'my-layer',
      'LicenseInfo' => 'MIT'
    );

    # Results:
    my $CompatibleRuntimes = $PublishLayerVersionResponse->CompatibleRuntimes;
    my $Content            = $PublishLayerVersionResponse->Content;
    my $CreatedDate        = $PublishLayerVersionResponse->CreatedDate;
    my $Description        = $PublishLayerVersionResponse->Description;
    my $LayerArn           = $PublishLayerVersionResponse->LayerArn;
    my $LayerVersionArn    = $PublishLayerVersionResponse->LayerVersionArn;
    my $LicenseInfo        = $PublishLayerVersionResponse->LicenseInfo;
    my $Version            = $PublishLayerVersionResponse->Version;

    # Returns a L<Paws::Lambda::PublishLayerVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/PublishLayerVersion>

=head1 ATTRIBUTES


=head2 CompatibleRuntimes => ArrayRef[Str|Undef]

A list of compatible function runtimes
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html).
Used for filtering with ListLayers and ListLayerVersions.



=head2 B<REQUIRED> Content => L<Paws::Lambda::LayerVersionContentInput>

The function layer archive.



=head2 Description => Str

The description of the version.



=head2 B<REQUIRED> LayerName => Str

The name or Amazon Resource Name (ARN) of the layer.



=head2 LicenseInfo => Str

The layer's software license. It can be any of the following:

=over

=item *

An SPDX license identifier (https://spdx.org/licenses/). For example,
C<MIT>.

=item *

The URL of a license hosted on the internet. For example,
C<https://opensource.org/licenses/MIT>.

=item *

The full text of the license.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PublishLayerVersion in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

