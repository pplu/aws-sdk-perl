package Paws::SageMaker;
  use Moose;
  sub service { 'sagemaker' }
  sub signing_name { 'sagemaker' }
  sub version { '2017-07-24' }
  sub target_prefix { 'SageMaker' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::AddTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEndpointConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateEndpointConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNotebookInstanceLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateNotebookInstanceLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePresignedNotebookInstanceUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreatePresignedNotebookInstanceUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateTrainingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpointConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteEndpointConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotebookInstanceLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteNotebookInstanceLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpointConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeEndpointConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNotebookInstanceLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeNotebookInstanceLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeTrainingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEndpointConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListEndpointConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotebookInstanceLifecycleConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListNotebookInstanceLifecycleConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotebookInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListNotebookInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrainingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTrainingJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StartNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopTrainingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEndpointWeightsAndCapacities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateEndpointWeightsAndCapacities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNotebookInstanceLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateNotebookInstanceLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllEndpointConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEndpointConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEndpointConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->EndpointConfigs }, @{ $next_result->EndpointConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EndpointConfigs') foreach (@{ $result->EndpointConfigs });
        $result = $self->ListEndpointConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EndpointConfigs') foreach (@{ $result->EndpointConfigs });
    }

    return undef
  }
  sub ListAllEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->Endpoints }, @{ $next_result->Endpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
        $result = $self->ListEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
    }

    return undef
  }
  sub ListAllModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModels(@_, NextToken => $next_result->NextToken);
        push @{ $result->Models }, @{ $next_result->Models };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Models') foreach (@{ $result->Models });
        $result = $self->ListModels(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Models') foreach (@{ $result->Models });
    }

    return undef
  }
  sub ListAllNotebookInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNotebookInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNotebookInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->NotebookInstances }, @{ $next_result->NotebookInstances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NotebookInstances') foreach (@{ $result->NotebookInstances });
        $result = $self->ListNotebookInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NotebookInstances') foreach (@{ $result->NotebookInstances });
    }

    return undef
  }
  sub ListAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub ListAllTrainingJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrainingJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrainingJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrainingJobSummaries }, @{ $next_result->TrainingJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrainingJobSummaries') foreach (@{ $result->TrainingJobSummaries });
        $result = $self->ListTrainingJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrainingJobSummaries') foreach (@{ $result->TrainingJobSummaries });
    }

    return undef
  }


  sub operations { qw/AddTags CreateEndpoint CreateEndpointConfig CreateModel CreateNotebookInstance CreateNotebookInstanceLifecycleConfig CreatePresignedNotebookInstanceUrl CreateTrainingJob DeleteEndpoint DeleteEndpointConfig DeleteModel DeleteNotebookInstance DeleteNotebookInstanceLifecycleConfig DeleteTags DescribeEndpoint DescribeEndpointConfig DescribeModel DescribeNotebookInstance DescribeNotebookInstanceLifecycleConfig DescribeTrainingJob ListEndpointConfigs ListEndpoints ListModels ListNotebookInstanceLifecycleConfigs ListNotebookInstances ListTags ListTrainingJobs StartNotebookInstance StopNotebookInstance StopTrainingJob UpdateEndpoint UpdateEndpointWeightsAndCapacities UpdateNotebookInstance UpdateNotebookInstanceLifecycleConfig / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker - Perl Interface to AWS Amazon SageMaker Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SageMaker');
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

Definition of the public APIs exposed by SageMaker

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24>

=head1 METHODS

=head2 AddTags

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::SageMaker::Tag>]


=back

Each argument is described in detail in: L<Paws::SageMaker::AddTags>

Returns: a L<Paws::SageMaker::AddTagsOutput> instance

Adds or overwrites one or more tags for the specified Amazon SageMaker
resource. You can add tags to notebook instances, training jobs,
models, endpoint configurations, and endpoints.

Each tag consists of a key and an optional value. Tag keys must be
unique per resource. For more information about tags, see Using Cost
Allocation Tags
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
in the I<AWS Billing and Cost Management User Guide>.


=head2 CreateEndpoint

=over

=item EndpointConfigName => Str

=item EndpointName => Str

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateEndpoint>

Returns: a L<Paws::SageMaker::CreateEndpointOutput> instance

Creates an endpoint using the endpoint configuration specified in the
request. Amazon SageMaker uses the endpoint to provision resources and
deploy models. You create the endpoint configuration with the
CreateEndpointConfig
(http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html)
API.

Use this API only for hosting models using Amazon SageMaker hosting
services.

The endpoint name must be unique within an AWS Region in your AWS
account.

When it receives the request, Amazon SageMaker creates the endpoint,
launches the resources (ML compute instances), and deploys the model(s)
on them.

When Amazon SageMaker receives the request, it sets the endpoint status
to C<Creating>. After it creates the endpoint, it sets the status to
C<InService>. Amazon SageMaker can then process incoming requests for
inferences. To check the status of an endpoint, use the
DescribeEndpoint
(http://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html)
API.

For an example, see Exercise 1: Using the K-Means Algorithm Provided by
Amazon SageMaker
(http://docs.aws.amazon.com/sagemaker/latest/dg/ex1.html).


=head2 CreateEndpointConfig

=over

=item EndpointConfigName => Str

=item ProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariant>]

=item [KmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateEndpointConfig>

Returns: a L<Paws::SageMaker::CreateEndpointConfigOutput> instance

Creates an endpoint configuration that Amazon SageMaker hosting
services uses to deploy models. In the configuration, you identify one
or more models, created using the C<CreateModel> API, to deploy and the
resources that you want Amazon SageMaker to provision. Then you call
the CreateEndpoint
(http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html)
API.

Use this API only if you want to use Amazon SageMaker hosting services
to deploy models into production.

In the request, you define one or more C<ProductionVariant>s, each of
which identifies a model. Each C<ProductionVariant> parameter also
describes the resources that you want Amazon SageMaker to provision.
This includes the number and type of ML compute instances to deploy.

If you are hosting multiple models, you also assign a C<VariantWeight>
to specify how much traffic you want to allocate to each model. For
example, suppose that you want to host two models, A and B, and you
assign traffic weight 2 for model A and 1 for model B. Amazon SageMaker
distributes two-thirds of the traffic to Model A, and one-third to
model B.


=head2 CreateModel

=over

=item ExecutionRoleArn => Str

=item ModelName => Str

=item PrimaryContainer => L<Paws::SageMaker::ContainerDefinition>

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [VpcConfig => L<Paws::SageMaker::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModel>

Returns: a L<Paws::SageMaker::CreateModelOutput> instance

Creates a model in Amazon SageMaker. In the request, you name the model
and describe one or more containers. For each container, you specify
the docker image containing inference code, artifacts (from prior
training), and custom environment map that the inference code uses when
you deploy the model into production.

Use this API to create a model only if you want to use Amazon SageMaker
hosting services. To host your model, you create an endpoint
configuration with the C<CreateEndpointConfig> API, and then create an
endpoint with the C<CreateEndpoint> API.

Amazon SageMaker then deploys all of the containers that you defined
for the model in the hosting environment.

In the C<CreateModel> request, you must define a container with the
C<PrimaryContainer> parameter.

In the request, you also provide an IAM role that Amazon SageMaker can
assume to access model artifacts and docker image for deployment on ML
compute hosting instances. In addition, you also use the IAM role to
manage permissions the inference code needs. For example, if the
inference code access any other AWS resources, you grant necessary
permissions via this role.


=head2 CreateNotebookInstance

=over

=item InstanceType => Str

=item NotebookInstanceName => Str

=item RoleArn => Str

=item [DirectInternetAccess => Str]

=item [KmsKeyId => Str]

=item [LifecycleConfigName => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SubnetId => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateNotebookInstance>

Returns: a L<Paws::SageMaker::CreateNotebookInstanceOutput> instance

Creates an Amazon SageMaker notebook instance. A notebook instance is a
machine learning (ML) compute instance running on a Jupyter notebook.

In a C<CreateNotebookInstance> request, specify the type of ML compute
instance that you want to run. Amazon SageMaker launches the instance,
installs common libraries that you can use to explore datasets for
model training, and attaches an ML storage volume to the notebook
instance.

Amazon SageMaker also provides a set of example notebooks. Each
notebook demonstrates how to use Amazon SageMaker with a specific
algorithm or with a machine learning framework.

After receiving the request, Amazon SageMaker does the following:

=over

=item 1.

Creates a network interface in the Amazon SageMaker VPC.

=item 2.

(Option) If you specified C<SubnetId>, Amazon SageMaker creates a
network interface in your own VPC, which is inferred from the subnet ID
that you provide in the input. When creating this network interface,
Amazon SageMaker attaches the security group that you specified in the
request to the network interface that it creates in your VPC.

=item 3.

Launches an EC2 instance of the type specified in the request in the
Amazon SageMaker VPC. If you specified C<SubnetId> of your VPC, Amazon
SageMaker specifies both network interfaces when launching this
instance. This enables inbound traffic from your own VPC to the
notebook instance, assuming that the security groups allow it.

=back

After creating the notebook instance, Amazon SageMaker returns its
Amazon Resource Name (ARN).

After Amazon SageMaker creates the notebook instance, you can connect
to the Jupyter server and work in Jupyter notebooks. For example, you
can write code to explore a dataset that you can use for model
training, train a model, host models by creating Amazon SageMaker
endpoints, and validate hosted models.

For more information, see How It Works
(http://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).


=head2 CreateNotebookInstanceLifecycleConfig

=over

=item NotebookInstanceLifecycleConfigName => Str

=item [OnCreate => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]]

=item [OnStart => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateNotebookInstanceLifecycleConfig>

Returns: a L<Paws::SageMaker::CreateNotebookInstanceLifecycleConfigOutput> instance

Creates a lifecycle configuration that you can associate with a
notebook instance. A I<lifecycle configuration> is a collection of
shell scripts that run when you create or start a notebook instance.

Each lifecycle configuration script has a limit of 16384 characters.

The value of the C<$PATH> environment variable that is available to
both scripts is C</sbin:bin:/usr/sbin:/usr/bin>.

View CloudWatch Logs for notebook instance lifecycle configurations in
log group C</aws/sagemaker/NotebookInstances> in log stream
C<[notebook-instance-name]/[LifecycleConfigHook]>.

Lifecycle configuration scripts cannot run for longer than 5 minutes.
If a script runs for longer than 5 minutes, it fails and the notebook
instance is not created or started.

For information about notebook instance lifestyle configurations, see
notebook-lifecycle-config.


=head2 CreatePresignedNotebookInstanceUrl

=over

=item NotebookInstanceName => Str

=item [SessionExpirationDurationInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreatePresignedNotebookInstanceUrl>

Returns: a L<Paws::SageMaker::CreatePresignedNotebookInstanceUrlOutput> instance

Returns a URL that you can use to connect to the Juypter server from a
notebook instance. In the Amazon SageMaker console, when you choose
C<Open> next to a notebook instance, Amazon SageMaker opens a new tab
showing the Jupyter server home page from the notebook instance. The
console uses this API to get the URL and show the page.


=head2 CreateTrainingJob

=over

=item AlgorithmSpecification => L<Paws::SageMaker::AlgorithmSpecification>

=item InputDataConfig => ArrayRef[L<Paws::SageMaker::Channel>]

=item OutputDataConfig => L<Paws::SageMaker::OutputDataConfig>

=item ResourceConfig => L<Paws::SageMaker::ResourceConfig>

=item RoleArn => Str

=item StoppingCondition => L<Paws::SageMaker::StoppingCondition>

=item TrainingJobName => Str

=item [HyperParameters => L<Paws::SageMaker::HyperParameters>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [VpcConfig => L<Paws::SageMaker::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateTrainingJob>

Returns: a L<Paws::SageMaker::CreateTrainingJobResponse> instance

Starts a model training job. After training completes, Amazon SageMaker
saves the resulting model artifacts to an Amazon S3 location that you
specify.

If you choose to host your model using Amazon SageMaker hosting
services, you can use the resulting model artifacts as part of the
model. You can also use the artifacts in a deep learning service other
than Amazon SageMaker, provided that you know how to use them for
inferences.

In the request body, you provide the following:

=over

=item *

C<AlgorithmSpecification> - Identifies the training algorithm to use.

=item *

C<HyperParameters> - Specify these algorithm-specific parameters to
influence the quality of the final model. For a list of hyperparameters
for each training algorithm provided by Amazon SageMaker, see
Algorithms (http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).

=item *

C<InputDataConfig> - Describes the training dataset and the Amazon S3
location where it is stored.

=item *

C<OutputDataConfig> - Identifies the Amazon S3 location where you want
Amazon SageMaker to save the results of model training.

=item *

C<ResourceConfig> - Identifies the resources, ML compute instances, and
ML storage volumes to deploy for model training. In distributed
training, you specify more than one instance.

=item *

C<RoleARN> - The Amazon Resource Number (ARN) that Amazon SageMaker
assumes to perform tasks on your behalf during model training. You must
grant this role the necessary permissions so that Amazon SageMaker can
successfully complete model training.

=item *

C<StoppingCondition> - Sets a duration for training. Use this parameter
to cap model training costs.

=back

For more information about Amazon SageMaker, see How It Works
(http://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).


=head2 DeleteEndpoint

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteEndpoint>

Returns: nothing

Deletes an endpoint. Amazon SageMaker frees up all of the resources
that were deployed when the endpoint was created.


=head2 DeleteEndpointConfig

=over

=item EndpointConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteEndpointConfig>

Returns: nothing

Deletes an endpoint configuration. The C<DeleteEndpoingConfig> API
deletes only the specified configuration. It does not delete endpoints
created using the configuration.


=head2 DeleteModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModel>

Returns: nothing

Deletes a model. The C<DeleteModel> API deletes only the model entry
that was created in Amazon SageMaker when you called the CreateModel
(http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html)
API. It does not delete model artifacts, inference code, or the IAM
role that you specified when creating the model.


=head2 DeleteNotebookInstance

=over

=item NotebookInstanceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteNotebookInstance>

Returns: nothing

Deletes an Amazon SageMaker notebook instance. Before you can delete a
notebook instance, you must call the C<StopNotebookInstance> API.

When you delete a notebook instance, you lose all of your data. Amazon
SageMaker removes the ML compute instance, and deletes the ML storage
volume and the network interface associated with the notebook instance.


=head2 DeleteNotebookInstanceLifecycleConfig

=over

=item NotebookInstanceLifecycleConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteNotebookInstanceLifecycleConfig>

Returns: nothing

Deletes a notebook instance lifecycle configuration.


=head2 DeleteTags

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteTags>

Returns: a L<Paws::SageMaker::DeleteTagsOutput> instance

Deletes the specified tags from an Amazon SageMaker resource.

To list a resource's tags, use the C<ListTags> API.


=head2 DescribeEndpoint

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeEndpoint>

Returns: a L<Paws::SageMaker::DescribeEndpointOutput> instance

Returns the description of an endpoint.


=head2 DescribeEndpointConfig

=over

=item EndpointConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeEndpointConfig>

Returns: a L<Paws::SageMaker::DescribeEndpointConfigOutput> instance

Returns the description of an endpoint configuration created using the
C<CreateEndpointConfig> API.


=head2 DescribeModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModel>

Returns: a L<Paws::SageMaker::DescribeModelOutput> instance

Describes a model that you created using the C<CreateModel> API.


=head2 DescribeNotebookInstance

=over

=item NotebookInstanceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeNotebookInstance>

Returns: a L<Paws::SageMaker::DescribeNotebookInstanceOutput> instance

Returns information about a notebook instance.


=head2 DescribeNotebookInstanceLifecycleConfig

=over

=item NotebookInstanceLifecycleConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeNotebookInstanceLifecycleConfig>

Returns: a L<Paws::SageMaker::DescribeNotebookInstanceLifecycleConfigOutput> instance

Returns a description of a notebook instance lifecycle configuration.

For information about notebook instance lifestyle configurations, see
notebook-lifecycle-config.


=head2 DescribeTrainingJob

=over

=item TrainingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeTrainingJob>

Returns: a L<Paws::SageMaker::DescribeTrainingJobResponse> instance

Returns information about a training job.


=head2 ListEndpointConfigs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListEndpointConfigs>

Returns: a L<Paws::SageMaker::ListEndpointConfigsOutput> instance

Lists endpoint configurations.


=head2 ListEndpoints

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListEndpoints>

Returns: a L<Paws::SageMaker::ListEndpointsOutput> instance

Lists endpoints.


=head2 ListModels

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModels>

Returns: a L<Paws::SageMaker::ListModelsOutput> instance

Lists models created with the CreateModel
(http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html)
API.


=head2 ListNotebookInstanceLifecycleConfigs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListNotebookInstanceLifecycleConfigs>

Returns: a L<Paws::SageMaker::ListNotebookInstanceLifecycleConfigsOutput> instance

Lists notebook instance lifestyle configurations created with the API.


=head2 ListNotebookInstances

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [NotebookInstanceLifecycleConfigNameContains => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListNotebookInstances>

Returns: a L<Paws::SageMaker::ListNotebookInstancesOutput> instance

Returns a list of the Amazon SageMaker notebook instances in the
requester's account in an AWS Region.


=head2 ListTags

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTags>

Returns: a L<Paws::SageMaker::ListTagsOutput> instance

Returns the tags for the specified Amazon SageMaker resource.


=head2 ListTrainingJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTrainingJobs>

Returns: a L<Paws::SageMaker::ListTrainingJobsResponse> instance

Lists training jobs.


=head2 StartNotebookInstance

=over

=item NotebookInstanceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StartNotebookInstance>

Returns: nothing

Launches an ML compute instance with the latest version of the
libraries and attaches your ML storage volume. After configuring the
notebook instance, Amazon SageMaker sets the notebook instance status
to C<InService>. A notebook instance's status must be C<InService>
before you can connect to your Jupyter notebook.


=head2 StopNotebookInstance

=over

=item NotebookInstanceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopNotebookInstance>

Returns: nothing

Terminates the ML compute instance. Before terminating the instance,
Amazon SageMaker disconnects the ML storage volume from it. Amazon
SageMaker preserves the ML storage volume.

To access data on the ML storage volume for a notebook instance that
has been terminated, call the C<StartNotebookInstance> API.
C<StartNotebookInstance> launches another ML compute instance,
configures it, and attaches the preserved ML storage volume so you can
continue your work.


=head2 StopTrainingJob

=over

=item TrainingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopTrainingJob>

Returns: nothing

Stops a training job. To stop a job, Amazon SageMaker sends the
algorithm the C<SIGTERM> signal, which delays job termination for 120
seconds. Algorithms might use this 120-second window to save the model
artifacts, so the results of the training is not lost.

Training algorithms provided by Amazon SageMaker save the intermediate
results of a model training job. This intermediate data is a valid
model artifact. You can use the model artifacts that are saved when
Amazon SageMaker stops a training job to create a model.

When it receives a C<StopTrainingJob> request, Amazon SageMaker changes
the status of the job to C<Stopping>. After Amazon SageMaker stops the
job, it sets the status to C<Stopped>.


=head2 UpdateEndpoint

=over

=item EndpointConfigName => Str

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateEndpoint>

Returns: a L<Paws::SageMaker::UpdateEndpointOutput> instance

Deploys the new C<EndpointConfig> specified in the request, switches to
using newly created endpoint, and then deletes resources provisioned
for the endpoint using the previous C<EndpointConfig> (there is no
availability loss).

When Amazon SageMaker receives the request, it sets the endpoint status
to C<Updating>. After updating the endpoint, it sets the status to
C<InService>. To check the status of an endpoint, use the
DescribeEndpoint
(http://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html)
API.


=head2 UpdateEndpointWeightsAndCapacities

=over

=item DesiredWeightsAndCapacities => ArrayRef[L<Paws::SageMaker::DesiredWeightAndCapacity>]

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateEndpointWeightsAndCapacities>

Returns: a L<Paws::SageMaker::UpdateEndpointWeightsAndCapacitiesOutput> instance

Updates variant weight of one or more variants associated with an
existing endpoint, or capacity of one variant associated with an
existing endpoint. When it receives the request, Amazon SageMaker sets
the endpoint status to C<Updating>. After updating the endpoint, it
sets the status to C<InService>. To check the status of an endpoint,
use the DescribeEndpoint
(http://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html)
API.


=head2 UpdateNotebookInstance

=over

=item NotebookInstanceName => Str

=item [InstanceType => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateNotebookInstance>

Returns: a L<Paws::SageMaker::UpdateNotebookInstanceOutput> instance

Updates a notebook instance. NotebookInstance updates include upgrading
or downgrading the ML compute instance used for your notebook instance
to accommodate changes in your workload requirements. You can also
update the VPC security groups.


=head2 UpdateNotebookInstanceLifecycleConfig

=over

=item NotebookInstanceLifecycleConfigName => Str

=item [OnCreate => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]]

=item [OnStart => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateNotebookInstanceLifecycleConfig>

Returns: a L<Paws::SageMaker::UpdateNotebookInstanceLifecycleConfigOutput> instance

Updates a notebook instance lifecycle configuration created with the
API.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllEndpointConfigs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllEndpointConfigs([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EndpointConfigs, passing the object as the first parameter, and the string 'EndpointConfigs' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListEndpointConfigsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEndpoints(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllEndpoints([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Endpoints, passing the object as the first parameter, and the string 'Endpoints' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListEndpointsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModels(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModels([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Models, passing the object as the first parameter, and the string 'Models' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNotebookInstances(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, NotebookInstanceLifecycleConfigNameContains => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllNotebookInstances([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, NotebookInstanceLifecycleConfigNameContains => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NotebookInstances, passing the object as the first parameter, and the string 'NotebookInstances' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListNotebookInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTags(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTags(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTagsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrainingJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllTrainingJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrainingJobSummaries, passing the object as the first parameter, and the string 'TrainingJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTrainingJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

