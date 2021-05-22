
package Paws::SESv2::ListContactLists;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has PageSize => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'PageSize');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListContactLists');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/contact-lists');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::ListContactListsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListContactLists - Arguments for method ListContactLists on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListContactLists on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method ListContactLists.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListContactLists.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $ListContactListsResponse = $email->ListContactLists(
      NextToken => 'MyNextToken',    # OPTIONAL
      PageSize  => 1,                # OPTIONAL
    );

    # Results:
    my $ContactLists = $ListContactListsResponse->ContactLists;
    my $NextToken    = $ListContactListsResponse->NextToken;

    # Returns a L<Paws::SESv2::ListContactListsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/ListContactLists>

=head1 ATTRIBUTES


=head2 NextToken => Str

A string token indicating that there might be additional contact lists
available to be listed. Use the token provided in the Response to use
in the subsequent call to ListContactLists with the same parameters to
retrieve the next page of contact lists.



=head2 PageSize => Int

Maximum number of contact lists to return at once. Use this parameter
to paginate results. If additional contact lists exist beyond the
specified limit, the C<NextToken> element is sent in the response. Use
the C<NextToken> value in subsequent requests to retrieve additional
lists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListContactLists in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

