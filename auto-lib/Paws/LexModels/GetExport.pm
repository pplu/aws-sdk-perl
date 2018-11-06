
package Paws::LexModels::GetExport;
  use Moose;
  has ExportType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'exportType', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'version', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetExport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/exports/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetExportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetExport - Arguments for method GetExport on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetExport on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetExport.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetExportResponse = $models . lex->GetExport(
      ExportType   => 'ALEXA_SKILLS_KIT',
      Name         => 'MyName',
      ResourceType => 'BOT',
      Version      => 'MyNumericalVersion',

    );

    # Results:
    my $ExportStatus  = $GetExportResponse->ExportStatus;
    my $ExportType    = $GetExportResponse->ExportType;
    my $FailureReason = $GetExportResponse->FailureReason;
    my $Name          = $GetExportResponse->Name;
    my $ResourceType  = $GetExportResponse->ResourceType;
    my $Url           = $GetExportResponse->Url;
    my $Version       = $GetExportResponse->Version;

    # Returns a L<Paws::LexModels::GetExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportType => Str

The format of the exported data.

Valid values are: C<"ALEXA_SKILLS_KIT">, C<"LEX">

=head2 B<REQUIRED> Name => Str

The name of the bot to export.



=head2 B<REQUIRED> ResourceType => Str

The type of resource to export.

Valid values are: C<"BOT">, C<"INTENT">, C<"SLOT_TYPE">

=head2 B<REQUIRED> Version => Str

The version of the bot to export.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetExport in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

