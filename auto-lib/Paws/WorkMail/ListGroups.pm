
package Paws::WorkMail::ListGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::ListGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListGroups - Arguments for method ListGroups on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGroups on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method ListGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGroups.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $ListGroupsResponse = $workmail->ListGroups(
      OrganizationId => 'MyOrganizationId',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken',        # OPTIONAL
    );

    # Results:
    my $Groups    = $ListGroupsResponse->Groups;
    my $NextToken = $ListGroupsResponse->NextToken;

    # Returns a L<Paws::WorkMail::ListGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/ListGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token to use to retrieve the next page of results. The first call
does not contain any tokens.



=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization under which the groups exist.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGroups in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

