
package Paws::Kendra::ListThesauri;
  use Moose;
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListThesauri');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::ListThesauriResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListThesauri - Arguments for method ListThesauri on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListThesauri on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method ListThesauri.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListThesauri.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $ListThesauriResponse = $kendra->ListThesauri(
      IndexId    => 'MyIndexId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken             = $ListThesauriResponse->NextToken;
    my $ThesaurusSummaryItems = $ListThesauriResponse->ThesaurusSummaryItems;

    # Returns a L<Paws::Kendra::ListThesauriResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/ListThesauri>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexId => Str

The identifier of the index associated with the thesaurus to list.



=head2 MaxResults => Int

The maximum number of thesauri to return.



=head2 NextToken => Str

If the previous response was incomplete (because there is more data to
retrieve), Amazon Kendra returns a pagination token in the response.
You can use this pagination token to retrieve the next set of thesauri
(C<ThesaurusSummaryItems>).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListThesauri in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

