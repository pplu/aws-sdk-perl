package Paws::Amplify;
  use Moose;
  sub service { 'amplify' }
  sub signing_name { 'amplify' }
  sub version { '2017-07-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::CreateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::CreateBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomainAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::CreateDomainAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::DeleteApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::DeleteBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomainAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::DeleteDomainAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::DeleteJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::GetApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::GetBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::GetDomainAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::GetJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::ListApps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBranches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::ListBranches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomainAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::ListDomainAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::StartJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::StopJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::UpdateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::UpdateBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::UpdateDomainAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllApps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApps(@_, nextToken => $next_result->nextToken);
        push @{ $result->apps }, @{ $next_result->apps };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'apps') foreach (@{ $result->apps });
        $result = $self->ListApps(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'apps') foreach (@{ $result->apps });
    }

    return undef
  }
  sub ListAllBranches {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBranches(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBranches(@_, nextToken => $next_result->nextToken);
        push @{ $result->branches }, @{ $next_result->branches };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'branches') foreach (@{ $result->branches });
        $result = $self->ListBranches(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'branches') foreach (@{ $result->branches });
    }

    return undef
  }
  sub ListAllDomainAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomainAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDomainAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->domainAssociations }, @{ $next_result->domainAssociations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'domainAssociations') foreach (@{ $result->domainAssociations });
        $result = $self->ListDomainAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'domainAssociations') foreach (@{ $result->domainAssociations });
    }

    return undef
  }
  sub ListAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobSummaries }, @{ $next_result->jobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobSummaries') foreach (@{ $result->jobSummaries });
        $result = $self->ListJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobSummaries') foreach (@{ $result->jobSummaries });
    }

    return undef
  }


  sub operations { qw/CreateApp CreateBranch CreateDomainAssociation DeleteApp DeleteBranch DeleteDomainAssociation DeleteJob GetApp GetBranch GetDomainAssociation GetJob ListApps ListBranches ListDomainAssociations ListJobs StartJob StopJob UpdateApp UpdateBranch UpdateDomainAssociation / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify - Perl Interface to AWS AWS Amplify

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Amplify');
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

Amplify is a fully managed continuous deployment and hosting service
for modern web apps.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25>


=head1 METHODS

=head2 CreateApp

=over

=item Name => Str

=item OauthToken => Str

=item Platform => Str

=item Repository => Str

=item [BasicAuthCredentials => Str]

=item [BuildSpec => Str]

=item [CustomRules => ArrayRef[L<Paws::Amplify::CustomRule>]]

=item [Description => Str]

=item [EnableBasicAuth => Bool]

=item [EnableBranchAutoBuild => Bool]

=item [EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>]

=item [IamServiceRoleArn => Str]

=item [Tags => L<Paws::Amplify::Tags>]


=back

Each argument is described in detail in: L<Paws::Amplify::CreateApp>

Returns: a L<Paws::Amplify::CreateAppResult> instance

Creates a new Amplify App.


=head2 CreateBranch

=over

=item AppId => Str

=item BranchName => Str

=item [BasicAuthCredentials => Str]

=item [BuildSpec => Str]

=item [Description => Str]

=item [EnableAutoBuild => Bool]

=item [EnableBasicAuth => Bool]

=item [EnableNotification => Bool]

=item [EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>]

=item [Framework => Str]

=item [Stage => Str]

=item [Tags => L<Paws::Amplify::Tags>]

=item [Ttl => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::CreateBranch>

Returns: a L<Paws::Amplify::CreateBranchResult> instance

Creates a new Branch for an Amplify App.


=head2 CreateDomainAssociation

=over

=item AppId => Str

=item DomainName => Str

=item SubDomainSettings => ArrayRef[L<Paws::Amplify::SubDomainSetting>]

=item [EnableAutoSubDomain => Bool]


=back

Each argument is described in detail in: L<Paws::Amplify::CreateDomainAssociation>

Returns: a L<Paws::Amplify::CreateDomainAssociationResult> instance

Create a new DomainAssociation on an App


=head2 DeleteApp

=over

=item AppId => Str


=back

Each argument is described in detail in: L<Paws::Amplify::DeleteApp>

Returns: a L<Paws::Amplify::DeleteAppResult> instance

Delete an existing Amplify App by appId.


=head2 DeleteBranch

=over

=item AppId => Str

=item BranchName => Str


=back

Each argument is described in detail in: L<Paws::Amplify::DeleteBranch>

Returns: a L<Paws::Amplify::DeleteBranchResult> instance

Deletes a branch for an Amplify App.


=head2 DeleteDomainAssociation

=over

=item AppId => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Amplify::DeleteDomainAssociation>

Returns: a L<Paws::Amplify::DeleteDomainAssociationResult> instance

Deletes a DomainAssociation.


=head2 DeleteJob

=over

=item AppId => Str

=item BranchName => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Amplify::DeleteJob>

Returns: a L<Paws::Amplify::DeleteJobResult> instance

Delete a job, for an Amplify branch, part of Amplify App.


=head2 GetApp

=over

=item AppId => Str


=back

Each argument is described in detail in: L<Paws::Amplify::GetApp>

Returns: a L<Paws::Amplify::GetAppResult> instance

Retrieves an existing Amplify App by appId.


=head2 GetBranch

=over

=item AppId => Str

=item BranchName => Str


=back

Each argument is described in detail in: L<Paws::Amplify::GetBranch>

Returns: a L<Paws::Amplify::GetBranchResult> instance

Retrieves a branch for an Amplify App.


=head2 GetDomainAssociation

=over

=item AppId => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Amplify::GetDomainAssociation>

Returns: a L<Paws::Amplify::GetDomainAssociationResult> instance

Retrieves domain info that corresponds to an appId and domainName.


=head2 GetJob

=over

=item AppId => Str

=item BranchName => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Amplify::GetJob>

Returns: a L<Paws::Amplify::GetJobResult> instance

Get a job for a branch, part of an Amplify App.


=head2 ListApps

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::ListApps>

Returns: a L<Paws::Amplify::ListAppsResult> instance

Lists existing Amplify Apps.


=head2 ListBranches

=over

=item AppId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::ListBranches>

Returns: a L<Paws::Amplify::ListBranchesResult> instance

Lists branches for an Amplify App.


=head2 ListDomainAssociations

=over

=item AppId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::ListDomainAssociations>

Returns: a L<Paws::Amplify::ListDomainAssociationsResult> instance

List domains with an app


=head2 ListJobs

=over

=item AppId => Str

=item BranchName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::ListJobs>

Returns: a L<Paws::Amplify::ListJobsResult> instance

List Jobs for a branch, part of an Amplify App.


=head2 StartJob

=over

=item AppId => Str

=item BranchName => Str

=item JobType => Str

=item [CommitId => Str]

=item [CommitMessage => Str]

=item [CommitTime => Str]

=item [JobId => Str]

=item [JobReason => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::StartJob>

Returns: a L<Paws::Amplify::StartJobResult> instance

Starts a new job for a branch, part of an Amplify App.


=head2 StopJob

=over

=item AppId => Str

=item BranchName => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Amplify::StopJob>

Returns: a L<Paws::Amplify::StopJobResult> instance

Stop a job that is in progress, for an Amplify branch, part of Amplify
App.


=head2 UpdateApp

=over

=item AppId => Str

=item [BasicAuthCredentials => Str]

=item [BuildSpec => Str]

=item [CustomRules => ArrayRef[L<Paws::Amplify::CustomRule>]]

=item [Description => Str]

=item [EnableBasicAuth => Bool]

=item [EnableBranchAutoBuild => Bool]

=item [EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>]

=item [IamServiceRoleArn => Str]

=item [Name => Str]

=item [Platform => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::UpdateApp>

Returns: a L<Paws::Amplify::UpdateAppResult> instance

Updates an existing Amplify App.


=head2 UpdateBranch

=over

=item AppId => Str

=item BranchName => Str

=item [BasicAuthCredentials => Str]

=item [BuildSpec => Str]

=item [Description => Str]

=item [EnableAutoBuild => Bool]

=item [EnableBasicAuth => Bool]

=item [EnableNotification => Bool]

=item [EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>]

=item [Framework => Str]

=item [Stage => Str]

=item [Ttl => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::UpdateBranch>

Returns: a L<Paws::Amplify::UpdateBranchResult> instance

Updates a branch for an Amplify App.


=head2 UpdateDomainAssociation

=over

=item AppId => Str

=item DomainName => Str

=item SubDomainSettings => ArrayRef[L<Paws::Amplify::SubDomainSetting>]

=item [EnableAutoSubDomain => Bool]


=back

Each argument is described in detail in: L<Paws::Amplify::UpdateDomainAssociation>

Returns: a L<Paws::Amplify::UpdateDomainAssociationResult> instance

Create a new DomainAssociation on an App




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApps(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllApps([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - apps, passing the object as the first parameter, and the string 'apps' as the second parameter 

If not, it will return a a L<Paws::Amplify::ListAppsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBranches(sub { },AppId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllBranches(AppId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - branches, passing the object as the first parameter, and the string 'branches' as the second parameter 

If not, it will return a a L<Paws::Amplify::ListBranchesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDomainAssociations(sub { },AppId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDomainAssociations(AppId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - domainAssociations, passing the object as the first parameter, and the string 'domainAssociations' as the second parameter 

If not, it will return a a L<Paws::Amplify::ListDomainAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobs(sub { },AppId => Str, BranchName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllJobs(AppId => Str, BranchName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobSummaries, passing the object as the first parameter, and the string 'jobSummaries' as the second parameter 

If not, it will return a a L<Paws::Amplify::ListJobsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

