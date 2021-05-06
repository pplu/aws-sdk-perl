package Paws::Detective;
  use Moose;
  sub service { 'api.detective' }
  sub signing_name { 'detective' }
  sub version { '2018-10-26' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::AcceptInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::CreateGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::CreateMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::DeleteGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::DeleteMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::DisassociateMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::GetMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGraphs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::ListGraphs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::ListInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::ListMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::RejectInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AcceptInvitation CreateGraph CreateMembers DeleteGraph DeleteMembers DisassociateMembership GetMembers ListGraphs ListInvitations ListMembers RejectInvitation / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective - Perl Interface to AWS Amazon Detective

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Detective');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Detective is currently in preview. The Detective API can only be
used by accounts that are admitted into the preview.

Detective uses machine learning and purpose-built visualizations to
help you analyze and investigate security issues across your Amazon Web
Services (AWS) workloads. Detective automatically extracts time-based
events such as login attempts, API calls, and network traffic from AWS
CloudTrail and Amazon Virtual Private Cloud (Amazon VPC) flow logs. It
also extracts findings detected by Amazon GuardDuty.

The Detective API primarily supports the creation and management of
behavior graphs. A behavior graph contains the extracted data from a
set of member accounts, and is created and managed by a master account.

Every behavior graph is specific to a Region. You can only use the API
to manage graphs that belong to the Region that is associated with the
currently selected endpoint.

A Detective master account can use the Detective API to do the
following:

=over

=item *

Enable and disable Detective. Enabling Detective creates a new behavior
graph.

=item *

View the list of member accounts in a behavior graph.

=item *

Add member accounts to a behavior graph.

=item *

Remove member accounts from a behavior graph.

=back

A member account can use the Detective API to do the following:

=over

=item *

View the list of behavior graphs that they are invited to.

=item *

Accept an invitation to contribute to a behavior graph.

=item *

Decline an invitation to contribute to a behavior graph.

=item *

Remove their account from a behavior graph.

=back

All API actions are logged as CloudTrail events. See Logging Detective
API Calls with CloudTrail
(https://docs.aws.amazon.com/detective/latest/adminguide/logging-using-cloudtrail.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.detective-2018-10-26>


=head1 METHODS

=head2 AcceptInvitation

=over

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::AcceptInvitation>

Returns: nothing

Amazon Detective is currently in preview.

Accepts an invitation for the member account to contribute data to a
behavior graph. This operation can only be called by an invited member
account.

The request provides the ARN of behavior graph.

The member account status in the graph must be C<INVITED>.


=head2 CreateGraph

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Detective::CreateGraph>

Returns: a L<Paws::Detective::CreateGraphResponse> instance

Amazon Detective is currently in preview.

Creates a new behavior graph for the calling account, and sets that
account as the master account. This operation is called by the account
that is enabling Detective.

The operation also enables Detective for the calling account in the
currently selected Region. It returns the ARN of the new behavior
graph.

C<CreateGraph> triggers a process to create the corresponding data
tables for the new behavior graph.

An account can only be the master account for one behavior graph within
a Region. If the same account calls C<CreateGraph> with the same master
account, it always returns the same behavior graph ARN. It does not
create a new behavior graph.


=head2 CreateMembers

=over

=item Accounts => ArrayRef[L<Paws::Detective::Account>]

=item GraphArn => Str

=item [Message => Str]


=back

Each argument is described in detail in: L<Paws::Detective::CreateMembers>

Returns: a L<Paws::Detective::CreateMembersResponse> instance

Amazon Detective is currently in preview.

Sends a request to invite the specified AWS accounts to be member
accounts in the behavior graph. This operation can only be called by
the master account for a behavior graph.

C<CreateMembers> verifies the accounts and then sends invitations to
the verified accounts.

The request provides the behavior graph ARN and the list of accounts to
invite.

The response separates the requested accounts into two lists:

=over

=item *

The accounts that C<CreateMembers> was able to start the verification
for. This list includes member accounts that are being verified, that
have passed verification and are being sent an invitation, and that
have failed verification.

=item *

The accounts that C<CreateMembers> was unable to process. This list
includes accounts that were already invited to be member accounts in
the behavior graph.

=back



=head2 DeleteGraph

=over

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::DeleteGraph>

Returns: nothing

Amazon Detective is currently in preview.

Disables the specified behavior graph and queues it to be deleted. This
operation removes the graph from each member account's list of behavior
graphs.

C<DeleteGraph> can only be called by the master account for a behavior
graph.


=head2 DeleteMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::DeleteMembers>

Returns: a L<Paws::Detective::DeleteMembersResponse> instance

Amazon Detective is currently in preview.

Deletes one or more member accounts from the master account behavior
graph. This operation can only be called by a Detective master account.
That account cannot use C<DeleteMembers> to delete their own account
from the behavior graph. To disable a behavior graph, the master
account uses the C<DeleteGraph> API method.


=head2 DisassociateMembership

=over

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::DisassociateMembership>

Returns: nothing

Amazon Detective is currently in preview.

Removes the member account from the specified behavior graph. This
operation can only be called by a member account that has the
C<ENABLED> status.


=head2 GetMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::GetMembers>

Returns: a L<Paws::Detective::GetMembersResponse> instance

Amazon Detective is currently in preview.

Returns the membership details for specified member accounts for a
behavior graph.


=head2 ListGraphs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Detective::ListGraphs>

Returns: a L<Paws::Detective::ListGraphsResponse> instance

Amazon Detective is currently in preview.

Returns the list of behavior graphs that the calling account is a
master of. This operation can only be called by a master account.

Because an account can currently only be the master of one behavior
graph within a Region, the results always contain a single graph.


=head2 ListInvitations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Detective::ListInvitations>

Returns: a L<Paws::Detective::ListInvitationsResponse> instance

Amazon Detective is currently in preview.

Retrieves the list of open and accepted behavior graph invitations for
the member account. This operation can only be called by a member
account.

Open invitations are invitations that the member account has not
responded to.

The results do not include behavior graphs for which the member account
declined the invitation. The results also do not include behavior
graphs that the member account resigned from or was removed from.


=head2 ListMembers

=over

=item GraphArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Detective::ListMembers>

Returns: a L<Paws::Detective::ListMembersResponse> instance

Amazon Detective is currently in preview.

Retrieves the list of member accounts for a behavior graph. Does not
return member accounts that were removed from the behavior graph.


=head2 RejectInvitation

=over

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::RejectInvitation>

Returns: nothing

Amazon Detective is currently in preview.

Rejects an invitation to contribute the account data to a behavior
graph. This operation must be called by a member account that has the
C<INVITED> status.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

