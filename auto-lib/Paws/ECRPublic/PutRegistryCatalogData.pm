
package Paws::ECRPublic::PutRegistryCatalogData;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRegistryCatalogData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECRPublic::PutRegistryCatalogDataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::PutRegistryCatalogData - Arguments for method PutRegistryCatalogData on L<Paws::ECRPublic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRegistryCatalogData on the
L<Amazon Elastic Container Registry Public|Paws::ECRPublic> service. Use the attributes of this class
as arguments to method PutRegistryCatalogData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRegistryCatalogData.

=head1 SYNOPSIS

    my $api.ecr-public = Paws->service('ECRPublic');
    my $PutRegistryCatalogDataResponse =
      $api . ecr-public->PutRegistryCatalogData(
      DisplayName => 'MyRegistryDisplayName',    # OPTIONAL
      );

    # Results:
    my $RegistryCatalogData =
      $PutRegistryCatalogDataResponse->RegistryCatalogData;

    # Returns a L<Paws::ECRPublic::PutRegistryCatalogDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr-public/PutRegistryCatalogData>

=head1 ATTRIBUTES


=head2 DisplayName => Str

The display name for a public registry. The display name is shown as
the repository author in the Amazon ECR Public Gallery.

The registry display name is only publicly visible in the Amazon ECR
Public Gallery for verified accounts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRegistryCatalogData in L<Paws::ECRPublic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

