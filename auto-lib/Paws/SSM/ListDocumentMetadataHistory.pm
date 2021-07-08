
package Paws::SSM::ListDocumentMetadataHistory;
  use Moose;
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has Metadata => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDocumentMetadataHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::ListDocumentMetadataHistoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListDocumentMetadataHistory - Arguments for method ListDocumentMetadataHistory on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDocumentMetadataHistory on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ListDocumentMetadataHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDocumentMetadataHistory.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ListDocumentMetadataHistoryResponse = $ssm->ListDocumentMetadataHistory(
      Metadata        => 'DocumentReviews',
      Name            => 'MyDocumentName',
      DocumentVersion => 'MyDocumentVersion',    # OPTIONAL
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $Author          = $ListDocumentMetadataHistoryResponse->Author;
    my $DocumentVersion = $ListDocumentMetadataHistoryResponse->DocumentVersion;
    my $Metadata        = $ListDocumentMetadataHistoryResponse->Metadata;
    my $Name            = $ListDocumentMetadataHistoryResponse->Name;
    my $NextToken       = $ListDocumentMetadataHistoryResponse->NextToken;

    # Returns a L<Paws::SSM::ListDocumentMetadataHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ListDocumentMetadataHistory>

=head1 ATTRIBUTES


=head2 DocumentVersion => Str

The version of the document.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 B<REQUIRED> Metadata => Str

The type of data for which details are being requested. Currently, the
only supported value is C<DocumentReviews>.

Valid values are: C<"DocumentReviews">

=head2 B<REQUIRED> Name => Str

The name of the document.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDocumentMetadataHistory in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

