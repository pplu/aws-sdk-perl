
package Paws::ES::UpdatePackage;
  use Moose;
  has CommitMessage => (is => 'ro', isa => 'Str');
  has PackageDescription => (is => 'ro', isa => 'Str');
  has PackageID => (is => 'ro', isa => 'Str', required => 1);
  has PackageSource => (is => 'ro', isa => 'Paws::ES::PackageSource', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/packages/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::UpdatePackageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::UpdatePackage - Arguments for method UpdatePackage on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePackage on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method UpdatePackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePackage.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $UpdatePackageResponse = $es->UpdatePackage(
      PackageID     => 'MyPackageID',
      PackageSource => {
        S3BucketName => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
        S3Key        => 'MyS3Key',           # OPTIONAL
      },
      CommitMessage      => 'MyCommitMessage',         # OPTIONAL
      PackageDescription => 'MyPackageDescription',    # OPTIONAL
    );

    # Results:
    my $PackageDetails = $UpdatePackageResponse->PackageDetails;

    # Returns a L<Paws::ES::UpdatePackageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/UpdatePackage>

=head1 ATTRIBUTES


=head2 CommitMessage => Str

An info message for the new version which will be shown as part of
C<GetPackageVersionHistoryResponse>.



=head2 PackageDescription => Str

New description of the package.



=head2 B<REQUIRED> PackageID => Str

Unique identifier for the package.



=head2 B<REQUIRED> PackageSource => L<Paws::ES::PackageSource>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePackage in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

