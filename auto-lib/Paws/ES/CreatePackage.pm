
package Paws::ES::CreatePackage;
  use Moose;
  has PackageDescription => (is => 'ro', isa => 'Str');
  has PackageName => (is => 'ro', isa => 'Str', required => 1);
  has PackageSource => (is => 'ro', isa => 'Paws::ES::PackageSource', required => 1);
  has PackageType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/packages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::CreatePackageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::CreatePackage - Arguments for method CreatePackage on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePackage on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method CreatePackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePackage.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $CreatePackageResponse = $es->CreatePackage(
      PackageName   => 'MyPackageName',
      PackageSource => {
        S3BucketName => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
        S3Key        => 'MyS3Key',           # OPTIONAL
      },
      PackageType        => 'TXT-DICTIONARY',
      PackageDescription => 'MyPackageDescription',    # OPTIONAL
    );

    # Results:
    my $PackageDetails = $CreatePackageResponse->PackageDetails;

    # Returns a L<Paws::ES::CreatePackageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/CreatePackage>

=head1 ATTRIBUTES


=head2 PackageDescription => Str

Description of the package.



=head2 B<REQUIRED> PackageName => Str

Unique identifier for the package.



=head2 B<REQUIRED> PackageSource => L<Paws::ES::PackageSource>

The customer S3 location C<PackageSource> for importing the package.



=head2 B<REQUIRED> PackageType => Str

Type of package. Currently supports only TXT-DICTIONARY.

Valid values are: C<"TXT-DICTIONARY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePackage in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

