package Paws::LookoutVision;
  use Moose;
  sub service { 'lookoutvision' }
  sub signing_name { 'lookoutvision' }
  sub version { '2020-11-20' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::CreateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::CreateModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::DeleteModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::DescribeModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::DescribeProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectAnomalies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::DetectAnomalies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetEntries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::ListDatasetEntries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::ListModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::StartModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::StopModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDatasetEntries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutVision::UpdateDatasetEntries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDatasetEntries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasetEntries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDatasetEntries(@_, NextToken => $next_result->NextToken);
        push @{ $result->DatasetEntries }, @{ $next_result->DatasetEntries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DatasetEntries') foreach (@{ $result->DatasetEntries });
        $result = $self->ListDatasetEntries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DatasetEntries') foreach (@{ $result->DatasetEntries });
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


  sub operations { qw/CreateDataset CreateModel CreateProject DeleteDataset DeleteModel DeleteProject DescribeDataset DescribeModel DescribeProject DetectAnomalies ListDatasetEntries ListModels ListProjects ListTagsForResource StartModel StopModel TagResource UntagResource UpdateDatasetEntries / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision - Perl Interface to AWS Amazon Lookout for Vision

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LookoutVision');
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

This is the Amazon Lookout for Vision API Reference. It provides
descriptions of actions, data types, common parameters, and common
errors.

Amazon Lookout for Vision enables you to find visual defects in
industrial products, accurately and at scale. It uses computer vision
to identify missing components in an industrial product, damage to
vehicles or structures, irregularities in production lines, and even
minuscule defects in silicon wafers E<mdash> or any other physical item
where quality is important such as a missing capacitor on printed
circuit boards.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutvision-2020-11-20>


=head1 METHODS

=head2 CreateDataset

=over

=item DatasetType => Str

=item ProjectName => Str

=item [ClientToken => Str]

=item [DatasetSource => L<Paws::LookoutVision::DatasetSource>]


=back

Each argument is described in detail in: L<Paws::LookoutVision::CreateDataset>

Returns: a L<Paws::LookoutVision::CreateDatasetResponse> instance

Creates a new dataset in an Amazon Lookout for Vision project.
C<CreateDataset> can create a training or a test dataset from a valid
dataset source (C<DatasetSource>).

If you want a single dataset project, specify C<train> for the value of
C<DatasetType>.

To have a project with separate training and test datasets, call
C<CreateDataset> twice. On the first call, specify C<train> for the
value of C<DatasetType>. On the second call, specify C<test> for the
value of C<DatasetType>.

This operation requires permissions to perform the
C<lookoutvision:CreateDataset> operation.


=head2 CreateModel

=over

=item OutputConfig => L<Paws::LookoutVision::OutputConfig>

=item ProjectName => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [KmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::LookoutVision::Tag>]]


=back

Each argument is described in detail in: L<Paws::LookoutVision::CreateModel>

Returns: a L<Paws::LookoutVision::CreateModelResponse> instance

Creates a new version of a model within an an Amazon Lookout for Vision
project. C<CreateModel> is an asynchronous operation in which Amazon
Lookout for Vision trains, tests, and evaluates a new version of a
model.

To get the current status, check the C<Status> field returned in the
response from DescribeModel.

If the project has a single dataset, Amazon Lookout for Vision
internally splits the dataset to create a training and a test dataset.
If the project has a training and a test dataset, Lookout for Vision
uses the respective datasets to train and test the model.

After training completes, the evaluation metrics are stored at the
location specified in C<OutputConfig>.

This operation requires permissions to perform the
C<lookoutvision:CreateModel> operation. If you want to tag your model,
you also require permission to the C<lookoutvision:TagResource>
operation.


=head2 CreateProject

=over

=item ProjectName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutVision::CreateProject>

Returns: a L<Paws::LookoutVision::CreateProjectResponse> instance

Creates an empty Amazon Lookout for Vision project. After you create
the project, add a dataset by calling CreateDataset.

This operation requires permissions to perform the
C<lookoutvision:CreateProject> operation.


=head2 DeleteDataset

=over

=item DatasetType => Str

=item ProjectName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutVision::DeleteDataset>

Returns: a L<Paws::LookoutVision::DeleteDatasetResponse> instance

Deletes an existing Amazon Lookout for Vision C<dataset>.

If your the project has a single dataset, you must create a new dataset
before you can create a model.

If you project has a training dataset and a test dataset consider the
following.

=over

=item *

If you delete the test dataset, your project reverts to a single
dataset project. If you then train the model, Amazon Lookout for Vision
internally splits the remaining dataset into a training and test
dataset.

=item *

If you delete the training dataset, you must create a training dataset
before you can create a model.

=back

This operation requires permissions to perform the
C<lookoutvision:DeleteDataset> operation.


=head2 DeleteModel

=over

=item ModelVersion => Str

=item ProjectName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutVision::DeleteModel>

Returns: a L<Paws::LookoutVision::DeleteModelResponse> instance

Deletes an Amazon Lookout for Vision model. You can't delete a running
model. To stop a running model, use the StopModel operation.

It might take a few seconds to delete a model. To determine if a model
has been deleted, call ListProjects and check if the version of the
model (C<ModelVersion>) is in the C<Models> array.

This operation requires permissions to perform the
C<lookoutvision:DeleteModel> operation.


=head2 DeleteProject

=over

=item ProjectName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutVision::DeleteProject>

Returns: a L<Paws::LookoutVision::DeleteProjectResponse> instance

Deletes an Amazon Lookout for Vision project.

To delete a project, you must first delete each version of the model
associated with the project. To delete a model use the DeleteModel
operation.

You also have to delete the dataset(s) associated with the model. For
more information, see DeleteDataset. The images referenced by the
training and test datasets aren't deleted.

This operation requires permissions to perform the
C<lookoutvision:DeleteProject> operation.


=head2 DescribeDataset

=over

=item DatasetType => Str

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::LookoutVision::DescribeDataset>

Returns: a L<Paws::LookoutVision::DescribeDatasetResponse> instance

Describe an Amazon Lookout for Vision dataset.

This operation requires permissions to perform the
C<lookoutvision:DescribeDataset> operation.


=head2 DescribeModel

=over

=item ModelVersion => Str

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::LookoutVision::DescribeModel>

Returns: a L<Paws::LookoutVision::DescribeModelResponse> instance

Describes a version of an Amazon Lookout for Vision model.

This operation requires permissions to perform the
C<lookoutvision:DescribeModel> operation.


=head2 DescribeProject

=over

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::LookoutVision::DescribeProject>

Returns: a L<Paws::LookoutVision::DescribeProjectResponse> instance

Describes an Amazon Lookout for Vision project.

This operation requires permissions to perform the
C<lookoutvision:DescribeProject> operation.


=head2 DetectAnomalies

=over

=item Body => Str

=item ContentType => Str

=item ModelVersion => Str

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::LookoutVision::DetectAnomalies>

Returns: a L<Paws::LookoutVision::DetectAnomaliesResponse> instance

Detects anomalies in an image that you supply.

The response from C<DetectAnomalies> includes a boolean prediction that
the image contains one or more anomalies and a confidence value for the
prediction.

Before calling C<DetectAnomalies>, you must first start your model with
the StartModel operation. You are charged for the amount of time, in
minutes, that a model runs and for the number of anomaly detection
units that your model uses. If you are not using a model, use the
StopModel operation to stop your model.

This operation requires permissions to perform the
C<lookoutvision:DetectAnomalies> operation.


=head2 ListDatasetEntries

=over

=item DatasetType => Str

=item ProjectName => Str

=item [AfterCreationDate => Str]

=item [AnomalyClass => Str]

=item [BeforeCreationDate => Str]

=item [Labeled => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SourceRefContains => Str]


=back

Each argument is described in detail in: L<Paws::LookoutVision::ListDatasetEntries>

Returns: a L<Paws::LookoutVision::ListDatasetEntriesResponse> instance

Lists the JSON Lines within a dataset. An Amazon Lookout for Vision
JSON Line contains the anomaly information for a single image,
including the image location and the assigned label.

This operation requires permissions to perform the
C<lookoutvision:ListDatasetEntries> operation.


=head2 ListModels

=over

=item ProjectName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutVision::ListModels>

Returns: a L<Paws::LookoutVision::ListModelsResponse> instance

Lists the versions of a model in an Amazon Lookout for Vision project.

This operation requires permissions to perform the
C<lookoutvision:ListModels> operation.


=head2 ListProjects

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutVision::ListProjects>

Returns: a L<Paws::LookoutVision::ListProjectsResponse> instance

Lists the Amazon Lookout for Vision projects in your AWS account.

This operation requires permissions to perform the
C<lookoutvision:ListProjects> operation.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutVision::ListTagsForResource>

Returns: a L<Paws::LookoutVision::ListTagsForResourceResponse> instance

Returns a list of tags attached to the specified Amazon Lookout for
Vision model.

This operation requires permissions to perform the
C<lookoutvision:ListTagsForResource> operation.


=head2 StartModel

=over

=item MinInferenceUnits => Int

=item ModelVersion => Str

=item ProjectName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutVision::StartModel>

Returns: a L<Paws::LookoutVision::StartModelResponse> instance

Starts the running of the version of an Amazon Lookout for Vision
model. Starting a model takes a while to complete. To check the current
state of the model, use DescribeModel.

A model is ready to use when its status is C<HOSTED>.

Once the model is running, you can detect custom labels in new images
by calling DetectAnomalies.

You are charged for the amount of time that the model is running. To
stop a running model, call StopModel.

This operation requires permissions to perform the
C<lookoutvision:StartModel> operation.


=head2 StopModel

=over

=item ModelVersion => Str

=item ProjectName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutVision::StopModel>

Returns: a L<Paws::LookoutVision::StopModelResponse> instance

Stops the hosting of a running model. The operation might take a while
to complete. To check the current status, call DescribeModel.

After the model hosting stops, the C<Status> of the model is
C<TRAINED>.

This operation requires permissions to perform the
C<lookoutvision:StopModel> operation.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::LookoutVision::Tag>]


=back

Each argument is described in detail in: L<Paws::LookoutVision::TagResource>

Returns: a L<Paws::LookoutVision::TagResourceResponse> instance

Adds one or more key-value tags to an Amazon Lookout for Vision model.
For more information, see I<Tagging a model> in the I<Amazon Lookout
for Vision Developer Guide>.

This operation requires permissions to perform the
C<lookoutvision:TagResource> operation.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LookoutVision::UntagResource>

Returns: a L<Paws::LookoutVision::UntagResourceResponse> instance

Removes one or more tags from an Amazon Lookout for Vision model. For
more information, see I<Tagging a model> in the I<Amazon Lookout for
Vision Developer Guide>.

This operation requires permissions to perform the
C<lookoutvision:UntagResource> operation.


=head2 UpdateDatasetEntries

=over

=item Changes => Str

=item DatasetType => Str

=item ProjectName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutVision::UpdateDatasetEntries>

Returns: a L<Paws::LookoutVision::UpdateDatasetEntriesResponse> instance

Adds one or more JSON Line entries to a dataset. A JSON Line includes
information about an image used for training or testing an Amazon
Lookout for Vision model. The following is an example JSON Line.

Updating a dataset might take a while to complete. To check the current
status, call DescribeDataset and check the C<Status> field in the
response.

This operation requires permissions to perform the
C<lookoutvision:UpdateDatasetEntries> operation.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDatasetEntries(sub { },DatasetType => Str, ProjectName => Str, [AfterCreationDate => Str, AnomalyClass => Str, BeforeCreationDate => Str, Labeled => Bool, MaxResults => Int, NextToken => Str, SourceRefContains => Str])

=head2 ListAllDatasetEntries(DatasetType => Str, ProjectName => Str, [AfterCreationDate => Str, AnomalyClass => Str, BeforeCreationDate => Str, Labeled => Bool, MaxResults => Int, NextToken => Str, SourceRefContains => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatasetEntries, passing the object as the first parameter, and the string 'DatasetEntries' as the second parameter 

If not, it will return a a L<Paws::LookoutVision::ListDatasetEntriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModels(sub { },ProjectName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllModels(ProjectName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Models, passing the object as the first parameter, and the string 'Models' as the second parameter 

If not, it will return a a L<Paws::LookoutVision::ListModelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjects(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllProjects([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Projects, passing the object as the first parameter, and the string 'Projects' as the second parameter 

If not, it will return a a L<Paws::LookoutVision::ListProjectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

