
package Paws::SSM::DeleteDocument;
  use Moose;
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Force => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has VersionName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDocument');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DeleteDocumentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeleteDocument - Arguments for method DeleteDocument on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDocument on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DeleteDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDocument.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DeleteDocumentResult = $ssm->DeleteDocument(
      Name            => 'MyDocumentName',
      DocumentVersion => 'MyDocumentVersion',        # OPTIONAL
      Force           => 1,                          # OPTIONAL
      VersionName     => 'MyDocumentVersionName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DeleteDocument>

=head1 ATTRIBUTES


=head2 DocumentVersion => Str

The version of the document that you want to delete. If not provided,
all versions of the document are deleted.



=head2 Force => Bool

Some SSM document types require that you specify a C<Force> flag before
you can delete the document. For example, you must specify a C<Force>
flag to delete a document of type C<ApplicationConfigurationSchema>.
You can restrict access to the C<Force> flag in an AWS Identity and
Access Management (IAM) policy.



=head2 B<REQUIRED> Name => Str

The name of the document.



=head2 VersionName => Str

The version name of the document that you want to delete. If not
provided, all versions of the document are deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDocument in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

