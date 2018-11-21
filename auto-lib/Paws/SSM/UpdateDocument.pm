
package Paws::SSM::UpdateDocument;
  use Moose;
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::SSM::AttachmentsSource]');
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has DocumentFormat => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has TargetType => (is => 'ro', isa => 'Str');
  has VersionName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDocument');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdateDocumentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateDocument - Arguments for method UpdateDocument on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDocument on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDocument.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateDocumentResult = $ssm->UpdateDocument(
      Content     => 'MyDocumentContent',
      Name        => 'MyDocumentName',
      Attachments => [
        {
          Key    => 'SourceUrl',    # values: SourceUrl; OPTIONAL
          Values => [
            'MyAttachmentsSourceValue', ...    # min: 1, max: 1024
          ],                                   # min: 1, max: 1; OPTIONAL
        },
        ...
      ],                                       # OPTIONAL
      DocumentFormat  => 'YAML',                     # OPTIONAL
      DocumentVersion => 'MyDocumentVersion',        # OPTIONAL
      TargetType      => 'MyTargetType',             # OPTIONAL
      VersionName     => 'MyDocumentVersionName',    # OPTIONAL
    );

    # Results:
    my $DocumentDescription = $UpdateDocumentResult->DocumentDescription;

    # Returns a L<Paws::SSM::UpdateDocumentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateDocument>

=head1 ATTRIBUTES


=head2 Attachments => ArrayRef[L<Paws::SSM::AttachmentsSource>]

A list of key and value pairs that describe attachments to a version of
a document.



=head2 B<REQUIRED> Content => Str

A valid JSON or YAML string.



=head2 DocumentFormat => Str

Specify the document format for the new document version. Systems
Manager supports JSON and YAML documents. JSON is the default format.

Valid values are: C<"YAML">, C<"JSON">

=head2 DocumentVersion => Str

The version of the document that you want to update.



=head2 B<REQUIRED> Name => Str

The name of the document that you want to update.



=head2 TargetType => Str

Specify a new target type for the document.



=head2 VersionName => Str

An optional field specifying the version of the artifact you are
updating with the document. For example, "Release 12, Update 6". This
value is unique across all versions of a document, and cannot be
changed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDocument in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

