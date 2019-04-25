
package Paws::WorkMail::ListOrganizations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOrganizations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::ListOrganizationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListOrganizations - Arguments for method ListOrganizations on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOrganizations on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method ListOrganizations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOrganizations.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $ListOrganizationsResponse = $workmail->ListOrganizations(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListOrganizationsResponse->NextToken;
    my $OrganizationSummaries =
      $ListOrganizationsResponse->OrganizationSummaries;

    # Returns a L<Paws::WorkMail::ListOrganizationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/ListOrganizations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token to use to retrieve the next page of results. The first call
does not contain any tokens.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOrganizations in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

