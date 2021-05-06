
package Paws::Kendra::ListFaqs;
  use Moose;
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFaqs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::ListFaqsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListFaqs - Arguments for method ListFaqs on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFaqs on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method ListFaqs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFaqs.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $ListFaqsResponse = $kendra->ListFaqs(
      IndexId    => 'MyIndexId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $FaqSummaryItems = $ListFaqsResponse->FaqSummaryItems;
    my $NextToken       = $ListFaqsResponse->NextToken;

    # Returns a L<Paws::Kendra::ListFaqsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/ListFaqs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexId => Str

The index that contains the FAQ lists.



=head2 MaxResults => Int

The maximum number of FAQs to return in the response. If there are
fewer results in the list, this response contains only the actual
results.



=head2 NextToken => Str

If the result of the previous request to C<ListFaqs> was truncated,
include the C<NextToken> to fetch the next set of FAQs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFaqs in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

