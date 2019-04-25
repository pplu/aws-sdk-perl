package Paws::Cloud9;
  use Moose;
  sub service { 'cloud9' }
  sub signing_name { 'cloud9' }
  sub version { '2017-09-23' }
  sub target_prefix { 'AWSCloud9WorkspaceManagementService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateEnvironmentEC2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Cloud9::CreateEnvironmentEC2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironmentMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Cloud9::CreateEnvironmentMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Cloud9::DeleteEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironmentMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Cloud9::DeleteEnvironmentMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEnvironmentMemberships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Cloud9::DescribeEnvironmentMemberships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Cloud9::DescribeEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEnvironmentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Cloud9::DescribeEnvironmentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Cloud9::ListEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Cloud9::UpdateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironmentMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Cloud9::UpdateEnvironmentMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllEnvironmentMemberships {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEnvironmentMemberships(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeEnvironmentMemberships(@_, nextToken => $next_result->nextToken);
        push @{ $result->memberships }, @{ $next_result->memberships };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'memberships') foreach (@{ $result->memberships });
        $result = $self->DescribeEnvironmentMemberships(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'memberships') foreach (@{ $result->memberships });
    }

    return undef
  }
  sub ListAllEnvironments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironments(@_, nextToken => $next_result->nextToken);
        push @{ $result->environmentIds }, @{ $next_result->environmentIds };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'environmentIds') foreach (@{ $result->environmentIds });
        $result = $self->ListEnvironments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'environmentIds') foreach (@{ $result->environmentIds });
    }

    return undef
  }


  sub operations { qw/CreateEnvironmentEC2 CreateEnvironmentMembership DeleteEnvironment DeleteEnvironmentMembership DescribeEnvironmentMemberships DescribeEnvironments DescribeEnvironmentStatus ListEnvironments UpdateEnvironment UpdateEnvironmentMembership / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9 - Perl Interface to AWS AWS Cloud9

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Cloud9');
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

AWS Cloud9

AWS Cloud9 is a collection of tools that you can use to code, build,
run, test, debug, and release software in the cloud.

For more information about AWS Cloud9, see the AWS Cloud9 User Guide
(https://docs.aws.amazon.com/cloud9/latest/user-guide).

AWS Cloud9 supports these operations:

=over

=item *

C<CreateEnvironmentEC2>: Creates an AWS Cloud9 development environment,
launches an Amazon EC2 instance, and then connects from the instance to
the environment.

=item *

C<CreateEnvironmentMembership>: Adds an environment member to an
environment.

=item *

C<DeleteEnvironment>: Deletes an environment. If an Amazon EC2 instance
is connected to the environment, also terminates the instance.

=item *

C<DeleteEnvironmentMembership>: Deletes an environment member from an
environment.

=item *

C<DescribeEnvironmentMemberships>: Gets information about environment
members for an environment.

=item *

C<DescribeEnvironments>: Gets information about environments.

=item *

C<DescribeEnvironmentStatus>: Gets status information for an
environment.

=item *

C<ListEnvironments>: Gets a list of environment identifiers.

=item *

C<UpdateEnvironment>: Changes the settings of an existing environment.

=item *

C<UpdateEnvironmentMembership>: Changes the settings of an existing
environment member for an environment.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23>


=head1 METHODS

=head2 CreateEnvironmentEC2

=over

=item InstanceType => Str

=item Name => Str

=item [AutomaticStopTimeMinutes => Int]

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [OwnerArn => Str]

=item [SubnetId => Str]


=back

Each argument is described in detail in: L<Paws::Cloud9::CreateEnvironmentEC2>

Returns: a L<Paws::Cloud9::CreateEnvironmentEC2Result> instance

Creates an AWS Cloud9 development environment, launches an Amazon
Elastic Compute Cloud (Amazon EC2) instance, and then connects from the
instance to the environment.


=head2 CreateEnvironmentMembership

=over

=item EnvironmentId => Str

=item Permissions => Str

=item UserArn => Str


=back

Each argument is described in detail in: L<Paws::Cloud9::CreateEnvironmentMembership>

Returns: a L<Paws::Cloud9::CreateEnvironmentMembershipResult> instance

Adds an environment member to an AWS Cloud9 development environment.


=head2 DeleteEnvironment

=over

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Cloud9::DeleteEnvironment>

Returns: a L<Paws::Cloud9::DeleteEnvironmentResult> instance

Deletes an AWS Cloud9 development environment. If an Amazon EC2
instance is connected to the environment, also terminates the instance.


=head2 DeleteEnvironmentMembership

=over

=item EnvironmentId => Str

=item UserArn => Str


=back

Each argument is described in detail in: L<Paws::Cloud9::DeleteEnvironmentMembership>

Returns: a L<Paws::Cloud9::DeleteEnvironmentMembershipResult> instance

Deletes an environment member from an AWS Cloud9 development
environment.


=head2 DescribeEnvironmentMemberships

=over

=item [EnvironmentId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Permissions => ArrayRef[Str|Undef]]

=item [UserArn => Str]


=back

Each argument is described in detail in: L<Paws::Cloud9::DescribeEnvironmentMemberships>

Returns: a L<Paws::Cloud9::DescribeEnvironmentMembershipsResult> instance

Gets information about environment members for an AWS Cloud9
development environment.


=head2 DescribeEnvironments

=over

=item EnvironmentIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Cloud9::DescribeEnvironments>

Returns: a L<Paws::Cloud9::DescribeEnvironmentsResult> instance

Gets information about AWS Cloud9 development environments.


=head2 DescribeEnvironmentStatus

=over

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Cloud9::DescribeEnvironmentStatus>

Returns: a L<Paws::Cloud9::DescribeEnvironmentStatusResult> instance

Gets status information for an AWS Cloud9 development environment.


=head2 ListEnvironments

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Cloud9::ListEnvironments>

Returns: a L<Paws::Cloud9::ListEnvironmentsResult> instance

Gets a list of AWS Cloud9 development environment identifiers.


=head2 UpdateEnvironment

=over

=item EnvironmentId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Cloud9::UpdateEnvironment>

Returns: a L<Paws::Cloud9::UpdateEnvironmentResult> instance

Changes the settings of an existing AWS Cloud9 development environment.


=head2 UpdateEnvironmentMembership

=over

=item EnvironmentId => Str

=item Permissions => Str

=item UserArn => Str


=back

Each argument is described in detail in: L<Paws::Cloud9::UpdateEnvironmentMembership>

Returns: a L<Paws::Cloud9::UpdateEnvironmentMembershipResult> instance

Changes the settings of an existing environment member for an AWS
Cloud9 development environment.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllEnvironmentMemberships(sub { },[EnvironmentId => Str, MaxResults => Int, NextToken => Str, Permissions => ArrayRef[Str|Undef], UserArn => Str])

=head2 DescribeAllEnvironmentMemberships([EnvironmentId => Str, MaxResults => Int, NextToken => Str, Permissions => ArrayRef[Str|Undef], UserArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - memberships, passing the object as the first parameter, and the string 'memberships' as the second parameter 

If not, it will return a a L<Paws::Cloud9::DescribeEnvironmentMembershipsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironments(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironments([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - environmentIds, passing the object as the first parameter, and the string 'environmentIds' as the second parameter 

If not, it will return a a L<Paws::Cloud9::ListEnvironmentsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

