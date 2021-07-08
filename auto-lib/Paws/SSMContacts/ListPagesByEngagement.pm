
package Paws::SSMContacts::ListPagesByEngagement;
  use Moose;
  has EngagementId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPagesByEngagement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::ListPagesByEngagementResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListPagesByEngagement - Arguments for method ListPagesByEngagement on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPagesByEngagement on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method ListPagesByEngagement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPagesByEngagement.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $ListPagesByEngagementResult = $ssm -contacts->ListPagesByEngagement(
      EngagementId => 'MySsmContactsArn',
      MaxResults   => 1,                      # OPTIONAL
      NextToken    => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPagesByEngagementResult->NextToken;
    my $Pages     = $ListPagesByEngagementResult->Pages;

    # Returns a L<Paws::SSMContacts::ListPagesByEngagementResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/ListPagesByEngagement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EngagementId => Str

The Amazon Resource Name (ARN) of the engagement.



=head2 MaxResults => Int

The maximum number of engagements to contact channels to list per page
of results.



=head2 NextToken => Str

The pagination token to continue to the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPagesByEngagement in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

