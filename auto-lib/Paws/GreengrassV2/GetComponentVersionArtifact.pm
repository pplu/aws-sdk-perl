
package Paws::GreengrassV2::GetComponentVersionArtifact;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);
  has ArtifactName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'artifactName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetComponentVersionArtifact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/components/{arn}/artifacts/{artifactName+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::GetComponentVersionArtifactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::GetComponentVersionArtifact - Arguments for method GetComponentVersionArtifact on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetComponentVersionArtifact on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method GetComponentVersionArtifact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetComponentVersionArtifact.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $GetComponentVersionArtifactResponse =
      $greengrass->GetComponentVersionArtifact(
      Arn          => 'MyComponentVersionARN',
      ArtifactName => 'MyNonEmptyString',

      );

    # Results:
    my $PreSignedUrl = $GetComponentVersionArtifactResponse->PreSignedUrl;

  # Returns a L<Paws::GreengrassV2::GetComponentVersionArtifactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetComponentVersionArtifact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the component version. Specify the ARN of a public component
version.



=head2 B<REQUIRED> ArtifactName => Str

The name of the artifact.

You can use the GetComponent
(https://docs.aws.amazon.com/greengrass/v2/APIReference/API_GetComponent.html)
operation to download the component recipe, which includes the URI of
the artifact. The artifact name is the section of the URI after the
scheme. For example, in the artifact URI
C<greengrass:SomeArtifact.zip>, the artifact name is
C<SomeArtifact.zip>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetComponentVersionArtifact in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

