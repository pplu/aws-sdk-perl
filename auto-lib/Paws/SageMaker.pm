package Paws::SageMaker;
  use Moose;
  sub service { 'sagemaker' }
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
  


  sub operations { qw/AddTags CreateEndpoint CreateEndpointConfig CreateModel CreateNotebookInstance CreatePresignedNotebookInstanceUrl CreateTrainingJob DeleteEndpoint DeleteEndpointConfig DeleteModel DeleteNotebookInstance DeleteTags DescribeEndpoint DescribeEndpointConfig DescribeModel DescribeNotebookInstance DescribeTrainingJob ListEndpointConfigs ListEndpoints ListModels ListNotebookInstances ListTags ListTrainingJobs StartNotebookInstance StopNotebookInstance StopTrainingJob UpdateEndpoint UpdateEndpointWeightsAndCapacities UpdateNotebookInstance / }

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

=head1 METHODS

=head2 AddTags(ResourceArn => Str, Tags => ArrayRef[L<Paws::SageMaker::Tag>])

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


=head2 CreateEndpoint(EndpointConfigName => Str, EndpointName => Str, [Tags => ArrayRef[L<Paws::SageMaker::Tag>]])

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


=head2 CreateEndpointConfig(EndpointConfigName => Str, ProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariant>], [Tags => ArrayRef[L<Paws::SageMaker::Tag>]])

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


=head2 CreateModel(ModelName => Str, PrimaryContainer => L<Paws::SageMaker::ContainerDefinition>, [ExecutionRoleArn => Str, SupplementalContainers => ArrayRef[L<Paws::SageMaker::ContainerDefinition>], Tags => ArrayRef[L<Paws::SageMaker::Tag>]])

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

In the C<CreateModel> request, you must define at least one container
with the C<PrimaryContainer> parameter. You can optionally specify
additional containers with the C<SupplementalContainers> parameter.

In the request, you also provide an IAM role that Amazon SageMaker can
assume to access model artifacts and docker image for deployment on ML
compute hosting instances. In addition, you also use the IAM role to
manage permissions the inference code needs. For example, if the
inference code access any other AWS resources, you grant necessary
permissions via this role.


=head2 CreateNotebookInstance(InstanceType => Str, NotebookInstanceName => Str, RoleArn => Str, [KmsKeyId => Str, SecurityGroupIds => ArrayRef[Str|Undef], SubnetId => Str, Tags => ArrayRef[L<Paws::SageMaker::Tag>]])

Each argument is described in detail in: L<Paws::SageMaker::CreateNotebookInstance>

Returns: a L<Paws::SageMaker::CreateNotebookInstanceOutput> instance

Creates an Amazon SageMaker notebook instance. A notebook instance is
an ML compute instance running on a Jupyter notebook.

In a C<CreateNotebookInstance> request, you specify the type of ML
compute instance that you want to run. Amazon SageMaker launches the
instance, installs common libraries that you can use to explore
datasets for model training, and attaches an ML storage volume to the
notebook instance.

Amazon SageMaker also provides a set of example notebooks. Each
notebook demonstrates how to use Amazon SageMaker with a specific an
algorithm or with a machine learning framework.

After receiving the request, Amazon SageMaker does the following:

=over

=item 1.

Creates a network interface in the Amazon SageMaker VPC.

=item 2.

(Option) If you specified C<SubnetId>, creates a network interface in
your own VPC, which is inferred from the subnet ID that you provide in
the input. When creating this network interface, Amazon SageMaker
attaches the security group that you specified in the request to the
network interface that it creates in your VPC.

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


=head2 CreatePresignedNotebookInstanceUrl(NotebookInstanceName => Str, [SessionExpirationDurationInSeconds => Int])

Each argument is described in detail in: L<Paws::SageMaker::CreatePresignedNotebookInstanceUrl>

Returns: a L<Paws::SageMaker::CreatePresignedNotebookInstanceUrlOutput> instance

Returns a URL that you can use to connect to the Juypter server from a
notebook instance. In the Amazon SageMaker console, when you choose
C<Open> next to a notebook instance, Amazon SageMaker opens a new tab
showing the Jupyter server home page from the notebook instance. The
console uses this API to get the URL and show the page.


=head2 CreateTrainingJob(AlgorithmSpecification => L<Paws::SageMaker::AlgorithmSpecification>, InputDataConfig => ArrayRef[L<Paws::SageMaker::Channel>], OutputDataConfig => L<Paws::SageMaker::OutputDataConfig>, ResourceConfig => L<Paws::SageMaker::ResourceConfig>, RoleArn => Str, StoppingCondition => L<Paws::SageMaker::StoppingCondition>, TrainingJobName => Str, [HyperParameters => L<Paws::SageMaker::HyperParameters>, Tags => ArrayRef[L<Paws::SageMaker::Tag>]])

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


=head2 DeleteEndpoint(EndpointName => Str)

Each argument is described in detail in: L<Paws::SageMaker::DeleteEndpoint>

Returns: nothing

Deletes an endpoint. Amazon SageMaker frees up all of the resources
that were deployed when the endpoint was created.


=head2 DeleteEndpointConfig(EndpointConfigName => Str)

Each argument is described in detail in: L<Paws::SageMaker::DeleteEndpointConfig>

Returns: nothing

Deletes an endpoint configuration. The C<DeleteEndpoingConfig> API
deletes only the specified configuration. It does not delete endpoints
created using the configuration.


=head2 DeleteModel(ModelName => Str)

Each argument is described in detail in: L<Paws::SageMaker::DeleteModel>

Returns: nothing

Deletes a model. The C<DeleteModel> API deletes only the model entry
that was created in Amazon SageMaker when you called the CreateModel
(http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html)
API. It does not delete model artifacts, inference code, or the IAM
role that you specified when creating the model.


=head2 DeleteNotebookInstance(NotebookInstanceName => Str)

Each argument is described in detail in: L<Paws::SageMaker::DeleteNotebookInstance>

Returns: nothing

Deletes an Amazon SageMaker notebook instance. Before you can delete a
notebook instance, you must call the C<StopNotebookInstance> API.

When you delete a notebook instance, you lose all of your data. Amazon
SageMaker removes the ML compute instance, and deletes the ML storage
volume and the network interface associated with the notebook instance.


=head2 DeleteTags(ResourceArn => Str, TagKeys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::SageMaker::DeleteTags>

Returns: a L<Paws::SageMaker::DeleteTagsOutput> instance

Deletes the specified tags from an Amazon SageMaker resource.

To list a resource's tags, use the C<ListTags> API.


=head2 DescribeEndpoint(EndpointName => Str)

Each argument is described in detail in: L<Paws::SageMaker::DescribeEndpoint>

Returns: a L<Paws::SageMaker::DescribeEndpointOutput> instance

Returns the description of an endpoint.


=head2 DescribeEndpointConfig(EndpointConfigName => Str)

Each argument is described in detail in: L<Paws::SageMaker::DescribeEndpointConfig>

Returns: a L<Paws::SageMaker::DescribeEndpointConfigOutput> instance

Returns the description of an endpoint configuration created using the
C<CreateEndpointConfig> API.


=head2 DescribeModel(ModelName => Str)

Each argument is described in detail in: L<Paws::SageMaker::DescribeModel>

Returns: a L<Paws::SageMaker::DescribeModelOutput> instance

Describes a model that you created using the C<CreateModel> API.


=head2 DescribeNotebookInstance(NotebookInstanceName => Str)

Each argument is described in detail in: L<Paws::SageMaker::DescribeNotebookInstance>

Returns: a L<Paws::SageMaker::DescribeNotebookInstanceOutput> instance

Returns information about a notebook instance.


=head2 DescribeTrainingJob(TrainingJobName => Str)

Each argument is described in detail in: L<Paws::SageMaker::DescribeTrainingJob>

Returns: a L<Paws::SageMaker::DescribeTrainingJobResponse> instance

Returns information about a training job.


=head2 ListEndpointConfigs([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

Each argument is described in detail in: L<Paws::SageMaker::ListEndpointConfigs>

Returns: a L<Paws::SageMaker::ListEndpointConfigsOutput> instance

Lists endpoint configurations.


=head2 ListEndpoints([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

Each argument is described in detail in: L<Paws::SageMaker::ListEndpoints>

Returns: a L<Paws::SageMaker::ListEndpointsOutput> instance

Lists endpoints.


=head2 ListModels([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

Each argument is described in detail in: L<Paws::SageMaker::ListModels>

Returns: a L<Paws::SageMaker::ListModelsOutput> instance

Lists models created with the CreateModel
(http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html)
API.


=head2 ListNotebookInstances([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

Each argument is described in detail in: L<Paws::SageMaker::ListNotebookInstances>

Returns: a L<Paws::SageMaker::ListNotebookInstancesOutput> instance

Returns a list of the Amazon SageMaker notebook instances in the
requester's account in an AWS Region.


=head2 ListTags(ResourceArn => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SageMaker::ListTags>

Returns: a L<Paws::SageMaker::ListTagsOutput> instance

Returns the tags for the specified Amazon SageMaker resource.


=head2 ListTrainingJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

Each argument is described in detail in: L<Paws::SageMaker::ListTrainingJobs>

Returns: a L<Paws::SageMaker::ListTrainingJobsResponse> instance

Lists training jobs.


=head2 StartNotebookInstance(NotebookInstanceName => Str)

Each argument is described in detail in: L<Paws::SageMaker::StartNotebookInstance>

Returns: nothing

Launches an ML compute instance with the latest version of the
libraries and attaches your ML storage volume. After configuring the
notebook instance, Amazon SageMaker sets the notebook instance status
to C<InService>. A notebook instance's status must be C<InService> (is
this same as "Running" in the console?) before you can connect to your
Jupyter notebook.


=head2 StopNotebookInstance(NotebookInstanceName => Str)

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


=head2 StopTrainingJob(TrainingJobName => Str)

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


=head2 UpdateEndpoint(EndpointConfigName => Str, EndpointName => Str)

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


=head2 UpdateEndpointWeightsAndCapacities(DesiredWeightsAndCapacities => ArrayRef[L<Paws::SageMaker::DesiredWeightAndCapacity>], EndpointName => Str)

Each argument is described in detail in: L<Paws::SageMaker::UpdateEndpointWeightsAndCapacities>

Returns: a L<Paws::SageMaker::UpdateEndpointWeightsAndCapacitiesOutput> instance

Updates variant weight, capacity, or both of one or more variants
associated with an endpoint. This operation updates weight, capacity,
or both for the previously provisioned endpoint. When it receives the
request, Amazon SageMaker sets the endpoint status to C<Updating>.
After updating the endpoint, it sets the status to C<InService>. To
check the status of an endpoint, use the DescribeEndpoint
(http://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html)
API.


=head2 UpdateNotebookInstance(NotebookInstanceName => Str, [InstanceType => Str, RoleArn => Str])

Each argument is described in detail in: L<Paws::SageMaker::UpdateNotebookInstance>

Returns: a L<Paws::SageMaker::UpdateNotebookInstanceOutput> instance

Updates a notebook instance. NotebookInstance updates include upgrading
or downgrading the ML compute instance used for your notebook instance
to accommodate changes in your workload requirements. You can also
update the VPC security groups.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

