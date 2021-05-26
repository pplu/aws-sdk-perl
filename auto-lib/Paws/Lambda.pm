package Paws::Lambda;
  use Moose;
  sub service { 'lambda' }
  sub signing_name { 'lambda' }
  sub version { '2015-03-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AddLayerVersionPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::AddLayerVersionPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::AddPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunctionConcurrency {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteFunctionConcurrency', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunctionEventInvokeConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteFunctionEventInvokeConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLayerVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteLayerVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProvisionedConcurrencyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteProvisionedConcurrencyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunctionConcurrency {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunctionConcurrency', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunctionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunctionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunctionEventInvokeConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunctionEventInvokeConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLayerVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetLayerVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLayerVersionByArn {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetLayerVersionByArn', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLayerVersionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetLayerVersionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProvisionedConcurrencyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetProvisionedConcurrencyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Invoke {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::Invoke', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeAsync {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::InvokeAsync', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventSourceMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListEventSourceMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFunctionEventInvokeConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListFunctionEventInvokeConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFunctions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListFunctions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLayers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListLayers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLayerVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListLayerVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProvisionedConcurrencyConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListProvisionedConcurrencyConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVersionsByFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListVersionsByFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishLayerVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PublishLayerVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PublishVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFunctionConcurrency {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PutFunctionConcurrency', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFunctionEventInvokeConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PutFunctionEventInvokeConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutProvisionedConcurrencyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PutProvisionedConcurrencyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveLayerVersionPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::RemoveLayerVersionPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemovePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::RemovePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunctionCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateFunctionCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunctionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateFunctionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunctionEventInvokeConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateFunctionEventInvokeConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListAliases(@_, Marker => $next_result->NextMarker);
        push @{ $result->Aliases }, @{ $next_result->Aliases };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
        $result = $self->ListAliases(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
    }

    return undef
  }
  sub ListAllEventSourceMappings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventSourceMappings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListEventSourceMappings(@_, Marker => $next_result->NextMarker);
        push @{ $result->EventSourceMappings }, @{ $next_result->EventSourceMappings };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'EventSourceMappings') foreach (@{ $result->EventSourceMappings });
        $result = $self->ListEventSourceMappings(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'EventSourceMappings') foreach (@{ $result->EventSourceMappings });
    }

    return undef
  }
  sub ListAllFunctionEventInvokeConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFunctionEventInvokeConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListFunctionEventInvokeConfigs(@_, Marker => $next_result->NextMarker);
        push @{ $result->FunctionEventInvokeConfigs }, @{ $next_result->FunctionEventInvokeConfigs };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'FunctionEventInvokeConfigs') foreach (@{ $result->FunctionEventInvokeConfigs });
        $result = $self->ListFunctionEventInvokeConfigs(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'FunctionEventInvokeConfigs') foreach (@{ $result->FunctionEventInvokeConfigs });
    }

    return undef
  }
  sub ListAllFunctions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFunctions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListFunctions(@_, Marker => $next_result->NextMarker);
        push @{ $result->Functions }, @{ $next_result->Functions };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Functions') foreach (@{ $result->Functions });
        $result = $self->ListFunctions(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Functions') foreach (@{ $result->Functions });
    }

    return undef
  }
  sub ListAllLayers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLayers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListLayers(@_, Marker => $next_result->NextMarker);
        push @{ $result->Layers }, @{ $next_result->Layers };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Layers') foreach (@{ $result->Layers });
        $result = $self->ListLayers(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Layers') foreach (@{ $result->Layers });
    }

    return undef
  }
  sub ListAllLayerVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLayerVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListLayerVersions(@_, Marker => $next_result->NextMarker);
        push @{ $result->LayerVersions }, @{ $next_result->LayerVersions };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'LayerVersions') foreach (@{ $result->LayerVersions });
        $result = $self->ListLayerVersions(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'LayerVersions') foreach (@{ $result->LayerVersions });
    }

    return undef
  }
  sub ListAllProvisionedConcurrencyConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProvisionedConcurrencyConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListProvisionedConcurrencyConfigs(@_, Marker => $next_result->NextMarker);
        push @{ $result->ProvisionedConcurrencyConfigs }, @{ $next_result->ProvisionedConcurrencyConfigs };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'ProvisionedConcurrencyConfigs') foreach (@{ $result->ProvisionedConcurrencyConfigs });
        $result = $self->ListProvisionedConcurrencyConfigs(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'ProvisionedConcurrencyConfigs') foreach (@{ $result->ProvisionedConcurrencyConfigs });
    }

    return undef
  }
  sub ListAllVersionsByFunction {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVersionsByFunction(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListVersionsByFunction(@_, Marker => $next_result->NextMarker);
        push @{ $result->Versions }, @{ $next_result->Versions };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Versions') foreach (@{ $result->Versions });
        $result = $self->ListVersionsByFunction(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Versions') foreach (@{ $result->Versions });
    }

    return undef
  }


  sub operations { qw/AddLayerVersionPermission AddPermission CreateAlias CreateEventSourceMapping CreateFunction DeleteAlias DeleteEventSourceMapping DeleteFunction DeleteFunctionConcurrency DeleteFunctionEventInvokeConfig DeleteLayerVersion DeleteProvisionedConcurrencyConfig GetAccountSettings GetAlias GetEventSourceMapping GetFunction GetFunctionConcurrency GetFunctionConfiguration GetFunctionEventInvokeConfig GetLayerVersion GetLayerVersionByArn GetLayerVersionPolicy GetPolicy GetProvisionedConcurrencyConfig Invoke InvokeAsync ListAliases ListEventSourceMappings ListFunctionEventInvokeConfigs ListFunctions ListLayers ListLayerVersions ListProvisionedConcurrencyConfigs ListTags ListVersionsByFunction PublishLayerVersion PublishVersion PutFunctionConcurrency PutFunctionEventInvokeConfig PutProvisionedConcurrencyConfig RemoveLayerVersionPermission RemovePermission TagResource UntagResource UpdateAlias UpdateEventSourceMapping UpdateFunctionCode UpdateFunctionConfiguration UpdateFunctionEventInvokeConfig / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda - Perl Interface to AWS AWS Lambda

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Lambda');
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

AWS Lambda

B<Overview>

This is the I<AWS Lambda API Reference>. The AWS Lambda Developer Guide
provides additional information. For the service overview, see What is
AWS Lambda (https://docs.aws.amazon.com/lambda/latest/dg/welcome.html),
and for information about how the service works, see AWS Lambda: How it
Works
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html)
in the B<AWS Lambda Developer Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31>


=head1 METHODS

=head2 AddLayerVersionPermission

=over

=item Action => Str

=item LayerName => Str

=item Principal => Str

=item StatementId => Str

=item VersionNumber => Int

=item [OrganizationId => Str]

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::AddLayerVersionPermission>

Returns: a L<Paws::Lambda::AddLayerVersionPermissionResponse> instance

Adds permissions to the resource-based policy of a version of an AWS
Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
Use this action to grant layer usage permission to other accounts. You
can grant permission to a single account, all AWS accounts, or all
accounts in an organization.

To revoke permission, call RemoveLayerVersionPermission with the
statement ID that you specified when you added it.


=head2 AddPermission

=over

=item Action => Str

=item FunctionName => Str

=item Principal => Str

=item StatementId => Str

=item [EventSourceToken => Str]

=item [Qualifier => Str]

=item [RevisionId => Str]

=item [SourceAccount => Str]

=item [SourceArn => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::AddPermission>

Returns: a L<Paws::Lambda::AddPermissionResponse> instance

Grants an AWS service or another account permission to use a function.
You can apply the policy at the function level, or specify a qualifier
to restrict access to a single version or alias. If you use a
qualifier, the invoker must use the full Amazon Resource Name (ARN) of
that version or alias to invoke the function.

To grant permission to another account, specify the account ID as the
C<Principal>. For AWS services, the principal is a domain-style
identifier defined by the service, like C<s3.amazonaws.com> or
C<sns.amazonaws.com>. For AWS services, you can also specify the ARN or
owning account of the associated resource as the C<SourceArn> or
C<SourceAccount>. If you grant permission to a service principal
without specifying the source, other accounts could potentially
configure resources in their account to invoke your Lambda function.

This action adds a statement to a resource-based permissions policy for
the function. For more information about function policies, see Lambda
Function Policies
(https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html).


=head2 CreateAlias

=over

=item FunctionName => Str

=item FunctionVersion => Str

=item Name => Str

=item [Description => Str]

=item [RoutingConfig => L<Paws::Lambda::AliasRoutingConfiguration>]


=back

Each argument is described in detail in: L<Paws::Lambda::CreateAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

Creates an alias
(https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)
for a Lambda function version. Use aliases to provide clients with a
function identifier that you can update to invoke a different version.

You can also map an alias to split invocation requests between two
versions. Use the C<RoutingConfig> parameter to specify a second
version and the percentage of invocation requests that it receives.


=head2 CreateEventSourceMapping

=over

=item EventSourceArn => Str

=item FunctionName => Str

=item [BatchSize => Int]

=item [BisectBatchOnFunctionError => Bool]

=item [DestinationConfig => L<Paws::Lambda::DestinationConfig>]

=item [Enabled => Bool]

=item [MaximumBatchingWindowInSeconds => Int]

=item [MaximumRecordAgeInSeconds => Int]

=item [MaximumRetryAttempts => Int]

=item [ParallelizationFactor => Int]

=item [StartingPosition => Str]

=item [StartingPositionTimestamp => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::CreateEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

Creates a mapping between an event source and an AWS Lambda function.
Lambda reads items from the event source and triggers the function.

For details about each event source type, see the following topics.

=over

=item *

Using AWS Lambda with Amazon DynamoDB
(https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html)

=item *

Using AWS Lambda with Amazon Kinesis
(https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html)

=item *

Using AWS Lambda with Amazon SQS
(https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html)

=back

The following error handling options are only available for stream
sources (DynamoDB and Kinesis):

=over

=item *

C<BisectBatchOnFunctionError> - If the function returns an error, split
the batch in two and retry.

=item *

C<DestinationConfig> - Send discarded records to an Amazon SQS queue or
Amazon SNS topic.

=item *

C<MaximumRecordAgeInSeconds> - Discard records older than the specified
age.

=item *

C<MaximumRetryAttempts> - Discard records after the specified number of
retries.

=item *

C<ParallelizationFactor> - Process multiple batches from each shard
concurrently.

=back



=head2 CreateFunction

=over

=item Code => L<Paws::Lambda::FunctionCode>

=item FunctionName => Str

=item Handler => Str

=item Role => Str

=item Runtime => Str

=item [DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>]

=item [Description => Str]

=item [Environment => L<Paws::Lambda::Environment>]

=item [KMSKeyArn => Str]

=item [Layers => ArrayRef[Str|Undef]]

=item [MemorySize => Int]

=item [Publish => Bool]

=item [Tags => L<Paws::Lambda::Tags>]

=item [Timeout => Int]

=item [TracingConfig => L<Paws::Lambda::TracingConfig>]

=item [VpcConfig => L<Paws::Lambda::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Lambda::CreateFunction>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Creates a Lambda function. To create a function, you need a deployment
package
(https://docs.aws.amazon.com/lambda/latest/dg/deployment-package-v2.html)
and an execution role
(https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role).
The deployment package contains your function code. The execution role
grants the function permission to use AWS services, such as Amazon
CloudWatch Logs for log streaming and AWS X-Ray for request tracing.

When you create a function, Lambda provisions an instance of the
function and its supporting resources. If your function connects to a
VPC, this process can take a minute or so. During this time, you can't
invoke or modify the function. The C<State>, C<StateReason>, and
C<StateReasonCode> fields in the response from GetFunctionConfiguration
indicate when the function is ready to invoke. For more information,
see Function States
(https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

A function has an unpublished version, and can have published versions
and aliases. The unpublished version changes when you update your
function's code and configuration. A published version is a snapshot of
your function code and configuration that can't be changed. An alias is
a named resource that maps to a version, and can be changed to map to a
different version. Use the C<Publish> parameter to create version C<1>
of your function from its initial configuration.

The other parameters let you configure version-specific and
function-level settings. You can modify version-specific settings later
with UpdateFunctionConfiguration. Function-level settings apply to both
the unpublished and published versions of the function, and include
tags (TagResource) and per-function concurrency limits
(PutFunctionConcurrency).

If another account or an AWS service invokes your function, use
AddPermission to grant permission by creating a resource-based IAM
policy. You can grant permissions at the function level, on a version,
or on an alias.

To invoke your function directly, use Invoke. To invoke your function
in response to events in other AWS services, create an event source
mapping (CreateEventSourceMapping), or configure a function trigger in
the other service. For more information, see Invoking Functions
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html).


=head2 DeleteAlias

=over

=item FunctionName => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteAlias>

Returns: nothing

Deletes a Lambda function alias
(https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).


=head2 DeleteEventSourceMapping

=over

=item UUID => Str


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

Deletes an event source mapping
(https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html).
You can get the identifier of a mapping from the output of
ListEventSourceMappings.

When you delete an event source mapping, it enters a C<Deleting> state
and might not be completely deleted for several seconds.


=head2 DeleteFunction

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteFunction>

Returns: nothing

Deletes a Lambda function. To delete a specific function version, use
the C<Qualifier> parameter. Otherwise, all versions and aliases are
deleted.

To delete Lambda event source mappings that invoke a function, use
DeleteEventSourceMapping. For AWS services and resources that invoke
your function directly, delete the trigger in the service where you
originally configured it.


=head2 DeleteFunctionConcurrency

=over

=item FunctionName => Str


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteFunctionConcurrency>

Returns: nothing

Removes a concurrent execution limit from a function.


=head2 DeleteFunctionEventInvokeConfig

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteFunctionEventInvokeConfig>

Returns: nothing

Deletes the configuration for asynchronous invocation for a function,
version, or alias.

To configure options for asynchronous invocation, use
PutFunctionEventInvokeConfig.


=head2 DeleteLayerVersion

=over

=item LayerName => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteLayerVersion>

Returns: nothing

Deletes a version of an AWS Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
Deleted versions can no longer be viewed or added to functions. To
avoid breaking functions, a copy of the version remains in Lambda until
no functions refer to it.


=head2 DeleteProvisionedConcurrencyConfig

=over

=item FunctionName => Str

=item Qualifier => Str


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteProvisionedConcurrencyConfig>

Returns: nothing

Deletes the provisioned concurrency configuration for a function.


=head2 GetAccountSettings






Each argument is described in detail in: L<Paws::Lambda::GetAccountSettings>

Returns: a L<Paws::Lambda::GetAccountSettingsResponse> instance

Retrieves details about your account's limits
(https://docs.aws.amazon.com/lambda/latest/dg/limits.html) and usage in
an AWS Region.


=head2 GetAlias

=over

=item FunctionName => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

Returns details about a Lambda function alias
(https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).


=head2 GetEventSourceMapping

=over

=item UUID => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

Returns details about an event source mapping. You can get the
identifier of a mapping from the output of ListEventSourceMappings.


=head2 GetFunction

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::GetFunction>

Returns: a L<Paws::Lambda::GetFunctionResponse> instance

Returns information about the function or function version, with a link
to download the deployment package that's valid for 10 minutes. If you
specify a function version, only details that are specific to that
version are returned.


=head2 GetFunctionConcurrency

=over

=item FunctionName => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetFunctionConcurrency>

Returns: a L<Paws::Lambda::GetFunctionConcurrencyResponse> instance

Returns details about the reserved concurrency configuration for a
function. To set a concurrency limit for a function, use
PutFunctionConcurrency.


=head2 GetFunctionConfiguration

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::GetFunctionConfiguration>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Returns the version-specific settings of a Lambda function or version.
The output includes only options that can vary between versions of a
function. To modify these settings, use UpdateFunctionConfiguration.

To get all of a function's details, including function-level settings,
use GetFunction.


=head2 GetFunctionEventInvokeConfig

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::GetFunctionEventInvokeConfig>

Returns: a L<Paws::Lambda::FunctionEventInvokeConfig> instance

Retrieves the configuration for asynchronous invocation for a function,
version, or alias.

To configure options for asynchronous invocation, use
PutFunctionEventInvokeConfig.


=head2 GetLayerVersion

=over

=item LayerName => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Lambda::GetLayerVersion>

Returns: a L<Paws::Lambda::GetLayerVersionResponse> instance

Returns information about a version of an AWS Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html),
with a link to download the layer archive that's valid for 10 minutes.


=head2 GetLayerVersionByArn

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetLayerVersionByArn>

Returns: a L<Paws::Lambda::GetLayerVersionResponse> instance

Returns information about a version of an AWS Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html),
with a link to download the layer archive that's valid for 10 minutes.


=head2 GetLayerVersionPolicy

=over

=item LayerName => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Lambda::GetLayerVersionPolicy>

Returns: a L<Paws::Lambda::GetLayerVersionPolicyResponse> instance

Returns the permission policy for a version of an AWS Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
For more information, see AddLayerVersionPermission.


=head2 GetPolicy

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::GetPolicy>

Returns: a L<Paws::Lambda::GetPolicyResponse> instance

Returns the resource-based IAM policy
(https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html)
for a function, version, or alias.


=head2 GetProvisionedConcurrencyConfig

=over

=item FunctionName => Str

=item Qualifier => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetProvisionedConcurrencyConfig>

Returns: a L<Paws::Lambda::GetProvisionedConcurrencyConfigResponse> instance

Retrieves the provisioned concurrency configuration for a function's
alias or version.


=head2 Invoke

=over

=item FunctionName => Str

=item [ClientContext => Str]

=item [InvocationType => Str]

=item [LogType => Str]

=item [Payload => Str]

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::Invoke>

Returns: a L<Paws::Lambda::InvocationResponse> instance

Invokes a Lambda function. You can invoke a function synchronously (and
wait for the response), or asynchronously. To invoke a function
asynchronously, set C<InvocationType> to C<Event>.

For synchronous invocation
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html),
details about the function response, including errors, are included in
the response body and headers. For either invocation type, you can find
more information in the execution log
(https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html)
and trace
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html).

When an error occurs, your function may be invoked multiple times.
Retry behavior varies by error type, client, event source, and
invocation type. For example, if you invoke a function asynchronously
and it returns an error, Lambda executes the function up to two more
times. For more information, see Retry Behavior
(https://docs.aws.amazon.com/lambda/latest/dg/retries-on-errors.html).

For asynchronous invocation
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html),
Lambda adds events to a queue before sending them to your function. If
your function does not have enough capacity to keep up with the queue,
events may be lost. Occasionally, your function may receive the same
event multiple times, even if no error occurs. To retain events that
were not processed, configure your function with a dead-letter queue
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq).

The status code in the API response doesn't reflect function errors.
Error codes are reserved for errors that prevent your function from
executing, such as permissions errors, limit errors
(https://docs.aws.amazon.com/lambda/latest/dg/limits.html), or issues
with your function's code and configuration. For example, Lambda
returns C<TooManyRequestsException> if executing the function would
cause you to exceed a concurrency limit at either the account level
(C<ConcurrentInvocationLimitExceeded>) or function level
(C<ReservedFunctionConcurrentInvocationLimitExceeded>).

For functions with a long timeout, your client might be disconnected
during synchronous invocation while it waits for a response. Configure
your HTTP client, SDK, firewall, proxy, or operating system to allow
for long connections with timeout or keep-alive settings.

This operation requires permission for the C<lambda:InvokeFunction>
action.


=head2 InvokeAsync

=over

=item FunctionName => Str

=item InvokeArgs => Str


=back

Each argument is described in detail in: L<Paws::Lambda::InvokeAsync>

Returns: a L<Paws::Lambda::InvokeAsyncResponse> instance

For asynchronous function invocation, use Invoke.

Invokes a function asynchronously.


=head2 ListAliases

=over

=item FunctionName => Str

=item [FunctionVersion => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListAliases>

Returns: a L<Paws::Lambda::ListAliasesResponse> instance

Returns a list of aliases
(https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)
for a Lambda function.


=head2 ListEventSourceMappings

=over

=item [EventSourceArn => Str]

=item [FunctionName => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListEventSourceMappings>

Returns: a L<Paws::Lambda::ListEventSourceMappingsResponse> instance

Lists event source mappings. Specify an C<EventSourceArn> to only show
event source mappings for a single event source.


=head2 ListFunctionEventInvokeConfigs

=over

=item FunctionName => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListFunctionEventInvokeConfigs>

Returns: a L<Paws::Lambda::ListFunctionEventInvokeConfigsResponse> instance

Retrieves a list of configurations for asynchronous invocation for a
function.

To configure options for asynchronous invocation, use
PutFunctionEventInvokeConfig.


=head2 ListFunctions

=over

=item [FunctionVersion => Str]

=item [Marker => Str]

=item [MasterRegion => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListFunctions>

Returns: a L<Paws::Lambda::ListFunctionsResponse> instance

Returns a list of Lambda functions, with the version-specific
configuration of each. Lambda returns up to 50 functions per call.

Set C<FunctionVersion> to C<ALL> to include all published versions of
each function in addition to the unpublished version. To get more
information about a function or version, use GetFunction.


=head2 ListLayers

=over

=item [CompatibleRuntime => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListLayers>

Returns: a L<Paws::Lambda::ListLayersResponse> instance

Lists AWS Lambda layers
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)
and shows information about the latest version of each. Specify a
runtime identifier
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html) to
list only layers that indicate that they're compatible with that
runtime.


=head2 ListLayerVersions

=over

=item LayerName => Str

=item [CompatibleRuntime => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListLayerVersions>

Returns: a L<Paws::Lambda::ListLayerVersionsResponse> instance

Lists the versions of an AWS Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
Versions that have been deleted aren't listed. Specify a runtime
identifier
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html) to
list only versions that indicate that they're compatible with that
runtime.


=head2 ListProvisionedConcurrencyConfigs

=over

=item FunctionName => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListProvisionedConcurrencyConfigs>

Returns: a L<Paws::Lambda::ListProvisionedConcurrencyConfigsResponse> instance

Retrieves a list of provisioned concurrency configurations for a
function.


=head2 ListTags

=over

=item Resource => Str


=back

Each argument is described in detail in: L<Paws::Lambda::ListTags>

Returns: a L<Paws::Lambda::ListTagsResponse> instance

Returns a function's tags
(https://docs.aws.amazon.com/lambda/latest/dg/tagging.html). You can
also view tags with GetFunction.


=head2 ListVersionsByFunction

=over

=item FunctionName => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListVersionsByFunction>

Returns: a L<Paws::Lambda::ListVersionsByFunctionResponse> instance

Returns a list of versions
(https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html),
with the version-specific configuration of each. Lambda returns up to
50 versions per call.


=head2 PublishLayerVersion

=over

=item Content => L<Paws::Lambda::LayerVersionContentInput>

=item LayerName => Str

=item [CompatibleRuntimes => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [LicenseInfo => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::PublishLayerVersion>

Returns: a L<Paws::Lambda::PublishLayerVersionResponse> instance

Creates an AWS Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)
from a ZIP archive. Each time you call C<PublishLayerVersion> with the
same layer name, a new version is created.

Add layers to your function with CreateFunction or
UpdateFunctionConfiguration.


=head2 PublishVersion

=over

=item FunctionName => Str

=item [CodeSha256 => Str]

=item [Description => Str]

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::PublishVersion>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Creates a version
(https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)
from the current code and configuration of a function. Use versions to
create a snapshot of your function code and configuration that doesn't
change.

AWS Lambda doesn't publish a version if the function's configuration
and code haven't changed since the last version. Use UpdateFunctionCode
or UpdateFunctionConfiguration to update the function before publishing
a version.

Clients can invoke versions directly or with an alias. To create an
alias, use CreateAlias.


=head2 PutFunctionConcurrency

=over

=item FunctionName => Str

=item ReservedConcurrentExecutions => Int


=back

Each argument is described in detail in: L<Paws::Lambda::PutFunctionConcurrency>

Returns: a L<Paws::Lambda::Concurrency> instance

Sets the maximum number of simultaneous executions for a function, and
reserves capacity for that concurrency level.

Concurrency settings apply to the function as a whole, including all
published versions and the unpublished version. Reserving concurrency
both ensures that your function has capacity to process the specified
number of events simultaneously, and prevents it from scaling beyond
that level. Use GetFunction to see the current setting for a function.

Use GetAccountSettings to see your Regional concurrency limit. You can
reserve concurrency for as many functions as you like, as long as you
leave at least 100 simultaneous executions unreserved for functions
that aren't configured with a per-function limit. For more information,
see Managing Concurrency
(https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html).


=head2 PutFunctionEventInvokeConfig

=over

=item FunctionName => Str

=item [DestinationConfig => L<Paws::Lambda::DestinationConfig>]

=item [MaximumEventAgeInSeconds => Int]

=item [MaximumRetryAttempts => Int]

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::PutFunctionEventInvokeConfig>

Returns: a L<Paws::Lambda::FunctionEventInvokeConfig> instance

Configures options for asynchronous invocation
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html) on
a function, version, or alias. If a configuration already exists for a
function, version, or alias, this operation overwrites it. If you
exclude any settings, they are removed. To set one option without
affecting existing settings for other options, use
PutFunctionEventInvokeConfig.

By default, Lambda retries an asynchronous invocation twice if the
function returns an error. It retains events in a queue for up to six
hours. When an event fails all processing attempts or stays in the
asynchronous invocation queue for too long, Lambda discards it. To
retain discarded events, configure a dead-letter queue with
UpdateFunctionConfiguration.

To send an invocation record to a queue, topic, function, or event bus,
specify a destination
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations).
You can configure separate destinations for successful invocations
(on-success) and events that fail all processing attempts (on-failure).
You can configure destinations in addition to or instead of a
dead-letter queue.


=head2 PutProvisionedConcurrencyConfig

=over

=item FunctionName => Str

=item ProvisionedConcurrentExecutions => Int

=item Qualifier => Str


=back

Each argument is described in detail in: L<Paws::Lambda::PutProvisionedConcurrencyConfig>

Returns: a L<Paws::Lambda::PutProvisionedConcurrencyConfigResponse> instance

Adds a provisioned concurrency configuration to a function's alias or
version.


=head2 RemoveLayerVersionPermission

=over

=item LayerName => Str

=item StatementId => Str

=item VersionNumber => Int

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::RemoveLayerVersionPermission>

Returns: nothing

Removes a statement from the permissions policy for a version of an AWS
Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
For more information, see AddLayerVersionPermission.


=head2 RemovePermission

=over

=item FunctionName => Str

=item StatementId => Str

=item [Qualifier => Str]

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::RemovePermission>

Returns: nothing

Revokes function-use permission from an AWS service or another account.
You can get the ID of the statement from the output of GetPolicy.


=head2 TagResource

=over

=item Resource => Str

=item Tags => L<Paws::Lambda::Tags>


=back

Each argument is described in detail in: L<Paws::Lambda::TagResource>

Returns: nothing

Adds tags (https://docs.aws.amazon.com/lambda/latest/dg/tagging.html)
to a function.


=head2 UntagResource

=over

=item Resource => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Lambda::UntagResource>

Returns: nothing

Removes tags
(https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) from a
function.


=head2 UpdateAlias

=over

=item FunctionName => Str

=item Name => Str

=item [Description => Str]

=item [FunctionVersion => Str]

=item [RevisionId => Str]

=item [RoutingConfig => L<Paws::Lambda::AliasRoutingConfiguration>]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

Updates the configuration of a Lambda function alias
(https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).


=head2 UpdateEventSourceMapping

=over

=item UUID => Str

=item [BatchSize => Int]

=item [BisectBatchOnFunctionError => Bool]

=item [DestinationConfig => L<Paws::Lambda::DestinationConfig>]

=item [Enabled => Bool]

=item [FunctionName => Str]

=item [MaximumBatchingWindowInSeconds => Int]

=item [MaximumRecordAgeInSeconds => Int]

=item [MaximumRetryAttempts => Int]

=item [ParallelizationFactor => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

Updates an event source mapping. You can change the function that AWS
Lambda invokes, or pause invocation and resume later from the same
location.

The following error handling options are only available for stream
sources (DynamoDB and Kinesis):

=over

=item *

C<BisectBatchOnFunctionError> - If the function returns an error, split
the batch in two and retry.

=item *

C<DestinationConfig> - Send discarded records to an Amazon SQS queue or
Amazon SNS topic.

=item *

C<MaximumRecordAgeInSeconds> - Discard records older than the specified
age.

=item *

C<MaximumRetryAttempts> - Discard records after the specified number of
retries.

=item *

C<ParallelizationFactor> - Process multiple batches from each shard
concurrently.

=back



=head2 UpdateFunctionCode

=over

=item FunctionName => Str

=item [DryRun => Bool]

=item [Publish => Bool]

=item [RevisionId => Str]

=item [S3Bucket => Str]

=item [S3Key => Str]

=item [S3ObjectVersion => Str]

=item [ZipFile => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateFunctionCode>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Updates a Lambda function's code.

The function's code is locked when you publish a version. You can't
modify the code of a published version, only the unpublished version.


=head2 UpdateFunctionConfiguration

=over

=item FunctionName => Str

=item [DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>]

=item [Description => Str]

=item [Environment => L<Paws::Lambda::Environment>]

=item [Handler => Str]

=item [KMSKeyArn => Str]

=item [Layers => ArrayRef[Str|Undef]]

=item [MemorySize => Int]

=item [RevisionId => Str]

=item [Role => Str]

=item [Runtime => Str]

=item [Timeout => Int]

=item [TracingConfig => L<Paws::Lambda::TracingConfig>]

=item [VpcConfig => L<Paws::Lambda::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateFunctionConfiguration>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Modify the version-specific settings of a Lambda function.

When you update a function, Lambda provisions an instance of the
function and its supporting resources. If your function connects to a
VPC, this process can take a minute. During this time, you can't modify
the function, but you can still invoke it. The C<LastUpdateStatus>,
C<LastUpdateStatusReason>, and C<LastUpdateStatusReasonCode> fields in
the response from GetFunctionConfiguration indicate when the update is
complete and the function is processing events with the new
configuration. For more information, see Function States
(https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

These settings can vary between versions of a function and are locked
when you publish a version. You can't modify the configuration of a
published version, only the unpublished version.

To configure function concurrency, use PutFunctionConcurrency. To grant
invoke permissions to an account or AWS service, use AddPermission.


=head2 UpdateFunctionEventInvokeConfig

=over

=item FunctionName => Str

=item [DestinationConfig => L<Paws::Lambda::DestinationConfig>]

=item [MaximumEventAgeInSeconds => Int]

=item [MaximumRetryAttempts => Int]

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateFunctionEventInvokeConfig>

Returns: a L<Paws::Lambda::FunctionEventInvokeConfig> instance

Updates the configuration for asynchronous invocation for a function,
version, or alias.

To configure options for asynchronous invocation, use
PutFunctionEventInvokeConfig.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAliases(sub { },FunctionName => Str, [FunctionVersion => Str, Marker => Str, MaxItems => Int])

=head2 ListAllAliases(FunctionName => Str, [FunctionVersion => Str, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Aliases, passing the object as the first parameter, and the string 'Aliases' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListAliasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventSourceMappings(sub { },[EventSourceArn => Str, FunctionName => Str, Marker => Str, MaxItems => Int])

=head2 ListAllEventSourceMappings([EventSourceArn => Str, FunctionName => Str, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventSourceMappings, passing the object as the first parameter, and the string 'EventSourceMappings' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListEventSourceMappingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFunctionEventInvokeConfigs(sub { },FunctionName => Str, [Marker => Str, MaxItems => Int])

=head2 ListAllFunctionEventInvokeConfigs(FunctionName => Str, [Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FunctionEventInvokeConfigs, passing the object as the first parameter, and the string 'FunctionEventInvokeConfigs' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListFunctionEventInvokeConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFunctions(sub { },[FunctionVersion => Str, Marker => Str, MasterRegion => Str, MaxItems => Int])

=head2 ListAllFunctions([FunctionVersion => Str, Marker => Str, MasterRegion => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Functions, passing the object as the first parameter, and the string 'Functions' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListFunctionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLayers(sub { },[CompatibleRuntime => Str, Marker => Str, MaxItems => Int])

=head2 ListAllLayers([CompatibleRuntime => Str, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Layers, passing the object as the first parameter, and the string 'Layers' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListLayersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLayerVersions(sub { },LayerName => Str, [CompatibleRuntime => Str, Marker => Str, MaxItems => Int])

=head2 ListAllLayerVersions(LayerName => Str, [CompatibleRuntime => Str, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LayerVersions, passing the object as the first parameter, and the string 'LayerVersions' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListLayerVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProvisionedConcurrencyConfigs(sub { },FunctionName => Str, [Marker => Str, MaxItems => Int])

=head2 ListAllProvisionedConcurrencyConfigs(FunctionName => Str, [Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProvisionedConcurrencyConfigs, passing the object as the first parameter, and the string 'ProvisionedConcurrencyConfigs' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListProvisionedConcurrencyConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVersionsByFunction(sub { },FunctionName => Str, [Marker => Str, MaxItems => Int])

=head2 ListAllVersionsByFunction(FunctionName => Str, [Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Versions, passing the object as the first parameter, and the string 'Versions' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListVersionsByFunctionResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

