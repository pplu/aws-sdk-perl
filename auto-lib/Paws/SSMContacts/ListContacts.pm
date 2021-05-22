
package Paws::SSMContacts::ListContacts;
  use Moose;
  has AliasPrefix => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListContacts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::ListContactsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListContacts - Arguments for method ListContacts on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListContacts on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method ListContacts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListContacts.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $ListContactsResult = $ssm -contacts->ListContacts(
      AliasPrefix => 'MyContactAlias',       # OPTIONAL
      MaxResults  => 1,                      # OPTIONAL
      NextToken   => 'MyPaginationToken',    # OPTIONAL
      Type        => 'PERSONAL',             # OPTIONAL
    );

    # Results:
    my $Contacts  = $ListContactsResult->Contacts;
    my $NextToken = $ListContactsResult->NextToken;

    # Returns a L<Paws::SSMContacts::ListContactsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/ListContacts>

=head1 ATTRIBUTES


=head2 AliasPrefix => Str

Used to list only contacts who's aliases start with the specified
prefix.



=head2 MaxResults => Int

The maximum number of contacts and escalation plans per page of
results.



=head2 NextToken => Str

The pagination token to continue to the next page of results.



=head2 Type => Str

The type of contact. A contact is type C<PERSONAL> and an escalation
plan is type C<ESCALATION>.

Valid values are: C<"PERSONAL">, C<"ESCALATION">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListContacts in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

