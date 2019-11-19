# Generated from json/callargs_class.tt

package Paws::LakeFormation::GetDataLakeSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LakeFormation::Types qw//;
  has CatalogId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetDataLakeSettings');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::LakeFormation::GetDataLakeSettingsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CatalogId' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetDataLakeSettings - Arguments for method GetDataLakeSettings on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataLakeSettings on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method GetDataLakeSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataLakeSettings.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $GetDataLakeSettingsResponse = $lakeformation->GetDataLakeSettings(
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

    # Results:
    my $DataLakeSettings = $GetDataLakeSettingsResponse->DataLakeSettings;

    # Returns a L<Paws::LakeFormation::GetDataLakeSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/GetDataLakeSettings>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your AWS Lake Formation environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataLakeSettings in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

