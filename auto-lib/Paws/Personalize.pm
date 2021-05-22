package Paws::Personalize;
  use Moose;
  sub service { 'personalize' }
  sub signing_name { 'personalize' }
  sub version { '2018-05-22' }
  sub target_prefix { 'AmazonPersonalize' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateBatchInferenceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateBatchInferenceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatasetExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateDatasetExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatasetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateDatasetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventTracker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateEventTracker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSolution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateSolution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSolutionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateSolutionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventTracker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteEventTracker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSolution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteSolution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAlgorithm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeAlgorithm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBatchInferenceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeBatchInferenceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDatasetExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeDatasetExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDatasetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeDatasetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventTracker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeEventTracker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFeatureTransformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeFeatureTransformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSolution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeSolution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSolutionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeSolutionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSolutionMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::GetSolutionMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBatchInferenceJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListBatchInferenceJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCampaigns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListCampaigns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListDatasetExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListDatasetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListDatasetImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventTrackers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListEventTrackers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecipes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListRecipes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSolutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListSolutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSolutionVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListSolutionVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopSolutionVersionCreation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::StopSolutionVersionCreation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::UpdateCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBatchInferenceJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBatchInferenceJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBatchInferenceJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->batchInferenceJobs }, @{ $next_result->batchInferenceJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'batchInferenceJobs') foreach (@{ $result->batchInferenceJobs });
        $result = $self->ListBatchInferenceJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'batchInferenceJobs') foreach (@{ $result->batchInferenceJobs });
    }

    return undef
  }
  sub ListAllCampaigns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCampaigns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCampaigns(@_, nextToken => $next_result->nextToken);
        push @{ $result->campaigns }, @{ $next_result->campaigns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'campaigns') foreach (@{ $result->campaigns });
        $result = $self->ListCampaigns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'campaigns') foreach (@{ $result->campaigns });
    }

    return undef
  }
  sub ListAllDatasetExportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasetExportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDatasetExportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->datasetExportJobs }, @{ $next_result->datasetExportJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'datasetExportJobs') foreach (@{ $result->datasetExportJobs });
        $result = $self->ListDatasetExportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'datasetExportJobs') foreach (@{ $result->datasetExportJobs });
    }

    return undef
  }
  sub ListAllDatasetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDatasetGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->datasetGroups }, @{ $next_result->datasetGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'datasetGroups') foreach (@{ $result->datasetGroups });
        $result = $self->ListDatasetGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'datasetGroups') foreach (@{ $result->datasetGroups });
    }

    return undef
  }
  sub ListAllDatasetImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasetImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDatasetImportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->datasetImportJobs }, @{ $next_result->datasetImportJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'datasetImportJobs') foreach (@{ $result->datasetImportJobs });
        $result = $self->ListDatasetImportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'datasetImportJobs') foreach (@{ $result->datasetImportJobs });
    }

    return undef
  }
  sub ListAllDatasets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDatasets(@_, nextToken => $next_result->nextToken);
        push @{ $result->datasets }, @{ $next_result->datasets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'datasets') foreach (@{ $result->datasets });
        $result = $self->ListDatasets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'datasets') foreach (@{ $result->datasets });
    }

    return undef
  }
  sub ListAllEventTrackers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventTrackers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEventTrackers(@_, nextToken => $next_result->nextToken);
        push @{ $result->eventTrackers }, @{ $next_result->eventTrackers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'eventTrackers') foreach (@{ $result->eventTrackers });
        $result = $self->ListEventTrackers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'eventTrackers') foreach (@{ $result->eventTrackers });
    }

    return undef
  }
  sub ListAllFilters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFilters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFilters(@_, nextToken => $next_result->nextToken);
        push @{ $result->Filters }, @{ $next_result->Filters };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'Filters') foreach (@{ $result->Filters });
        $result = $self->ListFilters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'Filters') foreach (@{ $result->Filters });
    }

    return undef
  }
  sub ListAllRecipes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecipes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRecipes(@_, nextToken => $next_result->nextToken);
        push @{ $result->recipes }, @{ $next_result->recipes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'recipes') foreach (@{ $result->recipes });
        $result = $self->ListRecipes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'recipes') foreach (@{ $result->recipes });
    }

    return undef
  }
  sub ListAllSchemas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchemas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSchemas(@_, nextToken => $next_result->nextToken);
        push @{ $result->schemas }, @{ $next_result->schemas };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'schemas') foreach (@{ $result->schemas });
        $result = $self->ListSchemas(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'schemas') foreach (@{ $result->schemas });
    }

    return undef
  }
  sub ListAllSolutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSolutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSolutions(@_, nextToken => $next_result->nextToken);
        push @{ $result->solutions }, @{ $next_result->solutions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'solutions') foreach (@{ $result->solutions });
        $result = $self->ListSolutions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'solutions') foreach (@{ $result->solutions });
    }

    return undef
  }
  sub ListAllSolutionVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSolutionVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSolutionVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->solutionVersions }, @{ $next_result->solutionVersions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'solutionVersions') foreach (@{ $result->solutionVersions });
        $result = $self->ListSolutionVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'solutionVersions') foreach (@{ $result->solutionVersions });
    }

    return undef
  }


  sub operations { qw/CreateBatchInferenceJob CreateCampaign CreateDataset CreateDatasetExportJob CreateDatasetGroup CreateDatasetImportJob CreateEventTracker CreateFilter CreateSchema CreateSolution CreateSolutionVersion DeleteCampaign DeleteDataset DeleteDatasetGroup DeleteEventTracker DeleteFilter DeleteSchema DeleteSolution DescribeAlgorithm DescribeBatchInferenceJob DescribeCampaign DescribeDataset DescribeDatasetExportJob DescribeDatasetGroup DescribeDatasetImportJob DescribeEventTracker DescribeFeatureTransformation DescribeFilter DescribeRecipe DescribeSchema DescribeSolution DescribeSolutionVersion GetSolutionMetrics ListBatchInferenceJobs ListCampaigns ListDatasetExportJobs ListDatasetGroups ListDatasetImportJobs ListDatasets ListEventTrackers ListFilters ListRecipes ListSchemas ListSolutions ListSolutionVersions StopSolutionVersionCreation UpdateCampaign / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize - Perl Interface to AWS Amazon Personalize

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Personalize');
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

Amazon Personalize is a machine learning service that makes it easy to
add individualized recommendations to customers.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22>


=head1 METHODS

=head2 CreateBatchInferenceJob

=over

=item JobInput => L<Paws::Personalize::BatchInferenceJobInput>

=item JobName => Str

=item JobOutput => L<Paws::Personalize::BatchInferenceJobOutput>

=item RoleArn => Str

=item SolutionVersionArn => Str

=item [BatchInferenceJobConfig => L<Paws::Personalize::BatchInferenceJobConfig>]

=item [FilterArn => Str]

=item [NumResults => Int]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateBatchInferenceJob>

Returns: a L<Paws::Personalize::CreateBatchInferenceJobResponse> instance

Creates a batch inference job. The operation can handle up to 50
million records and the input file must be in JSON format. For more
information, see recommendations-batch.


=head2 CreateCampaign

=over

=item MinProvisionedTPS => Int

=item Name => Str

=item SolutionVersionArn => Str

=item [CampaignConfig => L<Paws::Personalize::CampaignConfig>]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateCampaign>

Returns: a L<Paws::Personalize::CreateCampaignResponse> instance

Creates a campaign by deploying a solution version. When a client calls
the GetRecommendations
(https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
and GetPersonalizedRanking
(https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetPersonalizedRanking.html)
APIs, a campaign is specified in the request.

B<Minimum Provisioned TPS and Auto-Scaling>

A transaction is a single C<GetRecommendations> or
C<GetPersonalizedRanking> call. Transactions per second (TPS) is the
throughput and unit of billing for Amazon Personalize. The minimum
provisioned TPS (C<minProvisionedTPS>) specifies the baseline
throughput provisioned by Amazon Personalize, and thus, the minimum
billing charge.

If your TPS increases beyond C<minProvisionedTPS>, Amazon Personalize
auto-scales the provisioned capacity up and down, but never below
C<minProvisionedTPS>. There's a short time delay while the capacity is
increased that might cause loss of transactions.

The actual TPS used is calculated as the average requests/second within
a 5-minute window. You pay for maximum of either the minimum
provisioned TPS or the actual TPS. We recommend starting with a low
C<minProvisionedTPS>, track your usage using Amazon CloudWatch metrics,
and then increase the C<minProvisionedTPS> as necessary.

B<Status>

A campaign can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back

To get the campaign status, call DescribeCampaign.

Wait until the C<status> of the campaign is C<ACTIVE> before asking the
campaign for recommendations.

B<Related APIs>

=over

=item *

ListCampaigns

=item *

DescribeCampaign

=item *

UpdateCampaign

=item *

DeleteCampaign

=back



=head2 CreateDataset

=over

=item DatasetGroupArn => Str

=item DatasetType => Str

=item Name => Str

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::CreateDataset>

Returns: a L<Paws::Personalize::CreateDatasetResponse> instance

Creates an empty dataset and adds it to the specified dataset group.
Use CreateDatasetImportJob to import your training data to a dataset.

There are three types of datasets:

=over

=item *

Interactions

=item *

Items

=item *

Users

=back

Each dataset type has an associated schema with required field types.
Only the C<Interactions> dataset is required in order to train a model
(also referred to as creating a solution).

A dataset can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back

To get the status of the dataset, call DescribeDataset.

B<Related APIs>

=over

=item *

CreateDatasetGroup

=item *

ListDatasets

=item *

DescribeDataset

=item *

DeleteDataset

=back



=head2 CreateDatasetExportJob

=over

=item DatasetArn => Str

=item JobName => Str

=item JobOutput => L<Paws::Personalize::DatasetExportJobOutput>

=item RoleArn => Str

=item [IngestionMode => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateDatasetExportJob>

Returns: a L<Paws::Personalize::CreateDatasetExportJobResponse> instance

Creates a job that exports data from your dataset to an Amazon S3
bucket. To allow Amazon Personalize to export the training data, you
must specify an service-linked AWS Identity and Access Management (IAM)
role that gives Amazon Personalize C<PutObject> permissions for your
Amazon S3 bucket. For information, see Exporting a dataset
(https://docs.aws.amazon.com/personalize/latest/dg/export-data.html) in
the Amazon Personalize developer guide.

B<Status>

A dataset export job can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=back

To get the status of the export job, call DescribeDatasetExportJob, and
specify the Amazon Resource Name (ARN) of the dataset export job. The
dataset export is complete when the status shows as ACTIVE. If the
status shows as CREATE FAILED, the response includes a C<failureReason>
key, which describes why the job failed.


=head2 CreateDatasetGroup

=over

=item Name => Str

=item [KmsKeyArn => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateDatasetGroup>

Returns: a L<Paws::Personalize::CreateDatasetGroupResponse> instance

Creates an empty dataset group. A dataset group contains related
datasets that supply data for training a model. A dataset group can
contain at most three datasets, one for each type of dataset:

=over

=item *

Interactions

=item *

Items

=item *

Users

=back

To train a model (create a solution), a dataset group that contains an
C<Interactions> dataset is required. Call CreateDataset to add a
dataset to the group.

A dataset group can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING

=back

To get the status of the dataset group, call DescribeDatasetGroup. If
the status shows as CREATE FAILED, the response includes a
C<failureReason> key, which describes why the creation failed.

You must wait until the C<status> of the dataset group is C<ACTIVE>
before adding a dataset to the group.

You can specify an AWS Key Management Service (KMS) key to encrypt the
datasets in the group. If you specify a KMS key, you must also include
an AWS Identity and Access Management (IAM) role that has permission to
access the key.

B<APIs that require a dataset group ARN in the request>

=over

=item *

CreateDataset

=item *

CreateEventTracker

=item *

CreateSolution

=back

B<Related APIs>

=over

=item *

ListDatasetGroups

=item *

DescribeDatasetGroup

=item *

DeleteDatasetGroup

=back



=head2 CreateDatasetImportJob

=over

=item DatasetArn => Str

=item DataSource => L<Paws::Personalize::DataSource>

=item JobName => Str

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::CreateDatasetImportJob>

Returns: a L<Paws::Personalize::CreateDatasetImportJobResponse> instance

Creates a job that imports training data from your data source (an
Amazon S3 bucket) to an Amazon Personalize dataset. To allow Amazon
Personalize to import the training data, you must specify an AWS
Identity and Access Management (IAM) service role that has permission
to read from the data source, as Amazon Personalize makes a copy of
your data and processes it in an internal AWS system. For information
on granting access to your Amazon S3 bucket, see Giving Amazon
Personalize Access to Amazon S3 Resources
(https://docs.aws.amazon.com/personalize/latest/dg/granting-personalize-s3-access.html).

The dataset import job replaces any existing data in the dataset that
you imported in bulk.

B<Status>

A dataset import job can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=back

To get the status of the import job, call DescribeDatasetImportJob,
providing the Amazon Resource Name (ARN) of the dataset import job. The
dataset import is complete when the status shows as ACTIVE. If the
status shows as CREATE FAILED, the response includes a C<failureReason>
key, which describes why the job failed.

Importing takes time. You must wait until the status shows as ACTIVE
before training a model using the dataset.

B<Related APIs>

=over

=item *

ListDatasetImportJobs

=item *

DescribeDatasetImportJob

=back



=head2 CreateEventTracker

=over

=item DatasetGroupArn => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Personalize::CreateEventTracker>

Returns: a L<Paws::Personalize::CreateEventTrackerResponse> instance

Creates an event tracker that you use when adding event data to a
specified dataset group using the PutEvents
(https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html)
API.

Only one event tracker can be associated with a dataset group. You will
get an error if you call C<CreateEventTracker> using the same dataset
group as an existing event tracker.

When you create an event tracker, the response includes a tracking ID,
which you pass as a parameter when you use the PutEvents
(https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html)
operation. Amazon Personalize then appends the event data to the
Interactions dataset of the dataset group you specify in your event
tracker.

The event tracker can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back

To get the status of the event tracker, call DescribeEventTracker.

The event tracker must be in the ACTIVE state before using the tracking
ID.

B<Related APIs>

=over

=item *

ListEventTrackers

=item *

DescribeEventTracker

=item *

DeleteEventTracker

=back



=head2 CreateFilter

=over

=item DatasetGroupArn => Str

=item FilterExpression => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Personalize::CreateFilter>

Returns: a L<Paws::Personalize::CreateFilterResponse> instance

Creates a recommendation filter. For more information, see filter.


=head2 CreateSchema

=over

=item Name => Str

=item Schema => Str


=back

Each argument is described in detail in: L<Paws::Personalize::CreateSchema>

Returns: a L<Paws::Personalize::CreateSchemaResponse> instance

Creates an Amazon Personalize schema from the specified schema string.
The schema you create must be in Avro JSON format.

Amazon Personalize recognizes three schema variants. Each schema is
associated with a dataset type and has a set of required field and
keywords. You specify a schema when you call CreateDataset.

B<Related APIs>

=over

=item *

ListSchemas

=item *

DescribeSchema

=item *

DeleteSchema

=back



=head2 CreateSolution

=over

=item DatasetGroupArn => Str

=item Name => Str

=item [EventType => Str]

=item [PerformAutoML => Bool]

=item [PerformHPO => Bool]

=item [RecipeArn => Str]

=item [SolutionConfig => L<Paws::Personalize::SolutionConfig>]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateSolution>

Returns: a L<Paws::Personalize::CreateSolutionResponse> instance

Creates the configuration for training a model. A trained model is
known as a solution. After the configuration is created, you train the
model (create a solution) by calling the CreateSolutionVersion
operation. Every time you call C<CreateSolutionVersion>, a new version
of the solution is created.

After creating a solution version, you check its accuracy by calling
GetSolutionMetrics. When you are satisfied with the version, you deploy
it using CreateCampaign. The campaign provides recommendations to a
client through the GetRecommendations
(https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
API.

To train a model, Amazon Personalize requires training data and a
recipe. The training data comes from the dataset group that you provide
in the request. A recipe specifies the training algorithm and a feature
transformation. You can specify one of the predefined recipes provided
by Amazon Personalize. Alternatively, you can specify C<performAutoML>
and Amazon Personalize will analyze your data and select the optimum
USER_PERSONALIZATION recipe for you.

Amazon Personalize doesn't support configuring the C<hpoObjective> for
solution hyperparameter optimization at this time.

B<Status>

A solution can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back

To get the status of the solution, call DescribeSolution. Wait until
the status shows as ACTIVE before calling C<CreateSolutionVersion>.

B<Related APIs>

=over

=item *

ListSolutions

=item *

CreateSolutionVersion

=item *

DescribeSolution

=item *

DeleteSolution

=back

=over

=item *

ListSolutionVersions

=item *

DescribeSolutionVersion

=back



=head2 CreateSolutionVersion

=over

=item SolutionArn => Str

=item [TrainingMode => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateSolutionVersion>

Returns: a L<Paws::Personalize::CreateSolutionVersionResponse> instance

Trains or retrains an active solution. A solution is created using the
CreateSolution operation and must be in the ACTIVE state before calling
C<CreateSolutionVersion>. A new version of the solution is created
every time you call this operation.

B<Status>

A solution version can be in one of the following states:

=over

=item *

CREATE PENDING

=item *

CREATE IN_PROGRESS

=item *

ACTIVE

=item *

CREATE FAILED

=item *

CREATE STOPPING

=item *

CREATE STOPPED

=back

To get the status of the version, call DescribeSolutionVersion. Wait
until the status shows as ACTIVE before calling C<CreateCampaign>.

If the status shows as CREATE FAILED, the response includes a
C<failureReason> key, which describes why the job failed.

B<Related APIs>

=over

=item *

ListSolutionVersions

=item *

DescribeSolutionVersion

=back

=over

=item *

ListSolutions

=item *

CreateSolution

=item *

DescribeSolution

=item *

DeleteSolution

=back



=head2 DeleteCampaign

=over

=item CampaignArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteCampaign>

Returns: nothing

Removes a campaign by deleting the solution deployment. The solution
that the campaign is based on is not deleted and can be redeployed when
needed. A deleted campaign can no longer be specified in a
GetRecommendations
(https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
request. For more information on campaigns, see CreateCampaign.


=head2 DeleteDataset

=over

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteDataset>

Returns: nothing

Deletes a dataset. You can't delete a dataset if an associated
C<DatasetImportJob> or C<SolutionVersion> is in the CREATE PENDING or
IN PROGRESS state. For more information on datasets, see CreateDataset.


=head2 DeleteDatasetGroup

=over

=item DatasetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteDatasetGroup>

Returns: nothing

Deletes a dataset group. Before you delete a dataset group, you must
delete the following:

=over

=item *

All associated event trackers.

=item *

All associated solutions.

=item *

All datasets in the dataset group.

=back



=head2 DeleteEventTracker

=over

=item EventTrackerArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteEventTracker>

Returns: nothing

Deletes the event tracker. Does not delete the event-interactions
dataset from the associated dataset group. For more information on
event trackers, see CreateEventTracker.


=head2 DeleteFilter

=over

=item FilterArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteFilter>

Returns: nothing

Deletes a filter.


=head2 DeleteSchema

=over

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteSchema>

Returns: nothing

Deletes a schema. Before deleting a schema, you must delete all
datasets referencing the schema. For more information on schemas, see
CreateSchema.


=head2 DeleteSolution

=over

=item SolutionArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteSolution>

Returns: nothing

Deletes all versions of a solution and the C<Solution> object itself.
Before deleting a solution, you must delete all campaigns based on the
solution. To determine what campaigns are using the solution, call
ListCampaigns and supply the Amazon Resource Name (ARN) of the
solution. You can't delete a solution if an associated
C<SolutionVersion> is in the CREATE PENDING or IN PROGRESS state. For
more information on solutions, see CreateSolution.


=head2 DescribeAlgorithm

=over

=item AlgorithmArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeAlgorithm>

Returns: a L<Paws::Personalize::DescribeAlgorithmResponse> instance

Describes the given algorithm.


=head2 DescribeBatchInferenceJob

=over

=item BatchInferenceJobArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeBatchInferenceJob>

Returns: a L<Paws::Personalize::DescribeBatchInferenceJobResponse> instance

Gets the properties of a batch inference job including name, Amazon
Resource Name (ARN), status, input and output configurations, and the
ARN of the solution version used to generate the recommendations.


=head2 DescribeCampaign

=over

=item CampaignArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeCampaign>

Returns: a L<Paws::Personalize::DescribeCampaignResponse> instance

Describes the given campaign, including its status.

A campaign can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back

When the C<status> is C<CREATE FAILED>, the response includes the
C<failureReason> key, which describes why.

For more information on campaigns, see CreateCampaign.


=head2 DescribeDataset

=over

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeDataset>

Returns: a L<Paws::Personalize::DescribeDatasetResponse> instance

Describes the given dataset. For more information on datasets, see
CreateDataset.


=head2 DescribeDatasetExportJob

=over

=item DatasetExportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeDatasetExportJob>

Returns: a L<Paws::Personalize::DescribeDatasetExportJobResponse> instance

Describes the dataset export job created by CreateDatasetExportJob,
including the export job status.


=head2 DescribeDatasetGroup

=over

=item DatasetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeDatasetGroup>

Returns: a L<Paws::Personalize::DescribeDatasetGroupResponse> instance

Describes the given dataset group. For more information on dataset
groups, see CreateDatasetGroup.


=head2 DescribeDatasetImportJob

=over

=item DatasetImportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeDatasetImportJob>

Returns: a L<Paws::Personalize::DescribeDatasetImportJobResponse> instance

Describes the dataset import job created by CreateDatasetImportJob,
including the import job status.


=head2 DescribeEventTracker

=over

=item EventTrackerArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeEventTracker>

Returns: a L<Paws::Personalize::DescribeEventTrackerResponse> instance

Describes an event tracker. The response includes the C<trackingId> and
C<status> of the event tracker. For more information on event trackers,
see CreateEventTracker.


=head2 DescribeFeatureTransformation

=over

=item FeatureTransformationArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeFeatureTransformation>

Returns: a L<Paws::Personalize::DescribeFeatureTransformationResponse> instance

Describes the given feature transformation.


=head2 DescribeFilter

=over

=item FilterArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeFilter>

Returns: a L<Paws::Personalize::DescribeFilterResponse> instance

Describes a filter's properties.


=head2 DescribeRecipe

=over

=item RecipeArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeRecipe>

Returns: a L<Paws::Personalize::DescribeRecipeResponse> instance

Describes a recipe.

A recipe contains three items:

=over

=item *

An algorithm that trains a model.

=item *

Hyperparameters that govern the training.

=item *

Feature transformation information for modifying the input data before
training.

=back

Amazon Personalize provides a set of predefined recipes. You specify a
recipe when you create a solution with the CreateSolution API.
C<CreateSolution> trains a model by using the algorithm in the
specified recipe and a training dataset. The solution, when deployed as
a campaign, can provide recommendations using the GetRecommendations
(https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
API.


=head2 DescribeSchema

=over

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeSchema>

Returns: a L<Paws::Personalize::DescribeSchemaResponse> instance

Describes a schema. For more information on schemas, see CreateSchema.


=head2 DescribeSolution

=over

=item SolutionArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeSolution>

Returns: a L<Paws::Personalize::DescribeSolutionResponse> instance

Describes a solution. For more information on solutions, see
CreateSolution.


=head2 DescribeSolutionVersion

=over

=item SolutionVersionArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeSolutionVersion>

Returns: a L<Paws::Personalize::DescribeSolutionVersionResponse> instance

Describes a specific version of a solution. For more information on
solutions, see CreateSolution.


=head2 GetSolutionMetrics

=over

=item SolutionVersionArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::GetSolutionMetrics>

Returns: a L<Paws::Personalize::GetSolutionMetricsResponse> instance

Gets the metrics for the specified solution version.


=head2 ListBatchInferenceJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SolutionVersionArn => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListBatchInferenceJobs>

Returns: a L<Paws::Personalize::ListBatchInferenceJobsResponse> instance

Gets a list of the batch inference jobs that have been performed off of
a solution version.


=head2 ListCampaigns

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SolutionArn => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListCampaigns>

Returns: a L<Paws::Personalize::ListCampaignsResponse> instance

Returns a list of campaigns that use the given solution. When a
solution is not specified, all the campaigns associated with the
account are listed. The response provides the properties for each
campaign, including the Amazon Resource Name (ARN). For more
information on campaigns, see CreateCampaign.


=head2 ListDatasetExportJobs

=over

=item [DatasetArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListDatasetExportJobs>

Returns: a L<Paws::Personalize::ListDatasetExportJobsResponse> instance

Returns a list of dataset export jobs that use the given dataset. When
a dataset is not specified, all the dataset export jobs associated with
the account are listed. The response provides the properties for each
dataset export job, including the Amazon Resource Name (ARN). For more
information on dataset export jobs, see CreateDatasetExportJob. For
more information on datasets, see CreateDataset.


=head2 ListDatasetGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListDatasetGroups>

Returns: a L<Paws::Personalize::ListDatasetGroupsResponse> instance

Returns a list of dataset groups. The response provides the properties
for each dataset group, including the Amazon Resource Name (ARN). For
more information on dataset groups, see CreateDatasetGroup.


=head2 ListDatasetImportJobs

=over

=item [DatasetArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListDatasetImportJobs>

Returns: a L<Paws::Personalize::ListDatasetImportJobsResponse> instance

Returns a list of dataset import jobs that use the given dataset. When
a dataset is not specified, all the dataset import jobs associated with
the account are listed. The response provides the properties for each
dataset import job, including the Amazon Resource Name (ARN). For more
information on dataset import jobs, see CreateDatasetImportJob. For
more information on datasets, see CreateDataset.


=head2 ListDatasets

=over

=item [DatasetGroupArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListDatasets>

Returns: a L<Paws::Personalize::ListDatasetsResponse> instance

Returns the list of datasets contained in the given dataset group. The
response provides the properties for each dataset, including the Amazon
Resource Name (ARN). For more information on datasets, see
CreateDataset.


=head2 ListEventTrackers

=over

=item [DatasetGroupArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListEventTrackers>

Returns: a L<Paws::Personalize::ListEventTrackersResponse> instance

Returns the list of event trackers associated with the account. The
response provides the properties for each event tracker, including the
Amazon Resource Name (ARN) and tracking ID. For more information on
event trackers, see CreateEventTracker.


=head2 ListFilters

=over

=item [DatasetGroupArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListFilters>

Returns: a L<Paws::Personalize::ListFiltersResponse> instance

Lists all filters that belong to a given dataset group.


=head2 ListRecipes

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RecipeProvider => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListRecipes>

Returns: a L<Paws::Personalize::ListRecipesResponse> instance

Returns a list of available recipes. The response provides the
properties for each recipe, including the recipe's Amazon Resource Name
(ARN).


=head2 ListSchemas

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListSchemas>

Returns: a L<Paws::Personalize::ListSchemasResponse> instance

Returns the list of schemas associated with the account. The response
provides the properties for each schema, including the Amazon Resource
Name (ARN). For more information on schemas, see CreateSchema.


=head2 ListSolutions

=over

=item [DatasetGroupArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListSolutions>

Returns: a L<Paws::Personalize::ListSolutionsResponse> instance

Returns a list of solutions that use the given dataset group. When a
dataset group is not specified, all the solutions associated with the
account are listed. The response provides the properties for each
solution, including the Amazon Resource Name (ARN). For more
information on solutions, see CreateSolution.


=head2 ListSolutionVersions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SolutionArn => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListSolutionVersions>

Returns: a L<Paws::Personalize::ListSolutionVersionsResponse> instance

Returns a list of solution versions for the given solution. When a
solution is not specified, all the solution versions associated with
the account are listed. The response provides the properties for each
solution version, including the Amazon Resource Name (ARN). For more
information on solutions, see CreateSolution.


=head2 StopSolutionVersionCreation

=over

=item SolutionVersionArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::StopSolutionVersionCreation>

Returns: nothing

Stops creating a solution version that is in a state of CREATE_PENDING
or CREATE IN_PROGRESS.

Depending on the current state of the solution version, the solution
version state changes as follows:

=over

=item *

CREATE_PENDING E<gt> CREATE_STOPPED

or

=item *

CREATE_IN_PROGRESS E<gt> CREATE_STOPPING E<gt> CREATE_STOPPED

=back

You are billed for all of the training completed up until you stop the
solution version creation. You cannot resume creating a solution
version once it has been stopped.


=head2 UpdateCampaign

=over

=item CampaignArn => Str

=item [CampaignConfig => L<Paws::Personalize::CampaignConfig>]

=item [MinProvisionedTPS => Int]

=item [SolutionVersionArn => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::UpdateCampaign>

Returns: a L<Paws::Personalize::UpdateCampaignResponse> instance

Updates a campaign by either deploying a new solution or changing the
value of the campaign's C<minProvisionedTPS> parameter.

To update a campaign, the campaign status must be ACTIVE or CREATE
FAILED. Check the campaign status using the DescribeCampaign API.

You must wait until the C<status> of the updated campaign is C<ACTIVE>
before asking the campaign for recommendations.

For more information on campaigns, see CreateCampaign.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBatchInferenceJobs(sub { },[MaxResults => Int, NextToken => Str, SolutionVersionArn => Str])

=head2 ListAllBatchInferenceJobs([MaxResults => Int, NextToken => Str, SolutionVersionArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - batchInferenceJobs, passing the object as the first parameter, and the string 'batchInferenceJobs' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListBatchInferenceJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCampaigns(sub { },[MaxResults => Int, NextToken => Str, SolutionArn => Str])

=head2 ListAllCampaigns([MaxResults => Int, NextToken => Str, SolutionArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - campaigns, passing the object as the first parameter, and the string 'campaigns' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListCampaignsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasetExportJobs(sub { },[DatasetArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllDatasetExportJobs([DatasetArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - datasetExportJobs, passing the object as the first parameter, and the string 'datasetExportJobs' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListDatasetExportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasetGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDatasetGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - datasetGroups, passing the object as the first parameter, and the string 'datasetGroups' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListDatasetGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasetImportJobs(sub { },[DatasetArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllDatasetImportJobs([DatasetArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - datasetImportJobs, passing the object as the first parameter, and the string 'datasetImportJobs' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListDatasetImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasets(sub { },[DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllDatasets([DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - datasets, passing the object as the first parameter, and the string 'datasets' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListDatasetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventTrackers(sub { },[DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllEventTrackers([DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - eventTrackers, passing the object as the first parameter, and the string 'eventTrackers' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListEventTrackersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFilters(sub { },[DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllFilters([DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Filters, passing the object as the first parameter, and the string 'Filters' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListFiltersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecipes(sub { },[MaxResults => Int, NextToken => Str, RecipeProvider => Str])

=head2 ListAllRecipes([MaxResults => Int, NextToken => Str, RecipeProvider => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - recipes, passing the object as the first parameter, and the string 'recipes' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListRecipesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchemas(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSchemas([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - schemas, passing the object as the first parameter, and the string 'schemas' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListSchemasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSolutions(sub { },[DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllSolutions([DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - solutions, passing the object as the first parameter, and the string 'solutions' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListSolutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSolutionVersions(sub { },[MaxResults => Int, NextToken => Str, SolutionArn => Str])

=head2 ListAllSolutionVersions([MaxResults => Int, NextToken => Str, SolutionArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - solutionVersions, passing the object as the first parameter, and the string 'solutionVersions' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListSolutionVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

