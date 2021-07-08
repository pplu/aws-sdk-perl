package Paws::DevOpsGuru;
  use Moose;
  sub service { 'devops-guru' }
  sub signing_name { 'devops-guru' }
  sub version { '2020-12-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AddNotificationChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::AddNotificationChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountHealth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::DescribeAccountHealth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountOverview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::DescribeAccountOverview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAnomaly {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::DescribeAnomaly', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::DescribeFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInsight {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::DescribeInsight', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResourceCollectionHealth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::DescribeResourceCollectionHealth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServiceIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::DescribeServiceIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCostEstimation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::GetCostEstimation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::GetResourceCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnomaliesForInsight {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::ListAnomaliesForInsight', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::ListEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInsights {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::ListInsights', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotificationChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::ListNotificationChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::ListRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::PutFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveNotificationChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::RemoveNotificationChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchInsights {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::SearchInsights', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCostEstimation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::StartCostEstimation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResourceCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::UpdateResourceCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DevOpsGuru::UpdateServiceIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllResourceCollectionHealth {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeResourceCollectionHealth(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeResourceCollectionHealth(@_, NextToken => $next_result->NextToken);
        push @{ $result->CloudFormation }, @{ $next_result->CloudFormation };
        push @{ $result->Service }, @{ $next_result->Service };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CloudFormation') foreach (@{ $result->CloudFormation });
        $callback->($_ => 'Service') foreach (@{ $result->Service });
        $result = $self->DescribeResourceCollectionHealth(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CloudFormation') foreach (@{ $result->CloudFormation });
      $callback->($_ => 'Service') foreach (@{ $result->Service });
    }

    return undef
  }
  sub GetAllCostEstimation {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCostEstimation(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetCostEstimation(@_, NextToken => $next_result->NextToken);
        push @{ $result->Costs }, @{ $next_result->Costs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Costs') foreach (@{ $result->Costs });
        $result = $self->GetCostEstimation(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Costs') foreach (@{ $result->Costs });
    }

    return undef
  }
  sub GetAllResourceCollection {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResourceCollection(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetResourceCollection(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceCollection->CloudFormation->StackNames }, @{ $next_result->ResourceCollection->CloudFormation->StackNames };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceCollection.CloudFormation.StackNames') foreach (@{ $result->ResourceCollection->CloudFormation->StackNames });
        $result = $self->GetResourceCollection(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceCollection.CloudFormation.StackNames') foreach (@{ $result->ResourceCollection->CloudFormation->StackNames });
    }

    return undef
  }
  sub ListAllAnomaliesForInsight {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAnomaliesForInsight(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAnomaliesForInsight(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReactiveAnomalies }, @{ $next_result->ReactiveAnomalies };
        push @{ $result->ProactiveAnomalies }, @{ $next_result->ProactiveAnomalies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReactiveAnomalies') foreach (@{ $result->ReactiveAnomalies });
        $callback->($_ => 'ProactiveAnomalies') foreach (@{ $result->ProactiveAnomalies });
        $result = $self->ListAnomaliesForInsight(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReactiveAnomalies') foreach (@{ $result->ReactiveAnomalies });
      $callback->($_ => 'ProactiveAnomalies') foreach (@{ $result->ProactiveAnomalies });
    }

    return undef
  }
  sub ListAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->ListEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }
  sub ListAllInsights {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInsights(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInsights(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProactiveInsights }, @{ $next_result->ProactiveInsights };
        push @{ $result->ReactiveInsights }, @{ $next_result->ReactiveInsights };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProactiveInsights') foreach (@{ $result->ProactiveInsights });
        $callback->($_ => 'ReactiveInsights') foreach (@{ $result->ReactiveInsights });
        $result = $self->ListInsights(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProactiveInsights') foreach (@{ $result->ProactiveInsights });
      $callback->($_ => 'ReactiveInsights') foreach (@{ $result->ReactiveInsights });
    }

    return undef
  }
  sub ListAllNotificationChannels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNotificationChannels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNotificationChannels(@_, NextToken => $next_result->NextToken);
        push @{ $result->Channels }, @{ $next_result->Channels };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Channels') foreach (@{ $result->Channels });
        $result = $self->ListNotificationChannels(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Channels') foreach (@{ $result->Channels });
    }

    return undef
  }
  sub ListAllRecommendations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecommendations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRecommendations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Recommendations }, @{ $next_result->Recommendations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Recommendations') foreach (@{ $result->Recommendations });
        $result = $self->ListRecommendations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Recommendations') foreach (@{ $result->Recommendations });
    }

    return undef
  }
  sub SearchAllInsights {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchInsights(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchInsights(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProactiveInsights }, @{ $next_result->ProactiveInsights };
        push @{ $result->ReactiveInsights }, @{ $next_result->ReactiveInsights };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProactiveInsights') foreach (@{ $result->ProactiveInsights });
        $callback->($_ => 'ReactiveInsights') foreach (@{ $result->ReactiveInsights });
        $result = $self->SearchInsights(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProactiveInsights') foreach (@{ $result->ProactiveInsights });
      $callback->($_ => 'ReactiveInsights') foreach (@{ $result->ReactiveInsights });
    }

    return undef
  }


  sub operations { qw/AddNotificationChannel DescribeAccountHealth DescribeAccountOverview DescribeAnomaly DescribeFeedback DescribeInsight DescribeResourceCollectionHealth DescribeServiceIntegration GetCostEstimation GetResourceCollection ListAnomaliesForInsight ListEvents ListInsights ListNotificationChannels ListRecommendations PutFeedback RemoveNotificationChannel SearchInsights StartCostEstimation UpdateResourceCollection UpdateServiceIntegration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru - Perl Interface to AWS Amazon DevOps Guru

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DevOpsGuru');
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

Amazon DevOps Guru is a fully managed service that helps you identify
anomalous behavior in business critical operational applications. You
specify the AWS resources that you want DevOps Guru to cover, then the
Amazon CloudWatch metrics and AWS CloudTrail events related to those
resources are analyzed. When anomalous behavior is detected, DevOps
Guru creates an I<insight> that includes recommendations, related
events, and related metrics that can help you improve your operational
applications. For more information, see What is Amazon DevOps Guru
(https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html).

You can specify 1 or 2 Amazon Simple Notification Service topics so you
are notified every time a new insight is created. You can also enable
DevOps Guru to generate an OpsItem in AWS Systems Manager for each
insight to help you manage and track your work addressing insights.

To learn about the DevOps Guru workflow, see How DevOps Guru works
(https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html#how-it-works).
To learn about DevOps Guru concepts, see Concepts in DevOps Guru
(https://docs.aws.amazon.com/devops-guru/latest/userguide/concepts.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01>


=head1 METHODS

=head2 AddNotificationChannel

=over

=item Config => L<Paws::DevOpsGuru::NotificationChannelConfig>


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::AddNotificationChannel>

Returns: a L<Paws::DevOpsGuru::AddNotificationChannelResponse> instance

Adds a notification channel to DevOps Guru. A notification channel is
used to notify you about important DevOps Guru events, such as when an
insight is generated.

If you use an Amazon SNS topic in another account, you must attach a
policy to it that grants DevOps Guru permission to it notifications.
DevOps Guru adds the required policy on your behalf to send
notifications using Amazon SNS in your account. For more information,
see Permissions for cross account Amazon SNS topics
(https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html).

If you use an Amazon SNS topic that is encrypted by an AWS Key
Management Service customer-managed key (CMK), then you must add
permissions to the CMK. For more information, see Permissions for AWS
KMSE<ndash>encrypted Amazon SNS topics
(https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html).


=head2 DescribeAccountHealth






Each argument is described in detail in: L<Paws::DevOpsGuru::DescribeAccountHealth>

Returns: a L<Paws::DevOpsGuru::DescribeAccountHealthResponse> instance

Returns the number of open reactive insights, the number of open
proactive insights, and the number of metrics analyzed in your AWS
account. Use these numbers to gauge the health of operations in your
AWS account.


=head2 DescribeAccountOverview

=over

=item FromTime => Str

=item [ToTime => Str]


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::DescribeAccountOverview>

Returns: a L<Paws::DevOpsGuru::DescribeAccountOverviewResponse> instance

For the time range passed in, returns the number of open reactive
insight that were created, the number of open proactive insights that
were created, and the Mean Time to Recover (MTTR) for all closed
reactive insights.


=head2 DescribeAnomaly

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::DescribeAnomaly>

Returns: a L<Paws::DevOpsGuru::DescribeAnomalyResponse> instance

Returns details about an anomaly that you specify using its ID.


=head2 DescribeFeedback

=over

=item [InsightId => Str]


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::DescribeFeedback>

Returns: a L<Paws::DevOpsGuru::DescribeFeedbackResponse> instance

Returns the most recent feedback submitted in the current AWS account
and Region.


=head2 DescribeInsight

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::DescribeInsight>

Returns: a L<Paws::DevOpsGuru::DescribeInsightResponse> instance

Returns details about an insight that you specify using its ID.


=head2 DescribeResourceCollectionHealth

=over

=item ResourceCollectionType => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::DescribeResourceCollectionHealth>

Returns: a L<Paws::DevOpsGuru::DescribeResourceCollectionHealthResponse> instance

Returns the number of open proactive insights, open reactive insights,
and the Mean Time to Recover (MTTR) for all closed insights in resource
collections in your account. You specify the type of AWS resources
collection. The one type of AWS resource collection supported is AWS
CloudFormation stacks. DevOps Guru can be configured to analyze only
the AWS resources that are defined in the stacks. You can specify up to
500 AWS CloudFormation stacks.


=head2 DescribeServiceIntegration






Each argument is described in detail in: L<Paws::DevOpsGuru::DescribeServiceIntegration>

Returns: a L<Paws::DevOpsGuru::DescribeServiceIntegrationResponse> instance

Returns the integration status of services that are integrated with
DevOps Guru. The one service that can be integrated with DevOps Guru is
AWS Systems Manager, which can be used to create an OpsItem for each
generated insight.


=head2 GetCostEstimation

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::GetCostEstimation>

Returns: a L<Paws::DevOpsGuru::GetCostEstimationResponse> instance

Returns an estimate of the monthly cost for DevOps Guru to analyze your
AWS resources. For more information, see Estimate your Amazon DevOps
Guru costs
(https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html)
and Amazon DevOps Guru pricing
(http://aws.amazon.com/devops-guru/pricing/).


=head2 GetResourceCollection

=over

=item ResourceCollectionType => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::GetResourceCollection>

Returns: a L<Paws::DevOpsGuru::GetResourceCollectionResponse> instance

Returns lists AWS resources that are of the specified resource
collection type. The one type of AWS resource collection supported is
AWS CloudFormation stacks. DevOps Guru can be configured to analyze
only the AWS resources that are defined in the stacks. You can specify
up to 500 AWS CloudFormation stacks.


=head2 ListAnomaliesForInsight

=over

=item InsightId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTimeRange => L<Paws::DevOpsGuru::StartTimeRange>]


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::ListAnomaliesForInsight>

Returns: a L<Paws::DevOpsGuru::ListAnomaliesForInsightResponse> instance

Returns a list of the anomalies that belong to an insight that you
specify using its ID.


=head2 ListEvents

=over

=item Filters => L<Paws::DevOpsGuru::ListEventsFilters>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::ListEvents>

Returns: a L<Paws::DevOpsGuru::ListEventsResponse> instance

Returns a list of the events emitted by the resources that are
evaluated by DevOps Guru. You can use filters to specify which events
are returned.


=head2 ListInsights

=over

=item StatusFilter => L<Paws::DevOpsGuru::ListInsightsStatusFilter>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::ListInsights>

Returns: a L<Paws::DevOpsGuru::ListInsightsResponse> instance

Returns a list of insights in your AWS account. You can specify which
insights are returned by their start time and status (C<ONGOING>,
C<CLOSED>, or C<ANY>).


=head2 ListNotificationChannels

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::ListNotificationChannels>

Returns: a L<Paws::DevOpsGuru::ListNotificationChannelsResponse> instance

Returns a list of notification channels configured for DevOps Guru.
Each notification channel is used to notify you when DevOps Guru
generates an insight that contains information about how to improve
your operations. The one supported notification channel is Amazon
Simple Notification Service (Amazon SNS).


=head2 ListRecommendations

=over

=item InsightId => Str

=item [Locale => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::ListRecommendations>

Returns: a L<Paws::DevOpsGuru::ListRecommendationsResponse> instance

Returns a list of a specified insight's recommendations. Each
recommendation includes a list of related metrics and a list of related
events.


=head2 PutFeedback

=over

=item [InsightFeedback => L<Paws::DevOpsGuru::InsightFeedback>]


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::PutFeedback>

Returns: a L<Paws::DevOpsGuru::PutFeedbackResponse> instance

Collects customer feedback about the specified insight.


=head2 RemoveNotificationChannel

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::RemoveNotificationChannel>

Returns: a L<Paws::DevOpsGuru::RemoveNotificationChannelResponse> instance

Removes a notification channel from DevOps Guru. A notification channel
is used to notify you when DevOps Guru generates an insight that
contains information about how to improve your operations.


=head2 SearchInsights

=over

=item StartTimeRange => L<Paws::DevOpsGuru::StartTimeRange>

=item Type => Str

=item [Filters => L<Paws::DevOpsGuru::SearchInsightsFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::SearchInsights>

Returns: a L<Paws::DevOpsGuru::SearchInsightsResponse> instance

Returns a list of insights in your AWS account. You can specify which
insights are returned by their start time, one or more statuses
(C<ONGOING>, C<CLOSED>, and C<CLOSED>), one or more severities (C<LOW>,
C<MEDIUM>, and C<HIGH>), and type (C<REACTIVE> or C<PROACTIVE>).

Use the C<Filters> parameter to specify status and severity search
parameters. Use the C<Type> parameter to specify C<REACTIVE> or
C<PROACTIVE> in your search.


=head2 StartCostEstimation

=over

=item ResourceCollection => L<Paws::DevOpsGuru::CostEstimationResourceCollectionFilter>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::StartCostEstimation>

Returns: a L<Paws::DevOpsGuru::StartCostEstimationResponse> instance

Starts the creation of an estimate of the monthly cost to analyze your
AWS resources.


=head2 UpdateResourceCollection

=over

=item Action => Str

=item ResourceCollection => L<Paws::DevOpsGuru::UpdateResourceCollectionFilter>


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::UpdateResourceCollection>

Returns: a L<Paws::DevOpsGuru::UpdateResourceCollectionResponse> instance

Updates the collection of resources that DevOps Guru analyzes. The one
type of AWS resource collection supported is AWS CloudFormation stacks.
DevOps Guru can be configured to analyze only the AWS resources that
are defined in the stacks. You can specify up to 500 AWS CloudFormation
stacks. This method also creates the IAM role required for you to use
DevOps Guru.


=head2 UpdateServiceIntegration

=over

=item ServiceIntegration => L<Paws::DevOpsGuru::UpdateServiceIntegrationConfig>


=back

Each argument is described in detail in: L<Paws::DevOpsGuru::UpdateServiceIntegration>

Returns: a L<Paws::DevOpsGuru::UpdateServiceIntegrationResponse> instance

Enables or disables integration with a service that can be integrated
with DevOps Guru. The one service that can be integrated with DevOps
Guru is AWS Systems Manager, which can be used to create an OpsItem for
each generated insight.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllResourceCollectionHealth(sub { },ResourceCollectionType => Str, [NextToken => Str])

=head2 DescribeAllResourceCollectionHealth(ResourceCollectionType => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CloudFormation, passing the object as the first parameter, and the string 'CloudFormation' as the second parameter 

 - Service, passing the object as the first parameter, and the string 'Service' as the second parameter 

If not, it will return a a L<Paws::DevOpsGuru::DescribeResourceCollectionHealthResponse> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCostEstimation(sub { },[NextToken => Str])

=head2 GetAllCostEstimation([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Costs, passing the object as the first parameter, and the string 'Costs' as the second parameter 

If not, it will return a a L<Paws::DevOpsGuru::GetCostEstimationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllResourceCollection(sub { },ResourceCollectionType => Str, [NextToken => Str])

=head2 GetAllResourceCollection(ResourceCollectionType => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceCollection.CloudFormation.StackNames, passing the object as the first parameter, and the string 'ResourceCollection.CloudFormation.StackNames' as the second parameter 

If not, it will return a a L<Paws::DevOpsGuru::GetResourceCollectionResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAnomaliesForInsight(sub { },InsightId => Str, [MaxResults => Int, NextToken => Str, StartTimeRange => L<Paws::DevOpsGuru::StartTimeRange>])

=head2 ListAllAnomaliesForInsight(InsightId => Str, [MaxResults => Int, NextToken => Str, StartTimeRange => L<Paws::DevOpsGuru::StartTimeRange>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReactiveAnomalies, passing the object as the first parameter, and the string 'ReactiveAnomalies' as the second parameter 

 - ProactiveAnomalies, passing the object as the first parameter, and the string 'ProactiveAnomalies' as the second parameter 

If not, it will return a a L<Paws::DevOpsGuru::ListAnomaliesForInsightResponse> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEvents(sub { },Filters => L<Paws::DevOpsGuru::ListEventsFilters>, [MaxResults => Int, NextToken => Str])

=head2 ListAllEvents(Filters => L<Paws::DevOpsGuru::ListEventsFilters>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::DevOpsGuru::ListEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInsights(sub { },StatusFilter => L<Paws::DevOpsGuru::ListInsightsStatusFilter>, [MaxResults => Int, NextToken => Str])

=head2 ListAllInsights(StatusFilter => L<Paws::DevOpsGuru::ListInsightsStatusFilter>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProactiveInsights, passing the object as the first parameter, and the string 'ProactiveInsights' as the second parameter 

 - ReactiveInsights, passing the object as the first parameter, and the string 'ReactiveInsights' as the second parameter 

If not, it will return a a L<Paws::DevOpsGuru::ListInsightsResponse> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNotificationChannels(sub { },[NextToken => Str])

=head2 ListAllNotificationChannels([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Channels, passing the object as the first parameter, and the string 'Channels' as the second parameter 

If not, it will return a a L<Paws::DevOpsGuru::ListNotificationChannelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecommendations(sub { },InsightId => Str, [Locale => Str, NextToken => Str])

=head2 ListAllRecommendations(InsightId => Str, [Locale => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Recommendations, passing the object as the first parameter, and the string 'Recommendations' as the second parameter 

If not, it will return a a L<Paws::DevOpsGuru::ListRecommendationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllInsights(sub { },StartTimeRange => L<Paws::DevOpsGuru::StartTimeRange>, Type => Str, [Filters => L<Paws::DevOpsGuru::SearchInsightsFilters>, MaxResults => Int, NextToken => Str])

=head2 SearchAllInsights(StartTimeRange => L<Paws::DevOpsGuru::StartTimeRange>, Type => Str, [Filters => L<Paws::DevOpsGuru::SearchInsightsFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProactiveInsights, passing the object as the first parameter, and the string 'ProactiveInsights' as the second parameter 

 - ReactiveInsights, passing the object as the first parameter, and the string 'ReactiveInsights' as the second parameter 

If not, it will return a a L<Paws::DevOpsGuru::SearchInsightsResponse> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

