package Paws::MobileHub;
  use Moose;
  sub service { 'mobile' }
  sub signing_name { 'AWSMobileHubService' }
  sub version { '2017-07-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MobileHub::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MobileHub::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBundle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MobileHub::DescribeBundle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MobileHub::DescribeProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportBundle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MobileHub::ExportBundle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MobileHub::ExportProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBundles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MobileHub::ListBundles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MobileHub::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MobileHub::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBundles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBundles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBundles(@_, nextToken => $next_result->nextToken);
        push @{ $result->bundleList }, @{ $next_result->bundleList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'bundleList') foreach (@{ $result->bundleList });
        $result = $self->ListBundles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'bundleList') foreach (@{ $result->bundleList });
    }

    return undef
  }
  sub ListAllProjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProjects(@_, nextToken => $next_result->nextToken);
        push @{ $result->projects }, @{ $next_result->projects };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'projects') foreach (@{ $result->projects });
        $result = $self->ListProjects(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'projects') foreach (@{ $result->projects });
    }

    return undef
  }


  sub operations { qw/CreateProject DeleteProject DescribeBundle DescribeProject ExportBundle ExportProject ListBundles ListProjects UpdateProject / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub - Perl Interface to AWS AWS Mobile

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MobileHub');
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

AWS Mobile Service provides mobile app and website developers with
capabilities required to configure AWS resources and bootstrap their
developer desktop projects with the necessary SDKs, constants, tools
and samples to make use of those resources.

For the AWS API documentation, see L<https://docs.aws.amazon.com/mobile-hub/>


=head1 METHODS

=head2 CreateProject

=over

=item [Contents => Str]

=item [Name => Str]

=item [Region => Str]

=item [SnapshotId => Str]


=back

Each argument is described in detail in: L<Paws::MobileHub::CreateProject>

Returns: a L<Paws::MobileHub::CreateProjectResult> instance

Creates an AWS Mobile Hub project.


=head2 DeleteProject

=over

=item ProjectId => Str


=back

Each argument is described in detail in: L<Paws::MobileHub::DeleteProject>

Returns: a L<Paws::MobileHub::DeleteProjectResult> instance

Delets a project in AWS Mobile Hub.


=head2 DescribeBundle

=over

=item BundleId => Str


=back

Each argument is described in detail in: L<Paws::MobileHub::DescribeBundle>

Returns: a L<Paws::MobileHub::DescribeBundleResult> instance

Get the bundle details for the requested bundle id.


=head2 DescribeProject

=over

=item ProjectId => Str

=item [SyncFromResources => Bool]


=back

Each argument is described in detail in: L<Paws::MobileHub::DescribeProject>

Returns: a L<Paws::MobileHub::DescribeProjectResult> instance

Gets details about a project in AWS Mobile Hub.


=head2 ExportBundle

=over

=item BundleId => Str

=item [Platform => Str]

=item [ProjectId => Str]


=back

Each argument is described in detail in: L<Paws::MobileHub::ExportBundle>

Returns: a L<Paws::MobileHub::ExportBundleResult> instance

Generates customized software development kit (SDK) and or tool
packages used to integrate mobile web or mobile app clients with
backend AWS resources.


=head2 ExportProject

=over

=item ProjectId => Str


=back

Each argument is described in detail in: L<Paws::MobileHub::ExportProject>

Returns: a L<Paws::MobileHub::ExportProjectResult> instance

Exports project configuration to a snapshot which can be downloaded and
shared. Note that mobile app push credentials are encrypted in exported
projects, so they can only be shared successfully within the same AWS
account.


=head2 ListBundles

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MobileHub::ListBundles>

Returns: a L<Paws::MobileHub::ListBundlesResult> instance

List all available bundles.


=head2 ListProjects

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MobileHub::ListProjects>

Returns: a L<Paws::MobileHub::ListProjectsResult> instance

Lists projects in AWS Mobile Hub.


=head2 UpdateProject

=over

=item ProjectId => Str

=item [Contents => Str]


=back

Each argument is described in detail in: L<Paws::MobileHub::UpdateProject>

Returns: a L<Paws::MobileHub::UpdateProjectResult> instance

Update an existing project.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBundles(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllBundles([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - bundleList, passing the object as the first parameter, and the string 'bundleList' as the second parameter 

If not, it will return a a L<Paws::MobileHub::ListBundlesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjects(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllProjects([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - projects, passing the object as the first parameter, and the string 'projects' as the second parameter 

If not, it will return a a L<Paws::MobileHub::ListProjectsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

