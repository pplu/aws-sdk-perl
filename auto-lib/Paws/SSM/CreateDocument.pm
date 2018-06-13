
package Paws::SSM::CreateDocument;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has DocumentFormat => (is => 'ro', isa => 'Str');
  has DocumentType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has TargetType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDocument');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreateDocumentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateDocument - Arguments for method CreateDocument on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDocument on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method CreateDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDocument.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $CreateDocumentResult = $ssm->CreateDocument(
      Content        => 'MyDocumentContent',
      Name           => 'MyDocumentName',
      DocumentFormat => 'YAML',                # OPTIONAL
      DocumentType   => 'Command',             # OPTIONAL
      TargetType     => 'MyTargetType',        # OPTIONAL
    );

    # Results:
    my $DocumentDescription = $CreateDocumentResult->DocumentDescription;

    # Returns a L<Paws::SSM::CreateDocumentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/CreateDocument>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

A valid JSON or YAML string.



=head2 DocumentFormat => Str

Specify the document format for the request. The document format can be
either JSON or YAML. JSON is the default format.

Valid values are: C<"YAML">, C<"JSON">

=head2 DocumentType => Str

The type of document to create. Valid document types include: Policy,
Automation, and Command.

Valid values are: C<"Command">, C<"Policy">, C<"Automation">

=head2 B<REQUIRED> Name => Str

A name for the Systems Manager document.

Do not use the following to begin the names of documents you create.
They are reserved by AWS for use as document prefixes:

=over

=item *

C<aws>

=item *

C<amazon>

=item *

C<amzn>

=back




=head2 TargetType => Str

Specify a target type to define the kinds of resources the document can
run on. For example, to run a document on EC2 instances, specify the
following value: /AWS::EC2::Instance. If you specify a value of '/' the
document can run on all types of resources. If you don't specify a
value, the document can't run on any resources. For a list of valid
resource types, see AWS Resource Types Reference
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
in the I<AWS CloudFormation User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDocument in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

