package Paws::Quicksight;
  use Moose;
  sub service { 'quicksight' }
  sub signing_name { 'quicksight' }
  sub version { '2018-04-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroupMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateGroupMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroupMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteGroupMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDashboardEmbedUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::GetDashboardEmbedUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupMemberships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListGroupMemberships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListUserGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::RegisterUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateGroup CreateGroupMembership DeleteGroup DeleteGroupMembership DeleteUser DescribeGroup DescribeUser GetDashboardEmbedUrl ListGroupMemberships ListGroups ListUserGroups ListUsers RegisterUser UpdateGroup UpdateUser / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight - Perl Interface to AWS Amazon QuickSight

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Quicksight');
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

Amazon QuickSight API Reference

Amazon QuickSight is a fully managed, serverless, cloud business
intelligence service that makes it easy to extend data and insights to
every user in your organization. This API interface reference contains
documentation for a programming interface that you can use to manage
Amazon QuickSight.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01>


=head1 METHODS

=head2 CreateGroup

=over

=item AwsAccountId => Str

=item GroupName => Str

=item Namespace => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateGroup>

Returns: a L<Paws::Quicksight::CreateGroupResponse> instance

Creates an Amazon QuickSight group.

The permissions resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>relevant-aws-account-idE<gt>>:group/default/I<E<lt>group-nameE<gt>>
>.

The response is a group object.

B<CLI Sample:>

C<aws quicksight create-group --aws-account-id=111122223333
--namespace=default --group-name="Sales-Management"
--description="Sales Management - Forecasting">


=head2 CreateGroupMembership

=over

=item AwsAccountId => Str

=item GroupName => Str

=item MemberName => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateGroupMembership>

Returns: a L<Paws::Quicksight::CreateGroupMembershipResponse> instance

Adds an Amazon QuickSight user to an Amazon QuickSight group.

The permissions resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>aws-account-idE<gt>>:group/default/I<E<lt>group-nameE<gt>>
>.

The condition resource is the user name.

The condition key is C<quicksight:UserName>.

The response is the group member object.

B<CLI Sample:>

C<aws quicksight create-group-membership --aws-account-id=111122223333
--namespace=default --group-name=Sales --member-name=Pat>


=head2 DeleteGroup

=over

=item AwsAccountId => Str

=item GroupName => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteGroup>

Returns: a L<Paws::Quicksight::DeleteGroupResponse> instance

Removes a user group from Amazon QuickSight.

The permissions resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>aws-account-idE<gt>>:group/default/I<E<lt>group-nameE<gt>>
>.

B<CLI Sample:>

C<aws quicksight delete-group -\-aws-account-id=111122223333
-\-namespace=default -\-group-name=Sales-Management>


=head2 DeleteGroupMembership

=over

=item AwsAccountId => Str

=item GroupName => Str

=item MemberName => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteGroupMembership>

Returns: a L<Paws::Quicksight::DeleteGroupMembershipResponse> instance

Removes a user from a group so that the user is no longer a member of
the group.

The permissions resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>aws-account-idE<gt>>:group/default/I<E<lt>group-nameE<gt>>
>.

The condition resource is the user name.

The condition key is C<quicksight:UserName>.

B<CLI Sample:>

C<aws quicksight delete-group-membership --aws-account-id=111122223333
--namespace=default --group-name=Sales-Management
--member-name=Charlie>


=head2 DeleteUser

=over

=item AwsAccountId => Str

=item Namespace => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteUser>

Returns: a L<Paws::Quicksight::DeleteUserResponse> instance

Deletes the Amazon QuickSight user that is associated with the identity
of the AWS Identity and Access Management (IAM) user or role that's
making the call. The IAM user isn't deleted as a result of this call.

The permission resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>aws-account-idE<gt>>:user/default/I<E<lt>user-nameE<gt>
> >.

B<CLI Sample:>

C<aws quicksight delete-user --aws-account-id=111122223333
--namespace=default --user-name=Pat>


=head2 DescribeGroup

=over

=item AwsAccountId => Str

=item GroupName => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeGroup>

Returns: a L<Paws::Quicksight::DescribeGroupResponse> instance

Returns an Amazon QuickSight group's description and Amazon Resource
Name (ARN).

The permissions resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>relevant-aws-account-idE<gt>>:group/default/I<E<lt>group-nameE<gt>>
>.

The response is the group object.

B<CLI Sample:>

C<aws quicksight describe-group -\-aws-account-id=11112222333
-\-namespace=default -\-group-name=Sales>


=head2 DescribeUser

=over

=item AwsAccountId => Str

=item Namespace => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeUser>

Returns: a L<Paws::Quicksight::DescribeUserResponse> instance

Returns information about a user, given the user name.

The permission resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>aws-account-idE<gt>>:user/default/I<E<lt>user-nameE<gt>>
>.

The response is a user object that contains the user's Amazon Resource
Name (ARN), AWS Identity and Access Management (IAM) role, and email
address.

B<CLI Sample:>

C<aws quicksight describe-user --aws-account-id=111122223333
--namespace=default --user-name=Pat>


=head2 GetDashboardEmbedUrl

=over

=item AwsAccountId => Str

=item DashboardId => Str

=item IdentityType => Str

=item [ResetDisabled => Bool]

=item [SessionLifetimeInMinutes => Int]

=item [UndoRedoDisabled => Bool]


=back

Each argument is described in detail in: L<Paws::Quicksight::GetDashboardEmbedUrl>

Returns: a L<Paws::Quicksight::GetDashboardEmbedUrlResponse> instance

Generates a server-side embeddable URL and authorization code. Before
this can work properly, first you need to configure the dashboards and
user permissions. For more information, see Embedding Amazon QuickSight
Dashboards
(https://docs.aws.amazon.com/en_us/quicksight/latest/user/embedding.html).

Currently, you can use C<GetDashboardEmbedURL> only from the server,
not from the userE<rsquo>s browser.

B<CLI Sample:>

Assume the role with permissions enabled for actions:
C<quickSight:RegisterUser> and C<quicksight:GetDashboardEmbedURL>. You
can use assume-role, assume-role-with-web-identity, or
assume-role-with-saml.

C<aws sts assume-role --role-arn
"arn:aws:iam::111122223333:role/embedding_quicksight_dashboard_role"
--role-session-name embeddingsession>

If the user does not exist in QuickSight, register the user:

C<aws quicksight register-user --aws-account-id 111122223333
--namespace default --identity-type IAM --iam-arn
"arn:aws:iam::111122223333:role/embedding_quicksight_dashboard_role"
--user-role READER --session-name "embeddingsession" --email
user123@example.com --region us-east-1>

Get the URL for the embedded dashboard

C<aws quicksight get-dashboard-embed-url --aws-account-id 111122223333
--dashboard-id 1a1ac2b2-3fc3-4b44-5e5d-c6db6778df89 --identity-type
IAM>


=head2 ListGroupMemberships

=over

=item AwsAccountId => Str

=item GroupName => Str

=item Namespace => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListGroupMemberships>

Returns: a L<Paws::Quicksight::ListGroupMembershipsResponse> instance

Lists member users in a group.

The permissions resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>aws-account-idE<gt>>:group/default/I<E<lt>group-nameE<gt>>
>.

The response is a list of group member objects.

B<CLI Sample:>

C<aws quicksight list-group-memberships -\-aws-account-id=111122223333
-\-namespace=default>


=head2 ListGroups

=over

=item AwsAccountId => Str

=item Namespace => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListGroups>

Returns: a L<Paws::Quicksight::ListGroupsResponse> instance

Lists all user groups in Amazon QuickSight.

The permissions resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>aws-account-idE<gt>>:group/default/*>.

The response is a list of group objects.

B<CLI Sample:>

C<aws quicksight list-groups -\-aws-account-id=111122223333
-\-namespace=default>


=head2 ListUserGroups

=over

=item AwsAccountId => Str

=item Namespace => Str

=item UserName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListUserGroups>

Returns: a L<Paws::Quicksight::ListUserGroupsResponse> instance

Lists the Amazon QuickSight groups that an Amazon QuickSight user is a
member of.

The permission resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>aws-account-idE<gt>>:user/default/I<E<lt>user-nameE<gt>>
>.

The response is a one or more group objects.

B<CLI Sample:>

C<aws quicksight list-user-groups -\-user-name=Pat
-\-aws-account-id=111122223333 -\-namespace=default
-\-region=us-east-1>


=head2 ListUsers

=over

=item AwsAccountId => Str

=item Namespace => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListUsers>

Returns: a L<Paws::Quicksight::ListUsersResponse> instance

Returns a list of all of the Amazon QuickSight users belonging to this
account.

The permission resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>aws-account-idE<gt>>:user/default/I<*>
>.

The response is a list of user objects, containing each user's Amazon
Resource Name (ARN), AWS Identity and Access Management (IAM) role, and
email address.

B<CLI Sample:>

C<aws quicksight list-users --aws-account-id=111122223333
--namespace=default>


=head2 RegisterUser

=over

=item AwsAccountId => Str

=item Email => Str

=item IdentityType => Str

=item Namespace => Str

=item UserRole => Str

=item [IamArn => Str]

=item [SessionName => Str]

=item [UserName => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::RegisterUser>

Returns: a L<Paws::Quicksight::RegisterUserResponse> instance

Creates an Amazon QuickSight user, whose identity is associated with
the AWS Identity and Access Management (IAM) identity or role specified
in the request.

The permission resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>aws-account-idE<gt>>:user/default/I<E<lt>user-nameE<gt>>
>.

The condition resource is the Amazon Resource Name (ARN) for the IAM
user or role, and the session name.

The condition keys are C<quicksight:IamArn> and
C<quicksight:SessionName>.

B<CLI Sample:>

C<aws quicksight register-user -\-aws-account-id=111122223333
-\-namespace=default -\-email=pat@example.com -\-identity-type=IAM
-\-user-role=AUTHOR -\-iam-arn=arn:aws:iam::111122223333:user/Pat>


=head2 UpdateGroup

=over

=item AwsAccountId => Str

=item GroupName => Str

=item Namespace => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateGroup>

Returns: a L<Paws::Quicksight::UpdateGroupResponse> instance

Changes a group description.

The permissions resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>aws-account-idE<gt>>:group/default/I<E<lt>group-nameE<gt>>
>.

The response is a group object.

B<CLI Sample:>

C<aws quicksight update-group --aws-account-id=111122223333
--namespace=default --group-name=Sales --description="Sales BI
Dashboards">


=head2 UpdateUser

=over

=item AwsAccountId => Str

=item Email => Str

=item Namespace => Str

=item Role => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateUser>

Returns: a L<Paws::Quicksight::UpdateUserResponse> instance

Updates an Amazon QuickSight user.

The permission resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>aws-account-idE<gt>>:user/default/I<E<lt>user-nameE<gt>>
>.

The response is a user object that contains the user's Amazon
QuickSight user name, email address, active or inactive status in
Amazon QuickSight, Amazon QuickSight role, and Amazon Resource Name
(ARN).

B<CLI Sample:>

C<aws quicksight update-user --user-name=Pat --role=ADMIN
--email=new_address@amazon.com --aws-account-id=111122223333
--namespace=default --region=us-east-1>




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

