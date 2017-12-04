package Paws::Cloud9;
  use Moose;
  sub service { 'cloud9' }
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

In the background, these tools are available through development
environments running on Amazon Elastic Compute Cloud (Amazon EC2)
instances (known as I<Amazon EC2 environments>), your own servers
(known as I<SSH environments>), or a combination. This enables you to
create and switch between multiple environments, with each environment
set up for a specific development project.

For more information about AWS Cloud9, see the I<AWS Cloud9 User
Guide>.

AWS Cloud9 supports these operations:

=over

=item *

C<CreateEnvironmentEC2>: Creates an AWS Cloud9 development environment,
launches an Amazon EC2 instance, and then hosts the environment on the
instance.

=item *

C<CreateEnvironmentMembership>: Adds an environment member to an
environment.

=item *

C<DeleteEnvironment>: Deletes an environment. If the environment is
hosted on an Amazon EC2 instance, also terminates the instance.

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


=head1 METHODS

=head2 CreateEnvironmentEC2(InstanceType => Str, Name => Str, [AutomaticStopTimeMinutes => Int, ClientRequestToken => Str, Description => Str, OwnerArn => Str, SubnetId => Str])

Each argument is described in detail in: L<Paws::Cloud9::CreateEnvironmentEC2>

Returns: a L<Paws::Cloud9::CreateEnvironmentEC2Result> instance

Creates an AWS Cloud9 development environment, launches an Amazon
Elastic Compute Cloud (Amazon EC2) instance, and then hosts the
environment on the instance.


=head2 CreateEnvironmentMembership(EnvironmentId => Str, Permissions => Str, UserArn => Str)

Each argument is described in detail in: L<Paws::Cloud9::CreateEnvironmentMembership>

Returns: a L<Paws::Cloud9::CreateEnvironmentMembershipResult> instance

Adds an environment member to an AWS Cloud9 development environment.


=head2 DeleteEnvironment(EnvironmentId => Str)

Each argument is described in detail in: L<Paws::Cloud9::DeleteEnvironment>

Returns: a L<Paws::Cloud9::DeleteEnvironmentResult> instance

Deletes an AWS Cloud9 development environment. If the environment is
hosted on an Amazon Elastic Compute Cloud (Amazon EC2) instance, also
terminates the instance.


=head2 DeleteEnvironmentMembership(EnvironmentId => Str, UserArn => Str)

Each argument is described in detail in: L<Paws::Cloud9::DeleteEnvironmentMembership>

Returns: a L<Paws::Cloud9::DeleteEnvironmentMembershipResult> instance

Deletes an environment member from an AWS Cloud9 development
environment.


=head2 DescribeEnvironmentMemberships([EnvironmentId => Str, MaxResults => Int, NextToken => Str, Permissions => ArrayRef[Str|Undef], UserArn => Str])

Each argument is described in detail in: L<Paws::Cloud9::DescribeEnvironmentMemberships>

Returns: a L<Paws::Cloud9::DescribeEnvironmentMembershipsResult> instance

Gets information about environment members for an AWS Cloud9
development environment.


=head2 DescribeEnvironments(EnvironmentIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Cloud9::DescribeEnvironments>

Returns: a L<Paws::Cloud9::DescribeEnvironmentsResult> instance

Gets information about AWS Cloud9 development environments.


=head2 DescribeEnvironmentStatus(EnvironmentId => Str)

Each argument is described in detail in: L<Paws::Cloud9::DescribeEnvironmentStatus>

Returns: a L<Paws::Cloud9::DescribeEnvironmentStatusResult> instance

Gets status information for an AWS Cloud9 development environment.


=head2 ListEnvironments([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Cloud9::ListEnvironments>

Returns: a L<Paws::Cloud9::ListEnvironmentsResult> instance

Gets a list of AWS Cloud9 development environment identifiers.


=head2 UpdateEnvironment(EnvironmentId => Str, [Description => Str, Name => Str])

Each argument is described in detail in: L<Paws::Cloud9::UpdateEnvironment>

Returns: a L<Paws::Cloud9::UpdateEnvironmentResult> instance

Changes the settings of an existing AWS Cloud9 development environment.


=head2 UpdateEnvironmentMembership(EnvironmentId => Str, Permissions => Str, UserArn => Str)

Each argument is described in detail in: L<Paws::Cloud9::UpdateEnvironmentMembership>

Returns: a L<Paws::Cloud9::UpdateEnvironmentMembershipResult> instance

Changes the settings of an existing environment member for an AWS
Cloud9 development environment.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

