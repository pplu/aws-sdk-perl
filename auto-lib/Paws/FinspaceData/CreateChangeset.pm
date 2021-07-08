
package Paws::FinspaceData::CreateChangeset;
  use Moose;
  has ChangeType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changeType', required => 1);
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetId', required => 1);
  has FormatParams => (is => 'ro', isa => 'Paws::FinspaceData::StringMap', traits => ['NameInRequest'], request_name => 'formatParams');
  has FormatType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'formatType');
  has SourceParams => (is => 'ro', isa => 'Paws::FinspaceData::StringMap', traits => ['NameInRequest'], request_name => 'sourceParams', required => 1);
  has SourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceType', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::FinspaceData::StringMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChangeset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{datasetId}/changesets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::CreateChangesetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::CreateChangeset - Arguments for method CreateChangeset on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChangeset on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method CreateChangeset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChangeset.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $CreateChangesetResponse = $finspace -api->CreateChangeset(
      ChangeType   => 'REPLACE',
      DatasetId    => 'MyIdType',
      SourceParams => { 'MystringMapKey' => 'MystringMapValue', },
      SourceType   => 'S3',
      FormatParams => { 'MystringMapKey' => 'MystringMapValue', },    # OPTIONAL
      FormatType   => 'CSV',                                          # OPTIONAL
      Tags         => { 'MystringMapKey' => 'MystringMapValue', },    # OPTIONAL
    );

    # Results:
    my $Changeset = $CreateChangesetResponse->Changeset;

    # Returns a L<Paws::FinspaceData::CreateChangesetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/CreateChangeset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeType => Str

Option to indicate how a changeset will be applied to a dataset.

=over

=item *

C<REPLACE> - Changeset will be considered as a replacement to all prior
loaded changesets.

=item *

C<APPEND> - Changeset will be considered as an addition to the end of
all prior loaded changesets.

=back


Valid values are: C<"REPLACE">, C<"APPEND">, C<"MODIFY">

=head2 B<REQUIRED> DatasetId => Str

The unique identifier for the FinSpace dataset in which the changeset
will be created.



=head2 FormatParams => L<Paws::FinspaceData::StringMap>

Options that define the structure of the source file(s).



=head2 FormatType => Str

Format type of the input files being loaded into the changeset.

Valid values are: C<"CSV">, C<"JSON">, C<"PARQUET">, C<"XML">

=head2 B<REQUIRED> SourceParams => L<Paws::FinspaceData::StringMap>

Source path from which the files to create the changeset will be
sourced.



=head2 B<REQUIRED> SourceType => Str

Type of the data source from which the files to create the changeset
will be sourced.

=over

=item *

C<S3> - Amazon S3.

=back


Valid values are: C<"S3">

=head2 Tags => L<Paws::FinspaceData::StringMap>

Metadata tags to apply to this changeset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChangeset in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

