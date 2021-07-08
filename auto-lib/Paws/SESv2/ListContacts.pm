
package Paws::SESv2::ListContacts;
  use Moose;
  has ContactListName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactListName', required => 1);
  has Filter => (is => 'ro', isa => 'Paws::SESv2::ListContactsFilter');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has PageSize => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'PageSize');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListContacts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/contact-lists/{ContactListName}/contacts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::ListContactsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListContacts - Arguments for method ListContacts on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListContacts on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method ListContacts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListContacts.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $ListContactsResponse = $email->ListContacts(
      ContactListName => 'MyContactListName',
      Filter          => {
        FilteredStatus => 'OPT_IN',    # values: OPT_IN, OPT_OUT; OPTIONAL
        TopicFilter    => {
          TopicName                         => 'MyTopicName',    # OPTIONAL
          UseDefaultIfPreferenceUnavailable => 1,                # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
      PageSize  => 1,                # OPTIONAL
    );

    # Results:
    my $Contacts  = $ListContactsResponse->Contacts;
    my $NextToken = $ListContactsResponse->NextToken;

    # Returns a L<Paws::SESv2::ListContactsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/ListContacts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactListName => Str

The name of the contact list.



=head2 Filter => L<Paws::SESv2::ListContactsFilter>

A filter that can be applied to a list of contacts.



=head2 NextToken => Str

A string token indicating that there might be additional contacts
available to be listed. Use the token provided in the Response to use
in the subsequent call to ListContacts with the same parameters to
retrieve the next page of contacts.



=head2 PageSize => Int

The number of contacts that may be returned at once, which is dependent
on if there are more or less contacts than the value of the PageSize.
Use this parameter to paginate results. If additional contacts exist
beyond the specified limit, the C<NextToken> element is sent in the
response. Use the C<NextToken> value in subsequent requests to retrieve
additional contacts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListContacts in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

