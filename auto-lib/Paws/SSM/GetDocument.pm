
package Paws::SSM::GetDocument;
  use Moose;
  has DocumentFormat => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has VersionName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDocument');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetDocumentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetDocument - Arguments for method GetDocument on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDocument on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDocument.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetDocumentResult = $ssm->GetDocument(
      Name            => 'MyDocumentARN',
      DocumentFormat  => 'YAML',                     # OPTIONAL
      DocumentVersion => 'MyDocumentVersion',        # OPTIONAL
      VersionName     => 'MyDocumentVersionName',    # OPTIONAL
    );

    # Results:
    my $AttachmentsContent = $GetDocumentResult->AttachmentsContent;
    my $Content            = $GetDocumentResult->Content;
    my $DocumentFormat     = $GetDocumentResult->DocumentFormat;
    my $DocumentType       = $GetDocumentResult->DocumentType;
    my $DocumentVersion    = $GetDocumentResult->DocumentVersion;
    my $Name               = $GetDocumentResult->Name;
    my $Status             = $GetDocumentResult->Status;
    my $StatusInformation  = $GetDocumentResult->StatusInformation;
    my $VersionName        = $GetDocumentResult->VersionName;

    # Returns a L<Paws::SSM::GetDocumentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetDocument>

=head1 ATTRIBUTES


=head2 DocumentFormat => Str

Returns the document in the specified format. The document format can
be either JSON or YAML. JSON is the default format.

Valid values are: C<"YAML">, C<"JSON">

=head2 DocumentVersion => Str

The document version for which you want information.



=head2 B<REQUIRED> Name => Str

The name of the Systems Manager document.



=head2 VersionName => Str

An optional field specifying the version of the artifact associated
with the document. For example, "Release 12, Update 6". This value is
unique across all versions of a document, and cannot be changed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDocument in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

