
package Paws::LexModelsV2::DescribeImport;
  use Moose;
  has ImportId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'importId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/imports/{importId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeImportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeImport - Arguments for method DescribeImport on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImport on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImport.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeImportResponse = $models - v2 -lex->DescribeImport(
      ImportId => 'MyId',

    );

    # Results:
    my $CreationDateTime      = $DescribeImportResponse->CreationDateTime;
    my $FailureReasons        = $DescribeImportResponse->FailureReasons;
    my $ImportId              = $DescribeImportResponse->ImportId;
    my $ImportStatus          = $DescribeImportResponse->ImportStatus;
    my $ImportedResourceId    = $DescribeImportResponse->ImportedResourceId;
    my $ImportedResourceName  = $DescribeImportResponse->ImportedResourceName;
    my $LastUpdatedDateTime   = $DescribeImportResponse->LastUpdatedDateTime;
    my $MergeStrategy         = $DescribeImportResponse->MergeStrategy;
    my $ResourceSpecification = $DescribeImportResponse->ResourceSpecification;

    # Returns a L<Paws::LexModelsV2::DescribeImportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeImport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportId => Str

The unique identifier of the import to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImport in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

