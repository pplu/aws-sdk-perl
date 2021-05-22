package Paws::CodeBuild;
  use Moose;
  sub service { 'codebuild' }
  sub signing_name { 'codebuild' }
  sub version { '2016-10-06' }
  sub target_prefix { 'CodeBuild_20161006' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchDeleteBuilds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::BatchDeleteBuilds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetBuildBatches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::BatchGetBuildBatches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetBuilds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::BatchGetBuilds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::BatchGetProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetReportGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::BatchGetReportGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetReports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::BatchGetReports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReportGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::CreateReportGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWebhook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::CreateWebhook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBuildBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::DeleteBuildBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::DeleteReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReportGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::DeleteReportGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSourceCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::DeleteSourceCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWebhook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::DeleteWebhook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCodeCoverages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::DescribeCodeCoverages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTestCases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::DescribeTestCases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReportGroupTrend {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::GetReportGroupTrend', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportSourceCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ImportSourceCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvalidateProjectCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::InvalidateProjectCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuildBatches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListBuildBatches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuildBatchesForProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListBuildBatchesForProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuilds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListBuilds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuildsForProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListBuildsForProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCuratedEnvironmentImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListCuratedEnvironmentImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReportGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListReportGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListReports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReportsForReportGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListReportsForReportGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSharedProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListSharedProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSharedReportGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListSharedReportGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSourceCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListSourceCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetryBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::RetryBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetryBuildBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::RetryBuildBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::StartBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartBuildBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::StartBuildBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::StopBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopBuildBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::StopBuildBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReportGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::UpdateReportGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWebhook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::UpdateWebhook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllCodeCoverages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCodeCoverages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeCodeCoverages(@_, nextToken => $next_result->nextToken);
        push @{ $result->codeCoverages }, @{ $next_result->codeCoverages };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'codeCoverages') foreach (@{ $result->codeCoverages });
        $result = $self->DescribeCodeCoverages(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'codeCoverages') foreach (@{ $result->codeCoverages });
    }

    return undef
  }
  sub DescribeAllTestCases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTestCases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeTestCases(@_, nextToken => $next_result->nextToken);
        push @{ $result->testCases }, @{ $next_result->testCases };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'testCases') foreach (@{ $result->testCases });
        $result = $self->DescribeTestCases(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'testCases') foreach (@{ $result->testCases });
    }

    return undef
  }
  sub ListAllBuildBatches {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBuildBatches(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBuildBatches(@_, nextToken => $next_result->nextToken);
        push @{ $result->ids }, @{ $next_result->ids };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'ids') foreach (@{ $result->ids });
        $result = $self->ListBuildBatches(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'ids') foreach (@{ $result->ids });
    }

    return undef
  }
  sub ListAllBuildBatchesForProject {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBuildBatchesForProject(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBuildBatchesForProject(@_, nextToken => $next_result->nextToken);
        push @{ $result->ids }, @{ $next_result->ids };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'ids') foreach (@{ $result->ids });
        $result = $self->ListBuildBatchesForProject(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'ids') foreach (@{ $result->ids });
    }

    return undef
  }
  sub ListAllBuilds {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBuilds(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBuilds(@_, nextToken => $next_result->nextToken);
        push @{ $result->ids }, @{ $next_result->ids };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'ids') foreach (@{ $result->ids });
        $result = $self->ListBuilds(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'ids') foreach (@{ $result->ids });
    }

    return undef
  }
  sub ListAllBuildsForProject {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBuildsForProject(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBuildsForProject(@_, nextToken => $next_result->nextToken);
        push @{ $result->ids }, @{ $next_result->ids };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'ids') foreach (@{ $result->ids });
        $result = $self->ListBuildsForProject(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'ids') foreach (@{ $result->ids });
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
  sub ListAllReportGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReportGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReportGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->reportGroups }, @{ $next_result->reportGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'reportGroups') foreach (@{ $result->reportGroups });
        $result = $self->ListReportGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'reportGroups') foreach (@{ $result->reportGroups });
    }

    return undef
  }
  sub ListAllReports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReports(@_, nextToken => $next_result->nextToken);
        push @{ $result->reports }, @{ $next_result->reports };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'reports') foreach (@{ $result->reports });
        $result = $self->ListReports(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'reports') foreach (@{ $result->reports });
    }

    return undef
  }
  sub ListAllReportsForReportGroup {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReportsForReportGroup(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReportsForReportGroup(@_, nextToken => $next_result->nextToken);
        push @{ $result->reports }, @{ $next_result->reports };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'reports') foreach (@{ $result->reports });
        $result = $self->ListReportsForReportGroup(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'reports') foreach (@{ $result->reports });
    }

    return undef
  }
  sub ListAllSharedProjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSharedProjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSharedProjects(@_, nextToken => $next_result->nextToken);
        push @{ $result->projects }, @{ $next_result->projects };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'projects') foreach (@{ $result->projects });
        $result = $self->ListSharedProjects(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'projects') foreach (@{ $result->projects });
    }

    return undef
  }
  sub ListAllSharedReportGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSharedReportGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSharedReportGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->reportGroups }, @{ $next_result->reportGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'reportGroups') foreach (@{ $result->reportGroups });
        $result = $self->ListSharedReportGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'reportGroups') foreach (@{ $result->reportGroups });
    }

    return undef
  }


  sub operations { qw/BatchDeleteBuilds BatchGetBuildBatches BatchGetBuilds BatchGetProjects BatchGetReportGroups BatchGetReports CreateProject CreateReportGroup CreateWebhook DeleteBuildBatch DeleteProject DeleteReport DeleteReportGroup DeleteResourcePolicy DeleteSourceCredentials DeleteWebhook DescribeCodeCoverages DescribeTestCases GetReportGroupTrend GetResourcePolicy ImportSourceCredentials InvalidateProjectCache ListBuildBatches ListBuildBatchesForProject ListBuilds ListBuildsForProject ListCuratedEnvironmentImages ListProjects ListReportGroups ListReports ListReportsForReportGroup ListSharedProjects ListSharedReportGroups ListSourceCredentials PutResourcePolicy RetryBuild RetryBuildBatch StartBuild StartBuildBatch StopBuild StopBuildBatch UpdateProject UpdateReportGroup UpdateWebhook / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild - Perl Interface to AWS AWS CodeBuild

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeBuild');
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

AWS CodeBuild

AWS CodeBuild is a fully managed build service in the cloud. AWS
CodeBuild compiles your source code, runs unit tests, and produces
artifacts that are ready to deploy. AWS CodeBuild eliminates the need
to provision, manage, and scale your own build servers. It provides
prepackaged build environments for the most popular programming
languages and build tools, such as Apache Maven, Gradle, and more. You
can also fully customize build environments in AWS CodeBuild to use
your own build tools. AWS CodeBuild scales automatically to meet peak
build requests. You pay only for the build time you consume. For more
information about AWS CodeBuild, see the I< AWS CodeBuild User Guide
(https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html).>

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06>


=head1 METHODS

=head2 BatchDeleteBuilds

=over

=item Ids => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeBuild::BatchDeleteBuilds>

Returns: a L<Paws::CodeBuild::BatchDeleteBuildsOutput> instance

Deletes one or more builds.


=head2 BatchGetBuildBatches

=over

=item Ids => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeBuild::BatchGetBuildBatches>

Returns: a L<Paws::CodeBuild::BatchGetBuildBatchesOutput> instance

Retrieves information about one or more batch builds.


=head2 BatchGetBuilds

=over

=item Ids => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeBuild::BatchGetBuilds>

Returns: a L<Paws::CodeBuild::BatchGetBuildsOutput> instance

Gets information about one or more builds.


=head2 BatchGetProjects

=over

=item Names => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeBuild::BatchGetProjects>

Returns: a L<Paws::CodeBuild::BatchGetProjectsOutput> instance

Gets information about one or more build projects.


=head2 BatchGetReportGroups

=over

=item ReportGroupArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeBuild::BatchGetReportGroups>

Returns: a L<Paws::CodeBuild::BatchGetReportGroupsOutput> instance

Returns an array of report groups.


=head2 BatchGetReports

=over

=item ReportArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeBuild::BatchGetReports>

Returns: a L<Paws::CodeBuild::BatchGetReportsOutput> instance

Returns an array of reports.


=head2 CreateProject

=over

=item Artifacts => L<Paws::CodeBuild::ProjectArtifacts>

=item Environment => L<Paws::CodeBuild::ProjectEnvironment>

=item Name => Str

=item ServiceRole => Str

=item Source => L<Paws::CodeBuild::ProjectSource>

=item [BadgeEnabled => Bool]

=item [BuildBatchConfig => L<Paws::CodeBuild::ProjectBuildBatchConfig>]

=item [Cache => L<Paws::CodeBuild::ProjectCache>]

=item [ConcurrentBuildLimit => Int]

=item [Description => Str]

=item [EncryptionKey => Str]

=item [FileSystemLocations => ArrayRef[L<Paws::CodeBuild::ProjectFileSystemLocation>]]

=item [LogsConfig => L<Paws::CodeBuild::LogsConfig>]

=item [QueuedTimeoutInMinutes => Int]

=item [SecondaryArtifacts => ArrayRef[L<Paws::CodeBuild::ProjectArtifacts>]]

=item [SecondarySources => ArrayRef[L<Paws::CodeBuild::ProjectSource>]]

=item [SecondarySourceVersions => ArrayRef[L<Paws::CodeBuild::ProjectSourceVersion>]]

=item [SourceVersion => Str]

=item [Tags => ArrayRef[L<Paws::CodeBuild::Tag>]]

=item [TimeoutInMinutes => Int]

=item [VpcConfig => L<Paws::CodeBuild::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::CodeBuild::CreateProject>

Returns: a L<Paws::CodeBuild::CreateProjectOutput> instance

Creates a build project.


=head2 CreateReportGroup

=over

=item ExportConfig => L<Paws::CodeBuild::ReportExportConfig>

=item Name => Str

=item Type => Str

=item [Tags => ArrayRef[L<Paws::CodeBuild::Tag>]]


=back

Each argument is described in detail in: L<Paws::CodeBuild::CreateReportGroup>

Returns: a L<Paws::CodeBuild::CreateReportGroupOutput> instance

Creates a report group. A report group contains a collection of
reports.


=head2 CreateWebhook

=over

=item ProjectName => Str

=item [BranchFilter => Str]

=item [BuildType => Str]

=item [FilterGroups => ArrayRef[L<ArrayRef[Paws::CodeBuild::WebhookFilter]>]]


=back

Each argument is described in detail in: L<Paws::CodeBuild::CreateWebhook>

Returns: a L<Paws::CodeBuild::CreateWebhookOutput> instance

For an existing AWS CodeBuild build project that has its source code
stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to
start rebuilding the source code every time a code change is pushed to
the repository.

If you enable webhooks for an AWS CodeBuild project, and the project is
used as a build step in AWS CodePipeline, then two identical builds are
created for each commit. One build is triggered through webhooks, and
one through AWS CodePipeline. Because billing is on a per-build basis,
you are billed for both builds. Therefore, if you are using AWS
CodePipeline, we recommend that you disable webhooks in AWS CodeBuild.
In the AWS CodeBuild console, clear the Webhook box. For more
information, see step 5 in Change a Build Project's Settings
(https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console).


=head2 DeleteBuildBatch

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::DeleteBuildBatch>

Returns: a L<Paws::CodeBuild::DeleteBuildBatchOutput> instance

Deletes a batch build.


=head2 DeleteProject

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::DeleteProject>

Returns: a L<Paws::CodeBuild::DeleteProjectOutput> instance

Deletes a build project. When you delete a project, its builds are not
deleted.


=head2 DeleteReport

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::DeleteReport>

Returns: a L<Paws::CodeBuild::DeleteReportOutput> instance

Deletes a report.


=head2 DeleteReportGroup

=over

=item Arn => Str

=item [DeleteReports => Bool]


=back

Each argument is described in detail in: L<Paws::CodeBuild::DeleteReportGroup>

Returns: a L<Paws::CodeBuild::DeleteReportGroupOutput> instance

Deletes a report group. Before you delete a report group, you must
delete its reports.


=head2 DeleteResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::DeleteResourcePolicy>

Returns: a L<Paws::CodeBuild::DeleteResourcePolicyOutput> instance

Deletes a resource policy that is identified by its resource ARN.


=head2 DeleteSourceCredentials

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::DeleteSourceCredentials>

Returns: a L<Paws::CodeBuild::DeleteSourceCredentialsOutput> instance

Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source
credentials.


=head2 DeleteWebhook

=over

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::DeleteWebhook>

Returns: a L<Paws::CodeBuild::DeleteWebhookOutput> instance

For an existing AWS CodeBuild build project that has its source code
stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from
rebuilding the source code every time a code change is pushed to the
repository.


=head2 DescribeCodeCoverages

=over

=item ReportArn => Str

=item [MaxLineCoveragePercentage => Num]

=item [MaxResults => Int]

=item [MinLineCoveragePercentage => Num]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::DescribeCodeCoverages>

Returns: a L<Paws::CodeBuild::DescribeCodeCoveragesOutput> instance

Retrieves one or more code coverage reports.


=head2 DescribeTestCases

=over

=item ReportArn => Str

=item [Filter => L<Paws::CodeBuild::TestCaseFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::DescribeTestCases>

Returns: a L<Paws::CodeBuild::DescribeTestCasesOutput> instance

Returns a list of details about test cases for a report.


=head2 GetReportGroupTrend

=over

=item ReportGroupArn => Str

=item TrendField => Str

=item [NumOfReports => Int]


=back

Each argument is described in detail in: L<Paws::CodeBuild::GetReportGroupTrend>

Returns: a L<Paws::CodeBuild::GetReportGroupTrendOutput> instance

Analyzes and accumulates test report values for the specified test
reports.


=head2 GetResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::GetResourcePolicy>

Returns: a L<Paws::CodeBuild::GetResourcePolicyOutput> instance

Gets a resource policy that is identified by its resource ARN.


=head2 ImportSourceCredentials

=over

=item AuthType => Str

=item ServerType => Str

=item Token => Str

=item [ShouldOverwrite => Bool]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ImportSourceCredentials>

Returns: a L<Paws::CodeBuild::ImportSourceCredentialsOutput> instance

Imports the source repository credentials for an AWS CodeBuild project
that has its source code stored in a GitHub, GitHub Enterprise, or
Bitbucket repository.


=head2 InvalidateProjectCache

=over

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::InvalidateProjectCache>

Returns: a L<Paws::CodeBuild::InvalidateProjectCacheOutput> instance

Resets the cache for a project.


=head2 ListBuildBatches

=over

=item [Filter => L<Paws::CodeBuild::BuildBatchFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ListBuildBatches>

Returns: a L<Paws::CodeBuild::ListBuildBatchesOutput> instance

Retrieves the identifiers of your build batches in the current region.


=head2 ListBuildBatchesForProject

=over

=item [Filter => L<Paws::CodeBuild::BuildBatchFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProjectName => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ListBuildBatchesForProject>

Returns: a L<Paws::CodeBuild::ListBuildBatchesForProjectOutput> instance

Retrieves the identifiers of the build batches for a specific project.


=head2 ListBuilds

=over

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ListBuilds>

Returns: a L<Paws::CodeBuild::ListBuildsOutput> instance

Gets a list of build IDs, with each build ID representing a single
build.


=head2 ListBuildsForProject

=over

=item ProjectName => Str

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ListBuildsForProject>

Returns: a L<Paws::CodeBuild::ListBuildsForProjectOutput> instance

Gets a list of build identifiers for the specified build project, with
each build identifier representing a single build.


=head2 ListCuratedEnvironmentImages






Each argument is described in detail in: L<Paws::CodeBuild::ListCuratedEnvironmentImages>

Returns: a L<Paws::CodeBuild::ListCuratedEnvironmentImagesOutput> instance

Gets information about Docker images that are managed by AWS CodeBuild.


=head2 ListProjects

=over

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ListProjects>

Returns: a L<Paws::CodeBuild::ListProjectsOutput> instance

Gets a list of build project names, with each build project name
representing a single build project.


=head2 ListReportGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ListReportGroups>

Returns: a L<Paws::CodeBuild::ListReportGroupsOutput> instance

Gets a list ARNs for the report groups in the current AWS account.


=head2 ListReports

=over

=item [Filter => L<Paws::CodeBuild::ReportFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ListReports>

Returns: a L<Paws::CodeBuild::ListReportsOutput> instance

Returns a list of ARNs for the reports in the current AWS account.


=head2 ListReportsForReportGroup

=over

=item ReportGroupArn => Str

=item [Filter => L<Paws::CodeBuild::ReportFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ListReportsForReportGroup>

Returns: a L<Paws::CodeBuild::ListReportsForReportGroupOutput> instance

Returns a list of ARNs for the reports that belong to a C<ReportGroup>.


=head2 ListSharedProjects

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ListSharedProjects>

Returns: a L<Paws::CodeBuild::ListSharedProjectsOutput> instance

Gets a list of projects that are shared with other AWS accounts or
users.


=head2 ListSharedReportGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ListSharedReportGroups>

Returns: a L<Paws::CodeBuild::ListSharedReportGroupsOutput> instance

Gets a list of report groups that are shared with other AWS accounts or
users.


=head2 ListSourceCredentials






Each argument is described in detail in: L<Paws::CodeBuild::ListSourceCredentials>

Returns: a L<Paws::CodeBuild::ListSourceCredentialsOutput> instance

Returns a list of C<SourceCredentialsInfo> objects.


=head2 PutResourcePolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::PutResourcePolicy>

Returns: a L<Paws::CodeBuild::PutResourcePolicyOutput> instance

Stores a resource policy for the ARN of a C<Project> or C<ReportGroup>
object.


=head2 RetryBuild

=over

=item [Id => Str]

=item [IdempotencyToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::RetryBuild>

Returns: a L<Paws::CodeBuild::RetryBuildOutput> instance

Restarts a build.


=head2 RetryBuildBatch

=over

=item [Id => Str]

=item [IdempotencyToken => Str]

=item [RetryType => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::RetryBuildBatch>

Returns: a L<Paws::CodeBuild::RetryBuildBatchOutput> instance

Restarts a failed batch build. Only batch builds that have failed can
be retried.


=head2 StartBuild

=over

=item ProjectName => Str

=item [ArtifactsOverride => L<Paws::CodeBuild::ProjectArtifacts>]

=item [BuildspecOverride => Str]

=item [BuildStatusConfigOverride => L<Paws::CodeBuild::BuildStatusConfig>]

=item [CacheOverride => L<Paws::CodeBuild::ProjectCache>]

=item [CertificateOverride => Str]

=item [ComputeTypeOverride => Str]

=item [DebugSessionEnabled => Bool]

=item [EncryptionKeyOverride => Str]

=item [EnvironmentTypeOverride => Str]

=item [EnvironmentVariablesOverride => ArrayRef[L<Paws::CodeBuild::EnvironmentVariable>]]

=item [GitCloneDepthOverride => Int]

=item [GitSubmodulesConfigOverride => L<Paws::CodeBuild::GitSubmodulesConfig>]

=item [IdempotencyToken => Str]

=item [ImageOverride => Str]

=item [ImagePullCredentialsTypeOverride => Str]

=item [InsecureSslOverride => Bool]

=item [LogsConfigOverride => L<Paws::CodeBuild::LogsConfig>]

=item [PrivilegedModeOverride => Bool]

=item [QueuedTimeoutInMinutesOverride => Int]

=item [RegistryCredentialOverride => L<Paws::CodeBuild::RegistryCredential>]

=item [ReportBuildStatusOverride => Bool]

=item [SecondaryArtifactsOverride => ArrayRef[L<Paws::CodeBuild::ProjectArtifacts>]]

=item [SecondarySourcesOverride => ArrayRef[L<Paws::CodeBuild::ProjectSource>]]

=item [SecondarySourcesVersionOverride => ArrayRef[L<Paws::CodeBuild::ProjectSourceVersion>]]

=item [ServiceRoleOverride => Str]

=item [SourceAuthOverride => L<Paws::CodeBuild::SourceAuth>]

=item [SourceLocationOverride => Str]

=item [SourceTypeOverride => Str]

=item [SourceVersion => Str]

=item [TimeoutInMinutesOverride => Int]


=back

Each argument is described in detail in: L<Paws::CodeBuild::StartBuild>

Returns: a L<Paws::CodeBuild::StartBuildOutput> instance

Starts running a build.


=head2 StartBuildBatch

=over

=item ProjectName => Str

=item [ArtifactsOverride => L<Paws::CodeBuild::ProjectArtifacts>]

=item [BuildBatchConfigOverride => L<Paws::CodeBuild::ProjectBuildBatchConfig>]

=item [BuildspecOverride => Str]

=item [BuildTimeoutInMinutesOverride => Int]

=item [CacheOverride => L<Paws::CodeBuild::ProjectCache>]

=item [CertificateOverride => Str]

=item [ComputeTypeOverride => Str]

=item [DebugSessionEnabled => Bool]

=item [EncryptionKeyOverride => Str]

=item [EnvironmentTypeOverride => Str]

=item [EnvironmentVariablesOverride => ArrayRef[L<Paws::CodeBuild::EnvironmentVariable>]]

=item [GitCloneDepthOverride => Int]

=item [GitSubmodulesConfigOverride => L<Paws::CodeBuild::GitSubmodulesConfig>]

=item [IdempotencyToken => Str]

=item [ImageOverride => Str]

=item [ImagePullCredentialsTypeOverride => Str]

=item [InsecureSslOverride => Bool]

=item [LogsConfigOverride => L<Paws::CodeBuild::LogsConfig>]

=item [PrivilegedModeOverride => Bool]

=item [QueuedTimeoutInMinutesOverride => Int]

=item [RegistryCredentialOverride => L<Paws::CodeBuild::RegistryCredential>]

=item [ReportBuildBatchStatusOverride => Bool]

=item [SecondaryArtifactsOverride => ArrayRef[L<Paws::CodeBuild::ProjectArtifacts>]]

=item [SecondarySourcesOverride => ArrayRef[L<Paws::CodeBuild::ProjectSource>]]

=item [SecondarySourcesVersionOverride => ArrayRef[L<Paws::CodeBuild::ProjectSourceVersion>]]

=item [ServiceRoleOverride => Str]

=item [SourceAuthOverride => L<Paws::CodeBuild::SourceAuth>]

=item [SourceLocationOverride => Str]

=item [SourceTypeOverride => Str]

=item [SourceVersion => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::StartBuildBatch>

Returns: a L<Paws::CodeBuild::StartBuildBatchOutput> instance

Starts a batch build for a project.


=head2 StopBuild

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::StopBuild>

Returns: a L<Paws::CodeBuild::StopBuildOutput> instance

Attempts to stop running a build.


=head2 StopBuildBatch

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::StopBuildBatch>

Returns: a L<Paws::CodeBuild::StopBuildBatchOutput> instance

Stops a running batch build.


=head2 UpdateProject

=over

=item Name => Str

=item [Artifacts => L<Paws::CodeBuild::ProjectArtifacts>]

=item [BadgeEnabled => Bool]

=item [BuildBatchConfig => L<Paws::CodeBuild::ProjectBuildBatchConfig>]

=item [Cache => L<Paws::CodeBuild::ProjectCache>]

=item [ConcurrentBuildLimit => Int]

=item [Description => Str]

=item [EncryptionKey => Str]

=item [Environment => L<Paws::CodeBuild::ProjectEnvironment>]

=item [FileSystemLocations => ArrayRef[L<Paws::CodeBuild::ProjectFileSystemLocation>]]

=item [LogsConfig => L<Paws::CodeBuild::LogsConfig>]

=item [QueuedTimeoutInMinutes => Int]

=item [SecondaryArtifacts => ArrayRef[L<Paws::CodeBuild::ProjectArtifacts>]]

=item [SecondarySources => ArrayRef[L<Paws::CodeBuild::ProjectSource>]]

=item [SecondarySourceVersions => ArrayRef[L<Paws::CodeBuild::ProjectSourceVersion>]]

=item [ServiceRole => Str]

=item [Source => L<Paws::CodeBuild::ProjectSource>]

=item [SourceVersion => Str]

=item [Tags => ArrayRef[L<Paws::CodeBuild::Tag>]]

=item [TimeoutInMinutes => Int]

=item [VpcConfig => L<Paws::CodeBuild::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::CodeBuild::UpdateProject>

Returns: a L<Paws::CodeBuild::UpdateProjectOutput> instance

Changes the settings of a build project.


=head2 UpdateReportGroup

=over

=item Arn => Str

=item [ExportConfig => L<Paws::CodeBuild::ReportExportConfig>]

=item [Tags => ArrayRef[L<Paws::CodeBuild::Tag>]]


=back

Each argument is described in detail in: L<Paws::CodeBuild::UpdateReportGroup>

Returns: a L<Paws::CodeBuild::UpdateReportGroupOutput> instance

Updates a report group.


=head2 UpdateWebhook

=over

=item ProjectName => Str

=item [BranchFilter => Str]

=item [BuildType => Str]

=item [FilterGroups => ArrayRef[L<ArrayRef[Paws::CodeBuild::WebhookFilter]>]]

=item [RotateSecret => Bool]


=back

Each argument is described in detail in: L<Paws::CodeBuild::UpdateWebhook>

Returns: a L<Paws::CodeBuild::UpdateWebhookOutput> instance

Updates the webhook associated with an AWS CodeBuild build project.

If you use Bitbucket for your repository, C<rotateSecret> is ignored.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllCodeCoverages(sub { },ReportArn => Str, [MaxLineCoveragePercentage => Num, MaxResults => Int, MinLineCoveragePercentage => Num, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 DescribeAllCodeCoverages(ReportArn => Str, [MaxLineCoveragePercentage => Num, MaxResults => Int, MinLineCoveragePercentage => Num, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - codeCoverages, passing the object as the first parameter, and the string 'codeCoverages' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::DescribeCodeCoveragesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTestCases(sub { },ReportArn => Str, [Filter => L<Paws::CodeBuild::TestCaseFilter>, MaxResults => Int, NextToken => Str])

=head2 DescribeAllTestCases(ReportArn => Str, [Filter => L<Paws::CodeBuild::TestCaseFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - testCases, passing the object as the first parameter, and the string 'testCases' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::DescribeTestCasesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBuildBatches(sub { },[Filter => L<Paws::CodeBuild::BuildBatchFilter>, MaxResults => Int, NextToken => Str, SortOrder => Str])

=head2 ListAllBuildBatches([Filter => L<Paws::CodeBuild::BuildBatchFilter>, MaxResults => Int, NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ids, passing the object as the first parameter, and the string 'ids' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::ListBuildBatchesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBuildBatchesForProject(sub { },[Filter => L<Paws::CodeBuild::BuildBatchFilter>, MaxResults => Int, NextToken => Str, ProjectName => Str, SortOrder => Str])

=head2 ListAllBuildBatchesForProject([Filter => L<Paws::CodeBuild::BuildBatchFilter>, MaxResults => Int, NextToken => Str, ProjectName => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ids, passing the object as the first parameter, and the string 'ids' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::ListBuildBatchesForProjectOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBuilds(sub { },[NextToken => Str, SortOrder => Str])

=head2 ListAllBuilds([NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ids, passing the object as the first parameter, and the string 'ids' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::ListBuildsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBuildsForProject(sub { },ProjectName => Str, [NextToken => Str, SortOrder => Str])

=head2 ListAllBuildsForProject(ProjectName => Str, [NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ids, passing the object as the first parameter, and the string 'ids' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::ListBuildsForProjectOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjects(sub { },[NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllProjects([NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - projects, passing the object as the first parameter, and the string 'projects' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::ListProjectsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReportGroups(sub { },[MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllReportGroups([MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - reportGroups, passing the object as the first parameter, and the string 'reportGroups' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::ListReportGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReports(sub { },[Filter => L<Paws::CodeBuild::ReportFilter>, MaxResults => Int, NextToken => Str, SortOrder => Str])

=head2 ListAllReports([Filter => L<Paws::CodeBuild::ReportFilter>, MaxResults => Int, NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - reports, passing the object as the first parameter, and the string 'reports' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::ListReportsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReportsForReportGroup(sub { },ReportGroupArn => Str, [Filter => L<Paws::CodeBuild::ReportFilter>, MaxResults => Int, NextToken => Str, SortOrder => Str])

=head2 ListAllReportsForReportGroup(ReportGroupArn => Str, [Filter => L<Paws::CodeBuild::ReportFilter>, MaxResults => Int, NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - reports, passing the object as the first parameter, and the string 'reports' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::ListReportsForReportGroupOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSharedProjects(sub { },[MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllSharedProjects([MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - projects, passing the object as the first parameter, and the string 'projects' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::ListSharedProjectsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSharedReportGroups(sub { },[MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllSharedReportGroups([MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - reportGroups, passing the object as the first parameter, and the string 'reportGroups' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::ListSharedReportGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

