
package Paws::Glue::GetDataCatalogEncryptionSettings;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataCatalogEncryptionSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetDataCatalogEncryptionSettingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataCatalogEncryptionSettings - Arguments for method GetDataCatalogEncryptionSettings on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataCatalogEncryptionSettings on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetDataCatalogEncryptionSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataCatalogEncryptionSettings.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetDataCatalogEncryptionSettingsResponse =
      $glue->GetDataCatalogEncryptionSettings(
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
      );

    # Results:
    my $DataCatalogEncryptionSettings =
      $GetDataCatalogEncryptionSettingsResponse->DataCatalogEncryptionSettings;

    # Returns a L<Paws::Glue::GetDataCatalogEncryptionSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetDataCatalogEncryptionSettings>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog for which to retrieve the security
configuration. If none is supplied, the AWS account ID is used by
default.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataCatalogEncryptionSettings in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

