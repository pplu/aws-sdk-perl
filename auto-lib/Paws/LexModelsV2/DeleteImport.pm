
package Paws::LexModelsV2::DeleteImport;
  use Moose;
  has ImportId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'importId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteImport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/imports/{importId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DeleteImportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteImport - Arguments for method DeleteImport on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteImport on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DeleteImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteImport.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DeleteImportResponse = $models - v2 -lex->DeleteImport(
      ImportId => 'MyId',

    );

    # Results:
    my $ImportId     = $DeleteImportResponse->ImportId;
    my $ImportStatus = $DeleteImportResponse->ImportStatus;

    # Returns a L<Paws::LexModelsV2::DeleteImportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DeleteImport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportId => Str

The unique identifier of the import to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteImport in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

