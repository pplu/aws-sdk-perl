package Paws::GlueDataBrew;
  use Moose;
  sub service { 'databrew' }
  sub signing_name { 'databrew' }
  sub version { '2017-07-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchDeleteRecipeVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::BatchDeleteRecipeVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::CreateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProfileJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::CreateProfileJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::CreateRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRecipeJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::CreateRecipeJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::CreateSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::DeleteJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRecipeVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::DeleteRecipeVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::DeleteSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::DescribeJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::DescribeJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::DescribeProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::DescribeRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::DescribeSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::ListDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::ListJobRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecipes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::ListRecipes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecipeVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::ListRecipeVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchedules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::ListSchedules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::PublishRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendProjectSessionAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::SendProjectSessionAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::StartJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartProjectSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::StartProjectSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::StopJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::UpdateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProfileJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::UpdateProfileJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::UpdateRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRecipeJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::UpdateRecipeJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlueDataBrew::UpdateSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDatasets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDatasets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Datasets }, @{ $next_result->Datasets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Datasets') foreach (@{ $result->Datasets });
        $result = $self->ListDatasets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Datasets') foreach (@{ $result->Datasets });
    }

    return undef
  }
  sub ListAllJobRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListJobRuns(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobRuns }, @{ $next_result->JobRuns };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobRuns') foreach (@{ $result->JobRuns });
        $result = $self->ListJobRuns(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobRuns') foreach (@{ $result->JobRuns });
    }

    return undef
  }
  sub ListAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->Jobs }, @{ $next_result->Jobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
        $result = $self->ListJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
    }

    return undef
  }
  sub ListAllProjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProjects(@_, NextToken => $next_result->NextToken);
        push @{ $result->Projects }, @{ $next_result->Projects };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Projects') foreach (@{ $result->Projects });
        $result = $self->ListProjects(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Projects') foreach (@{ $result->Projects });
    }

    return undef
  }
  sub ListAllRecipes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecipes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRecipes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Recipes }, @{ $next_result->Recipes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Recipes') foreach (@{ $result->Recipes });
        $result = $self->ListRecipes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Recipes') foreach (@{ $result->Recipes });
    }

    return undef
  }
  sub ListAllRecipeVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecipeVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRecipeVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Recipes }, @{ $next_result->Recipes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Recipes') foreach (@{ $result->Recipes });
        $result = $self->ListRecipeVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Recipes') foreach (@{ $result->Recipes });
    }

    return undef
  }
  sub ListAllSchedules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchedules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSchedules(@_, NextToken => $next_result->NextToken);
        push @{ $result->Schedules }, @{ $next_result->Schedules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Schedules') foreach (@{ $result->Schedules });
        $result = $self->ListSchedules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Schedules') foreach (@{ $result->Schedules });
    }

    return undef
  }


  sub operations { qw/BatchDeleteRecipeVersion CreateDataset CreateProfileJob CreateProject CreateRecipe CreateRecipeJob CreateSchedule DeleteDataset DeleteJob DeleteProject DeleteRecipeVersion DeleteSchedule DescribeDataset DescribeJob DescribeJobRun DescribeProject DescribeRecipe DescribeSchedule ListDatasets ListJobRuns ListJobs ListProjects ListRecipes ListRecipeVersions ListSchedules ListTagsForResource PublishRecipe SendProjectSessionAction StartJobRun StartProjectSession StopJobRun TagResource UntagResource UpdateDataset UpdateProfileJob UpdateProject UpdateRecipe UpdateRecipeJob UpdateSchedule / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew - Perl Interface to AWS AWS Glue DataBrew

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('GlueDataBrew');
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

Glue DataBrew is a visual, cloud-scale data-preparation service.
DataBrew simplifies data preparation tasks, targeting data issues that
are hard to spot and time-consuming to fix. DataBrew empowers users of
all technical levels to visualize the data and perform one-click data
transformations, with no coding required.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25>


=head1 METHODS

=head2 BatchDeleteRecipeVersion

=over

=item Name => Str

=item RecipeVersions => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::BatchDeleteRecipeVersion>

Returns: a L<Paws::GlueDataBrew::BatchDeleteRecipeVersionResponse> instance

Deletes one or more versions of a recipe at a time.

The entire request will be rejected if:

=over

=item *

The recipe does not exist.

=item *

There is an invalid version identifier in the list of versions.

=item *

The version list is empty.

=item *

The version list size exceeds 50.

=item *

The version list contains duplicate entries.

=back

The request will complete successfully, but with partial failures, if:

=over

=item *

A version does not exist.

=item *

A version is being used by a job.

=item *

You specify C<LATEST_WORKING>, but it's being used by a project.

=item *

The version fails to be deleted.

=back

The C<LATEST_WORKING> version will only be deleted if the recipe has no
other versions. If you try to delete C<LATEST_WORKING> while other
versions exist (or if they can't be deleted), then C<LATEST_WORKING>
will be listed as partial failure in the response.


=head2 CreateDataset

=over

=item Input => L<Paws::GlueDataBrew::Input>

=item Name => Str

=item [Format => Str]

=item [FormatOptions => L<Paws::GlueDataBrew::FormatOptions>]

=item [PathOptions => L<Paws::GlueDataBrew::PathOptions>]

=item [Tags => L<Paws::GlueDataBrew::TagMap>]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::CreateDataset>

Returns: a L<Paws::GlueDataBrew::CreateDatasetResponse> instance

Creates a new DataBrew dataset.


=head2 CreateProfileJob

=over

=item DatasetName => Str

=item Name => Str

=item OutputLocation => L<Paws::GlueDataBrew::S3Location>

=item RoleArn => Str

=item [EncryptionKeyArn => Str]

=item [EncryptionMode => Str]

=item [JobSample => L<Paws::GlueDataBrew::JobSample>]

=item [LogSubscription => Str]

=item [MaxCapacity => Int]

=item [MaxRetries => Int]

=item [Tags => L<Paws::GlueDataBrew::TagMap>]

=item [Timeout => Int]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::CreateProfileJob>

Returns: a L<Paws::GlueDataBrew::CreateProfileJobResponse> instance

Creates a new job to analyze a dataset and create its data profile.


=head2 CreateProject

=over

=item DatasetName => Str

=item Name => Str

=item RecipeName => Str

=item RoleArn => Str

=item [Sample => L<Paws::GlueDataBrew::Sample>]

=item [Tags => L<Paws::GlueDataBrew::TagMap>]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::CreateProject>

Returns: a L<Paws::GlueDataBrew::CreateProjectResponse> instance

Creates a new DataBrew project.


=head2 CreateRecipe

=over

=item Name => Str

=item Steps => ArrayRef[L<Paws::GlueDataBrew::RecipeStep>]

=item [Description => Str]

=item [Tags => L<Paws::GlueDataBrew::TagMap>]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::CreateRecipe>

Returns: a L<Paws::GlueDataBrew::CreateRecipeResponse> instance

Creates a new DataBrew recipe.


=head2 CreateRecipeJob

=over

=item Name => Str

=item RoleArn => Str

=item [DataCatalogOutputs => ArrayRef[L<Paws::GlueDataBrew::DataCatalogOutput>]]

=item [DatasetName => Str]

=item [EncryptionKeyArn => Str]

=item [EncryptionMode => Str]

=item [LogSubscription => Str]

=item [MaxCapacity => Int]

=item [MaxRetries => Int]

=item [Outputs => ArrayRef[L<Paws::GlueDataBrew::Output>]]

=item [ProjectName => Str]

=item [RecipeReference => L<Paws::GlueDataBrew::RecipeReference>]

=item [Tags => L<Paws::GlueDataBrew::TagMap>]

=item [Timeout => Int]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::CreateRecipeJob>

Returns: a L<Paws::GlueDataBrew::CreateRecipeJobResponse> instance

Creates a new job to transform input data, using steps defined in an
existing Glue DataBrew recipe


=head2 CreateSchedule

=over

=item CronExpression => Str

=item Name => Str

=item [JobNames => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::GlueDataBrew::TagMap>]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::CreateSchedule>

Returns: a L<Paws::GlueDataBrew::CreateScheduleResponse> instance

Creates a new schedule for one or more DataBrew jobs. Jobs can be run
at a specific date and time, or at regular intervals.


=head2 DeleteDataset

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::DeleteDataset>

Returns: a L<Paws::GlueDataBrew::DeleteDatasetResponse> instance

Deletes a dataset from DataBrew.


=head2 DeleteJob

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::DeleteJob>

Returns: a L<Paws::GlueDataBrew::DeleteJobResponse> instance

Deletes the specified DataBrew job.


=head2 DeleteProject

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::DeleteProject>

Returns: a L<Paws::GlueDataBrew::DeleteProjectResponse> instance

Deletes an existing DataBrew project.


=head2 DeleteRecipeVersion

=over

=item Name => Str

=item RecipeVersion => Str


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::DeleteRecipeVersion>

Returns: a L<Paws::GlueDataBrew::DeleteRecipeVersionResponse> instance

Deletes a single version of a DataBrew recipe.


=head2 DeleteSchedule

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::DeleteSchedule>

Returns: a L<Paws::GlueDataBrew::DeleteScheduleResponse> instance

Deletes the specified DataBrew schedule.


=head2 DescribeDataset

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::DescribeDataset>

Returns: a L<Paws::GlueDataBrew::DescribeDatasetResponse> instance

Returns the definition of a specific DataBrew dataset.


=head2 DescribeJob

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::DescribeJob>

Returns: a L<Paws::GlueDataBrew::DescribeJobResponse> instance

Returns the definition of a specific DataBrew job.


=head2 DescribeJobRun

=over

=item Name => Str

=item RunId => Str


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::DescribeJobRun>

Returns: a L<Paws::GlueDataBrew::DescribeJobRunResponse> instance

Represents one run of a DataBrew job.


=head2 DescribeProject

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::DescribeProject>

Returns: a L<Paws::GlueDataBrew::DescribeProjectResponse> instance

Returns the definition of a specific DataBrew project.


=head2 DescribeRecipe

=over

=item Name => Str

=item [RecipeVersion => Str]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::DescribeRecipe>

Returns: a L<Paws::GlueDataBrew::DescribeRecipeResponse> instance

Returns the definition of a specific DataBrew recipe corresponding to a
particular version.


=head2 DescribeSchedule

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::DescribeSchedule>

Returns: a L<Paws::GlueDataBrew::DescribeScheduleResponse> instance

Returns the definition of a specific DataBrew schedule.


=head2 ListDatasets

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::ListDatasets>

Returns: a L<Paws::GlueDataBrew::ListDatasetsResponse> instance

Lists all of the DataBrew datasets.


=head2 ListJobRuns

=over

=item Name => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::ListJobRuns>

Returns: a L<Paws::GlueDataBrew::ListJobRunsResponse> instance

Lists all of the previous runs of a particular DataBrew job.


=head2 ListJobs

=over

=item [DatasetName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProjectName => Str]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::ListJobs>

Returns: a L<Paws::GlueDataBrew::ListJobsResponse> instance

Lists all of the DataBrew jobs that are defined.


=head2 ListProjects

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::ListProjects>

Returns: a L<Paws::GlueDataBrew::ListProjectsResponse> instance

Lists all of the DataBrew projects that are defined.


=head2 ListRecipes

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RecipeVersion => Str]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::ListRecipes>

Returns: a L<Paws::GlueDataBrew::ListRecipesResponse> instance

Lists all of the DataBrew recipes that are defined.


=head2 ListRecipeVersions

=over

=item Name => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::ListRecipeVersions>

Returns: a L<Paws::GlueDataBrew::ListRecipeVersionsResponse> instance

Lists the versions of a particular DataBrew recipe, except for
C<LATEST_WORKING>.


=head2 ListSchedules

=over

=item [JobName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::ListSchedules>

Returns: a L<Paws::GlueDataBrew::ListSchedulesResponse> instance

Lists the DataBrew schedules that are defined.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::ListTagsForResource>

Returns: a L<Paws::GlueDataBrew::ListTagsForResourceResponse> instance

Lists all the tags for a DataBrew resource.


=head2 PublishRecipe

=over

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::PublishRecipe>

Returns: a L<Paws::GlueDataBrew::PublishRecipeResponse> instance

Publishes a new version of a DataBrew recipe.


=head2 SendProjectSessionAction

=over

=item Name => Str

=item [ClientSessionId => Str]

=item [Preview => Bool]

=item [RecipeStep => L<Paws::GlueDataBrew::RecipeStep>]

=item [StepIndex => Int]

=item [ViewFrame => L<Paws::GlueDataBrew::ViewFrame>]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::SendProjectSessionAction>

Returns: a L<Paws::GlueDataBrew::SendProjectSessionActionResponse> instance

Performs a recipe step within an interactive DataBrew session that's
currently open.


=head2 StartJobRun

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::StartJobRun>

Returns: a L<Paws::GlueDataBrew::StartJobRunResponse> instance

Runs a DataBrew job.


=head2 StartProjectSession

=over

=item Name => Str

=item [AssumeControl => Bool]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::StartProjectSession>

Returns: a L<Paws::GlueDataBrew::StartProjectSessionResponse> instance

Creates an interactive session, enabling you to manipulate data in a
DataBrew project.


=head2 StopJobRun

=over

=item Name => Str

=item RunId => Str


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::StopJobRun>

Returns: a L<Paws::GlueDataBrew::StopJobRunResponse> instance

Stops a particular run of a job.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::GlueDataBrew::TagMap>


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::TagResource>

Returns: a L<Paws::GlueDataBrew::TagResourceResponse> instance

Adds metadata tags to a DataBrew resource, such as a dataset, project,
recipe, job, or schedule.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::UntagResource>

Returns: a L<Paws::GlueDataBrew::UntagResourceResponse> instance

Removes metadata tags from a DataBrew resource.


=head2 UpdateDataset

=over

=item Input => L<Paws::GlueDataBrew::Input>

=item Name => Str

=item [Format => Str]

=item [FormatOptions => L<Paws::GlueDataBrew::FormatOptions>]

=item [PathOptions => L<Paws::GlueDataBrew::PathOptions>]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::UpdateDataset>

Returns: a L<Paws::GlueDataBrew::UpdateDatasetResponse> instance

Modifies the definition of an existing DataBrew dataset.


=head2 UpdateProfileJob

=over

=item Name => Str

=item OutputLocation => L<Paws::GlueDataBrew::S3Location>

=item RoleArn => Str

=item [EncryptionKeyArn => Str]

=item [EncryptionMode => Str]

=item [JobSample => L<Paws::GlueDataBrew::JobSample>]

=item [LogSubscription => Str]

=item [MaxCapacity => Int]

=item [MaxRetries => Int]

=item [Timeout => Int]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::UpdateProfileJob>

Returns: a L<Paws::GlueDataBrew::UpdateProfileJobResponse> instance

Modifies the definition of an existing profile job.


=head2 UpdateProject

=over

=item Name => Str

=item RoleArn => Str

=item [Sample => L<Paws::GlueDataBrew::Sample>]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::UpdateProject>

Returns: a L<Paws::GlueDataBrew::UpdateProjectResponse> instance

Modifies the definition of an existing DataBrew project.


=head2 UpdateRecipe

=over

=item Name => Str

=item [Description => Str]

=item [Steps => ArrayRef[L<Paws::GlueDataBrew::RecipeStep>]]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::UpdateRecipe>

Returns: a L<Paws::GlueDataBrew::UpdateRecipeResponse> instance

Modifies the definition of the C<LATEST_WORKING> version of a DataBrew
recipe.


=head2 UpdateRecipeJob

=over

=item Name => Str

=item RoleArn => Str

=item [DataCatalogOutputs => ArrayRef[L<Paws::GlueDataBrew::DataCatalogOutput>]]

=item [EncryptionKeyArn => Str]

=item [EncryptionMode => Str]

=item [LogSubscription => Str]

=item [MaxCapacity => Int]

=item [MaxRetries => Int]

=item [Outputs => ArrayRef[L<Paws::GlueDataBrew::Output>]]

=item [Timeout => Int]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::UpdateRecipeJob>

Returns: a L<Paws::GlueDataBrew::UpdateRecipeJobResponse> instance

Modifies the definition of an existing DataBrew recipe job.


=head2 UpdateSchedule

=over

=item CronExpression => Str

=item Name => Str

=item [JobNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::GlueDataBrew::UpdateSchedule>

Returns: a L<Paws::GlueDataBrew::UpdateScheduleResponse> instance

Modifies the definition of an existing DataBrew schedule.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDatasets(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDatasets([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Datasets, passing the object as the first parameter, and the string 'Datasets' as the second parameter 

If not, it will return a a L<Paws::GlueDataBrew::ListDatasetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobRuns(sub { },Name => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllJobRuns(Name => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobRuns, passing the object as the first parameter, and the string 'JobRuns' as the second parameter 

If not, it will return a a L<Paws::GlueDataBrew::ListJobRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobs(sub { },[DatasetName => Str, MaxResults => Int, NextToken => Str, ProjectName => Str])

=head2 ListAllJobs([DatasetName => Str, MaxResults => Int, NextToken => Str, ProjectName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Jobs, passing the object as the first parameter, and the string 'Jobs' as the second parameter 

If not, it will return a a L<Paws::GlueDataBrew::ListJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjects(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllProjects([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Projects, passing the object as the first parameter, and the string 'Projects' as the second parameter 

If not, it will return a a L<Paws::GlueDataBrew::ListProjectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecipes(sub { },[MaxResults => Int, NextToken => Str, RecipeVersion => Str])

=head2 ListAllRecipes([MaxResults => Int, NextToken => Str, RecipeVersion => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Recipes, passing the object as the first parameter, and the string 'Recipes' as the second parameter 

If not, it will return a a L<Paws::GlueDataBrew::ListRecipesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecipeVersions(sub { },Name => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRecipeVersions(Name => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Recipes, passing the object as the first parameter, and the string 'Recipes' as the second parameter 

If not, it will return a a L<Paws::GlueDataBrew::ListRecipeVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchedules(sub { },[JobName => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllSchedules([JobName => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Schedules, passing the object as the first parameter, and the string 'Schedules' as the second parameter 

If not, it will return a a L<Paws::GlueDataBrew::ListSchedulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

