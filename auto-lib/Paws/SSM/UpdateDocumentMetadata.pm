
package Paws::SSM::UpdateDocumentMetadata;
  use Moose;
  has DocumentReviews => (is => 'ro', isa => 'Paws::SSM::DocumentReviews', required => 1);
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDocumentMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdateDocumentMetadataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateDocumentMetadata - Arguments for method UpdateDocumentMetadata on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDocumentMetadata on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateDocumentMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDocumentMetadata.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateDocumentMetadataResponse = $ssm->UpdateDocumentMetadata(
      DocumentReviews => {
        Action => 'SendForReview'
        ,    # values: SendForReview, UpdateReview, Approve, Reject
        Comment => [
          {
            Content => 'MyDocumentReviewComment',  # min: 1, max: 1024; OPTIONAL
            Type    => 'Comment',                  # values: Comment; OPTIONAL
          },
          ...
        ],    # max: 1; OPTIONAL
      },
      Name            => 'MyDocumentName',
      DocumentVersion => 'MyDocumentVersion',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateDocumentMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentReviews => L<Paws::SSM::DocumentReviews>

The document review details to update.



=head2 DocumentVersion => Str

The version of a document to update.



=head2 B<REQUIRED> Name => Str

The name of the document for which a version is to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDocumentMetadata in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

