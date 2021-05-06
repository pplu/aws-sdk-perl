
package Paws::LexModels::StartImport;
  use Moose;
  has MergeStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mergeStrategy', required => 1);
  has Payload => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'payload', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartImport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/imports/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::StartImportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::StartImport - Arguments for method StartImport on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartImport on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method StartImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartImport.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $StartImportResponse = $models . lex->StartImport(
      MergeStrategy => 'OVERWRITE_LATEST',
      Payload       => 'BlobBlob',
      ResourceType  => 'BOT',

    );

    # Results:
    my $CreatedDate   = $StartImportResponse->CreatedDate;
    my $ImportId      = $StartImportResponse->ImportId;
    my $ImportStatus  = $StartImportResponse->ImportStatus;
    my $MergeStrategy = $StartImportResponse->MergeStrategy;
    my $Name          = $StartImportResponse->Name;
    my $ResourceType  = $StartImportResponse->ResourceType;

    # Returns a L<Paws::LexModels::StartImportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/StartImport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MergeStrategy => Str

Specifies the action that the C<StartImport> operation should take when
there is an existing resource with the same name.

=over

=item *

FAIL_ON_CONFLICT - The import operation is stopped on the first
conflict between a resource in the import file and an existing
resource. The name of the resource causing the conflict is in the
C<failureReason> field of the response to the C<GetImport> operation.

OVERWRITE_LATEST - The import operation proceeds even if there is a
conflict with an existing resource. The $LASTEST version of the
existing resource is overwritten with the data from the import file.

=back


Valid values are: C<"OVERWRITE_LATEST">, C<"FAIL_ON_CONFLICT">

=head2 B<REQUIRED> Payload => Str

A zip archive in binary format. The archive should contain one file, a
JSON file containing the resource to import. The resource should match
the type specified in the C<resourceType> field.



=head2 B<REQUIRED> ResourceType => Str

Specifies the type of resource to export. Each resource also exports
any resources that it depends on.

=over

=item *

A bot exports dependent intents.

=item *

An intent exports dependent slot types.

=back


Valid values are: C<"BOT">, C<"INTENT">, C<"SLOT_TYPE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartImport in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

