package Paws::SSOIdentityStore;
  use Moose;
  sub service { 'identitystore' }
  sub signing_name { 'identitystore' }
  sub version { '2020-06-15' }
  sub target_prefix { 'AWSIdentityStore' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub DescribeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::DescribeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DescribeGroup DescribeUser ListGroups ListUsers / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore - Perl Interface to AWS AWS SSO Identity Store

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSOIdentityStore');
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



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15>


=head1 METHODS

=head2 DescribeGroup

=over

=item GroupId => Str

=item IdentityStoreId => Str


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::DescribeGroup>

Returns: a L<Paws::SSOIdentityStore::DescribeGroupResponse> instance

Retrieves the group metadata and attributes from C<GroupId> in an
identity store.


=head2 DescribeUser

=over

=item IdentityStoreId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::DescribeUser>

Returns: a L<Paws::SSOIdentityStore::DescribeUserResponse> instance

Retrieves the user metadata and attributes from C<UserId> in an
identity store.


=head2 ListGroups

=over

=item IdentityStoreId => Str

=item [Filters => ArrayRef[L<Paws::SSOIdentityStore::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::ListGroups>

Returns: a L<Paws::SSOIdentityStore::ListGroupsResponse> instance

Lists the attribute name and value of the group that you specified in
the search. We only support C<DisplayName> as a valid filter attribute
path currently, and filter is required. This API returns minimum
attributes, including C<GroupId> and group C<DisplayName> in the
response.


=head2 ListUsers

=over

=item IdentityStoreId => Str

=item [Filters => ArrayRef[L<Paws::SSOIdentityStore::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::ListUsers>

Returns: a L<Paws::SSOIdentityStore::ListUsersResponse> instance

Lists the attribute name and value of the user that you specified in
the search. We only support C<UserName> as a valid filter attribute
path currently, and filter is required. This API returns minimum
attributes, including C<UserId> and C<UserName> in the response.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

