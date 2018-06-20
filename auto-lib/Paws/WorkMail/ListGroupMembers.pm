
package Paws::WorkMail::ListGroupMembers;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupMembers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::ListGroupMembersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListGroupMembers - Arguments for method ListGroupMembers on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGroupMembers on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method ListGroupMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGroupMembers.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $ListGroupMembersResponse = $workmail->ListGroupMembers(
      GroupId        => 'MyWorkMailIdentifier',
      OrganizationId => 'MyOrganizationId',
      MaxResults     => 1,                        # OPTIONAL
      NextToken      => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $Members   = $ListGroupMembersResponse->Members;
    my $NextToken = $ListGroupMembersResponse->NextToken;

    # Returns a L<Paws::WorkMail::ListGroupMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/ListGroupMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupId => Str

The identifier for the group to which the members are associated.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token to use to retrieve the next page of results. The first call
does not contain any tokens.



=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization under which the group exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGroupMembers in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

