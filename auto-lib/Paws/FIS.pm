package Paws::FIS;
  use Moose;
  sub service { 'fis' }
  sub signing_name { 'fis' }
  sub version { '2020-12-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateExperimentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::CreateExperimentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExperimentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::DeleteExperimentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::GetAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::GetExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExperimentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::GetExperimentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::ListActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExperiments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::ListExperiments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExperimentTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::ListExperimentTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::StartExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::StopExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateExperimentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::UpdateExperimentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateExperimentTemplate DeleteExperimentTemplate GetAction GetExperiment GetExperimentTemplate ListActions ListExperiments ListExperimentTemplates ListTagsForResource StartExperiment StopExperiment TagResource UntagResource UpdateExperimentTemplate / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS - Perl Interface to AWS AWS Fault Injection Simulator

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('FIS');
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

AWS Fault Injection Simulator is a managed service that enables you to
perform fault injection experiments on your AWS workloads. For more
information, see the AWS Fault Injection Simulator User Guide
(https://docs.aws.amazon.com/fis/latest/userguide/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01>


=head1 METHODS

=head2 CreateExperimentTemplate

=over

=item Actions => L<Paws::FIS::CreateExperimentTemplateActionInputMap>

=item ClientToken => Str

=item Description => Str

=item RoleArn => Str

=item StopConditions => ArrayRef[L<Paws::FIS::CreateExperimentTemplateStopConditionInput>]

=item [Tags => L<Paws::FIS::TagMap>]

=item [Targets => L<Paws::FIS::CreateExperimentTemplateTargetInputMap>]


=back

Each argument is described in detail in: L<Paws::FIS::CreateExperimentTemplate>

Returns: a L<Paws::FIS::CreateExperimentTemplateResponse> instance

Creates an experiment template.

To create a template, specify the following information:

=over

=item *

B<Targets>: A target can be a specific resource in your AWS
environment, or one or more resources that match criteria that you
specify, for example, resources that have specific tags.

=item *

B<Actions>: The actions to carry out on the target. You can specify
multiple actions, the duration of each action, and when to start each
action during an experiment.

=item *

B<Stop conditions>: If a stop condition is triggered while an
experiment is running, the experiment is automatically stopped. You can
define a stop condition as a CloudWatch alarm.

=back

For more information, see the AWS Fault Injection Simulator User Guide
(https://docs.aws.amazon.com/fis/latest/userguide/).


=head2 DeleteExperimentTemplate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::FIS::DeleteExperimentTemplate>

Returns: a L<Paws::FIS::DeleteExperimentTemplateResponse> instance

Deletes the specified experiment template.


=head2 GetAction

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::FIS::GetAction>

Returns: a L<Paws::FIS::GetActionResponse> instance

Gets information about the specified AWS FIS action.


=head2 GetExperiment

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::FIS::GetExperiment>

Returns: a L<Paws::FIS::GetExperimentResponse> instance

Gets information about the specified experiment.


=head2 GetExperimentTemplate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::FIS::GetExperimentTemplate>

Returns: a L<Paws::FIS::GetExperimentTemplateResponse> instance

Gets information about the specified experiment template.


=head2 ListActions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FIS::ListActions>

Returns: a L<Paws::FIS::ListActionsResponse> instance

Lists the available AWS FIS actions.


=head2 ListExperiments

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FIS::ListExperiments>

Returns: a L<Paws::FIS::ListExperimentsResponse> instance

Lists your experiments.


=head2 ListExperimentTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FIS::ListExperimentTemplates>

Returns: a L<Paws::FIS::ListExperimentTemplatesResponse> instance

Lists your experiment templates.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::FIS::ListTagsForResource>

Returns: a L<Paws::FIS::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.


=head2 StartExperiment

=over

=item ClientToken => Str

=item ExperimentTemplateId => Str

=item [Tags => L<Paws::FIS::TagMap>]


=back

Each argument is described in detail in: L<Paws::FIS::StartExperiment>

Returns: a L<Paws::FIS::StartExperimentResponse> instance

Starts running an experiment from the specified experiment template.


=head2 StopExperiment

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::FIS::StopExperiment>

Returns: a L<Paws::FIS::StopExperimentResponse> instance

Stops the specified experiment.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::FIS::TagMap>


=back

Each argument is described in detail in: L<Paws::FIS::TagResource>

Returns: a L<Paws::FIS::TagResourceResponse> instance

Applies the specified tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item [TagKeys => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::FIS::UntagResource>

Returns: a L<Paws::FIS::UntagResourceResponse> instance

Removes the specified tags from the specified resource.


=head2 UpdateExperimentTemplate

=over

=item Id => Str

=item [Actions => L<Paws::FIS::UpdateExperimentTemplateActionInputMap>]

=item [Description => Str]

=item [RoleArn => Str]

=item [StopConditions => ArrayRef[L<Paws::FIS::UpdateExperimentTemplateStopConditionInput>]]

=item [Targets => L<Paws::FIS::UpdateExperimentTemplateTargetInputMap>]


=back

Each argument is described in detail in: L<Paws::FIS::UpdateExperimentTemplate>

Returns: a L<Paws::FIS::UpdateExperimentTemplateResponse> instance

Updates the specified experiment template.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

