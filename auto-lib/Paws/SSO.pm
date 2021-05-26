package Paws::SSO;
  use Moose;
  sub service { 'portal.sso' }
  sub signing_name { 'awsssoportal' }
  sub version { '2019-06-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetRoleCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSO::GetRoleCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountRoles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSO::ListAccountRoles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSO::ListAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Logout {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSO::Logout', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccountRoles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountRoles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAccountRoles(@_, nextToken => $next_result->nextToken);
        push @{ $result->roleList }, @{ $next_result->roleList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'roleList') foreach (@{ $result->roleList });
        $result = $self->ListAccountRoles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'roleList') foreach (@{ $result->roleList });
    }

    return undef
  }
  sub ListAllAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAccounts(@_, nextToken => $next_result->nextToken);
        push @{ $result->accountList }, @{ $next_result->accountList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'accountList') foreach (@{ $result->accountList });
        $result = $self->ListAccounts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'accountList') foreach (@{ $result->accountList });
    }

    return undef
  }


  sub operations { qw/GetRoleCredentials ListAccountRoles ListAccounts Logout / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSO - Perl Interface to AWS AWS Single Sign-On

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSO');
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

AWS Single Sign-On Portal is a web service that makes it easy for you
to assign user access to AWS SSO resources such as the user portal.
Users can get AWS account applications and roles assigned to them and
get federated into the application.

For general information about AWS SSO, see What is AWS Single Sign-On?
(https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html)
in the I<AWS SSO User Guide>.

This API reference guide describes the AWS SSO Portal operations that
you can call programatically and includes detailed information on data
types and errors.

AWS provides SDKs that consist of libraries and sample code for various
programming languages and platforms, such as Java, Ruby, .Net, iOS, or
Android. The SDKs provide a convenient way to create programmatic
access to AWS SSO and other AWS services. For more information about
the AWS SDKs, including how to download and install them, see Tools for
Amazon Web Services (http://aws.amazon.com/tools/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/portal.sso-2019-06-10>


=head1 METHODS

=head2 GetRoleCredentials

=over

=item AccessToken => Str

=item AccountId => Str

=item RoleName => Str


=back

Each argument is described in detail in: L<Paws::SSO::GetRoleCredentials>

Returns: a L<Paws::SSO::GetRoleCredentialsResponse> instance

Returns the STS short-term credentials for a given role name that is
assigned to the user.


=head2 ListAccountRoles

=over

=item AccessToken => Str

=item AccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSO::ListAccountRoles>

Returns: a L<Paws::SSO::ListAccountRolesResponse> instance

Lists all roles that are assigned to the user for a given AWS account.


=head2 ListAccounts

=over

=item AccessToken => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSO::ListAccounts>

Returns: a L<Paws::SSO::ListAccountsResponse> instance

Lists all AWS accounts assigned to the user. These AWS accounts are
assigned by the administrator of the account. For more information, see
Assign User Access
(https://docs.aws.amazon.com/singlesignon/latest/userguide/useraccess.html#assignusers)
in the I<AWS SSO User Guide>. This operation returns a paginated
response.


=head2 Logout

=over

=item AccessToken => Str


=back

Each argument is described in detail in: L<Paws::SSO::Logout>

Returns: nothing

Removes the client- and server-side session that is associated with the
user.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccountRoles(sub { },AccessToken => Str, AccountId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAccountRoles(AccessToken => Str, AccountId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - roleList, passing the object as the first parameter, and the string 'roleList' as the second parameter 

If not, it will return a a L<Paws::SSO::ListAccountRolesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccounts(sub { },AccessToken => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAccounts(AccessToken => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - accountList, passing the object as the first parameter, and the string 'accountList' as the second parameter 

If not, it will return a a L<Paws::SSO::ListAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

