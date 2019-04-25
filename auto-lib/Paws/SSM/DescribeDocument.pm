
package Paws::SSM::DescribeDocument;
  use Moose;
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has VersionName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDocument');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeDocumentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeDocument - Arguments for method DescribeDocument on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDocument on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDocument.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeDocumentResult = $ssm->DescribeDocument(
      Name            => 'MyDocumentARN',
      DocumentVersion => 'MyDocumentVersion',        # OPTIONAL
      VersionName     => 'MyDocumentVersionName',    # OPTIONAL
    );

    # Results:
    my $Document = $DescribeDocumentResult->Document;

    # Returns a L<Paws::SSM::DescribeDocumentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeDocument>

=head1 ATTRIBUTES


=head2 DocumentVersion => Str

The document version for which you want information. Can be a specific
version or the default version.



=head2 B<REQUIRED> Name => Str

The name of the Systems Manager document.



=head2 VersionName => Str

An optional field specifying the version of the artifact associated
with the document. For example, "Release 12, Update 6". This value is
unique across all versions of a document, and cannot be changed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDocument in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

