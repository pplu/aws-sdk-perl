package Paws::Schemas;
  use Moose;
  sub service { 'schemas' }
  sub signing_name { 'schemas' }
  sub version { '2019-12-02' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateDiscoverer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::CreateDiscoverer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRegistry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::CreateRegistry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::CreateSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDiscoverer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::DeleteDiscoverer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRegistry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::DeleteRegistry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::DeleteSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSchemaVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::DeleteSchemaVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCodeBinding {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::DescribeCodeBinding', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDiscoverer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::DescribeDiscoverer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRegistry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::DescribeRegistry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::DescribeSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::ExportSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCodeBindingSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::GetCodeBindingSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDiscoveredSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::GetDiscoveredSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDiscoverers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::ListDiscoverers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRegistries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::ListRegistries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::ListSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchemaVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::ListSchemaVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutCodeBinding {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::PutCodeBinding', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::SearchSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDiscoverer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::StartDiscoverer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDiscoverer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::StopDiscoverer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDiscoverer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::UpdateDiscoverer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRegistry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::UpdateRegistry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Schemas::UpdateSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDiscoverers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDiscoverers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDiscoverers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Discoverers }, @{ $next_result->Discoverers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Discoverers') foreach (@{ $result->Discoverers });
        $result = $self->ListDiscoverers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Discoverers') foreach (@{ $result->Discoverers });
    }

    return undef
  }
  sub ListAllRegistries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRegistries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRegistries(@_, NextToken => $next_result->NextToken);
        push @{ $result->Registries }, @{ $next_result->Registries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Registries') foreach (@{ $result->Registries });
        $result = $self->ListRegistries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Registries') foreach (@{ $result->Registries });
    }

    return undef
  }
  sub ListAllSchemas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchemas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSchemas(@_, NextToken => $next_result->NextToken);
        push @{ $result->Schemas }, @{ $next_result->Schemas };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
        $result = $self->ListSchemas(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
    }

    return undef
  }
  sub ListAllSchemaVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchemaVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSchemaVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->SchemaVersions }, @{ $next_result->SchemaVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SchemaVersions') foreach (@{ $result->SchemaVersions });
        $result = $self->ListSchemaVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SchemaVersions') foreach (@{ $result->SchemaVersions });
    }

    return undef
  }
  sub SearchAllSchemas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchSchemas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchSchemas(@_, NextToken => $next_result->NextToken);
        push @{ $result->Schemas }, @{ $next_result->Schemas };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
        $result = $self->SearchSchemas(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
    }

    return undef
  }


  sub operations { qw/CreateDiscoverer CreateRegistry CreateSchema DeleteDiscoverer DeleteRegistry DeleteResourcePolicy DeleteSchema DeleteSchemaVersion DescribeCodeBinding DescribeDiscoverer DescribeRegistry DescribeSchema ExportSchema GetCodeBindingSource GetDiscoveredSchema GetResourcePolicy ListDiscoverers ListRegistries ListSchemas ListSchemaVersions ListTagsForResource PutCodeBinding PutResourcePolicy SearchSchemas StartDiscoverer StopDiscoverer TagResource UntagResource UpdateDiscoverer UpdateRegistry UpdateSchema / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas - Perl Interface to AWS Schemas

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Schemas');
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

Amazon EventBridge Schema Registry

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02>


=head1 METHODS

=head2 CreateDiscoverer

=over

=item SourceArn => Str

=item [Description => Str]

=item [Tags => L<Paws::Schemas::Tags>]


=back

Each argument is described in detail in: L<Paws::Schemas::CreateDiscoverer>

Returns: a L<Paws::Schemas::CreateDiscovererResponse> instance

Creates a discoverer.


=head2 CreateRegistry

=over

=item RegistryName => Str

=item [Description => Str]

=item [Tags => L<Paws::Schemas::Tags>]


=back

Each argument is described in detail in: L<Paws::Schemas::CreateRegistry>

Returns: a L<Paws::Schemas::CreateRegistryResponse> instance

Creates a registry.


=head2 CreateSchema

=over

=item Content => Str

=item RegistryName => Str

=item SchemaName => Str

=item Type => Str

=item [Description => Str]

=item [Tags => L<Paws::Schemas::Tags>]


=back

Each argument is described in detail in: L<Paws::Schemas::CreateSchema>

Returns: a L<Paws::Schemas::CreateSchemaResponse> instance

Creates a schema definition.

Inactive schemas will be deleted after two years.


=head2 DeleteDiscoverer

=over

=item DiscovererId => Str


=back

Each argument is described in detail in: L<Paws::Schemas::DeleteDiscoverer>

Returns: nothing

Deletes a discoverer.


=head2 DeleteRegistry

=over

=item RegistryName => Str


=back

Each argument is described in detail in: L<Paws::Schemas::DeleteRegistry>

Returns: nothing

Deletes a Registry.


=head2 DeleteResourcePolicy

=over

=item [RegistryName => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::DeleteResourcePolicy>

Returns: nothing

Delete the resource-based policy attached to the specified registry.


=head2 DeleteSchema

=over

=item RegistryName => Str

=item SchemaName => Str


=back

Each argument is described in detail in: L<Paws::Schemas::DeleteSchema>

Returns: nothing

Delete a schema definition.


=head2 DeleteSchemaVersion

=over

=item RegistryName => Str

=item SchemaName => Str

=item SchemaVersion => Str


=back

Each argument is described in detail in: L<Paws::Schemas::DeleteSchemaVersion>

Returns: nothing

Delete the schema version definition


=head2 DescribeCodeBinding

=over

=item Language => Str

=item RegistryName => Str

=item SchemaName => Str

=item [SchemaVersion => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::DescribeCodeBinding>

Returns: a L<Paws::Schemas::DescribeCodeBindingResponse> instance

Describe the code binding URI.


=head2 DescribeDiscoverer

=over

=item DiscovererId => Str


=back

Each argument is described in detail in: L<Paws::Schemas::DescribeDiscoverer>

Returns: a L<Paws::Schemas::DescribeDiscovererResponse> instance

Describes the discoverer.


=head2 DescribeRegistry

=over

=item RegistryName => Str


=back

Each argument is described in detail in: L<Paws::Schemas::DescribeRegistry>

Returns: a L<Paws::Schemas::DescribeRegistryResponse> instance

Describes the registry.


=head2 DescribeSchema

=over

=item RegistryName => Str

=item SchemaName => Str

=item [SchemaVersion => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::DescribeSchema>

Returns: a L<Paws::Schemas::DescribeSchemaResponse> instance

Retrieve the schema definition.


=head2 ExportSchema

=over

=item RegistryName => Str

=item SchemaName => Str

=item Type => Str

=item [SchemaVersion => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::ExportSchema>

Returns: a L<Paws::Schemas::ExportSchemaResponse> instance




=head2 GetCodeBindingSource

=over

=item Language => Str

=item RegistryName => Str

=item SchemaName => Str

=item [SchemaVersion => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::GetCodeBindingSource>

Returns: a L<Paws::Schemas::GetCodeBindingSourceResponse> instance

Get the code binding source URI.


=head2 GetDiscoveredSchema

=over

=item Events => ArrayRef[Str|Undef]

=item Type => Str


=back

Each argument is described in detail in: L<Paws::Schemas::GetDiscoveredSchema>

Returns: a L<Paws::Schemas::GetDiscoveredSchemaResponse> instance

Get the discovered schema that was generated based on sampled events.


=head2 GetResourcePolicy

=over

=item [RegistryName => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::GetResourcePolicy>

Returns: a L<Paws::Schemas::GetResourcePolicyResponse> instance

Retrieves the resource-based policy attached to a given registry.


=head2 ListDiscoverers

=over

=item [DiscovererIdPrefix => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [SourceArnPrefix => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::ListDiscoverers>

Returns: a L<Paws::Schemas::ListDiscoverersResponse> instance

List the discoverers.


=head2 ListRegistries

=over

=item [Limit => Int]

=item [NextToken => Str]

=item [RegistryNamePrefix => Str]

=item [Scope => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::ListRegistries>

Returns: a L<Paws::Schemas::ListRegistriesResponse> instance

List the registries.


=head2 ListSchemas

=over

=item RegistryName => Str

=item [Limit => Int]

=item [NextToken => Str]

=item [SchemaNamePrefix => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::ListSchemas>

Returns: a L<Paws::Schemas::ListSchemasResponse> instance

List the schemas.


=head2 ListSchemaVersions

=over

=item RegistryName => Str

=item SchemaName => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::ListSchemaVersions>

Returns: a L<Paws::Schemas::ListSchemaVersionsResponse> instance

Provides a list of the schema versions and related information.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Schemas::ListTagsForResource>

Returns: a L<Paws::Schemas::ListTagsForResourceResponse> instance

Get tags for resource.


=head2 PutCodeBinding

=over

=item Language => Str

=item RegistryName => Str

=item SchemaName => Str

=item [SchemaVersion => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::PutCodeBinding>

Returns: a L<Paws::Schemas::PutCodeBindingResponse> instance

Put code binding URI


=head2 PutResourcePolicy

=over

=item Policy => Str

=item [RegistryName => Str]

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::PutResourcePolicy>

Returns: a L<Paws::Schemas::PutResourcePolicyResponse> instance

The name of the policy.


=head2 SearchSchemas

=over

=item Keywords => Str

=item RegistryName => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::SearchSchemas>

Returns: a L<Paws::Schemas::SearchSchemasResponse> instance

Search the schemas


=head2 StartDiscoverer

=over

=item DiscovererId => Str


=back

Each argument is described in detail in: L<Paws::Schemas::StartDiscoverer>

Returns: a L<Paws::Schemas::StartDiscovererResponse> instance

Starts the discoverer


=head2 StopDiscoverer

=over

=item DiscovererId => Str


=back

Each argument is described in detail in: L<Paws::Schemas::StopDiscoverer>

Returns: a L<Paws::Schemas::StopDiscovererResponse> instance

Stops the discoverer


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Schemas::Tags>


=back

Each argument is described in detail in: L<Paws::Schemas::TagResource>

Returns: nothing

Add tags to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Schemas::UntagResource>

Returns: nothing

Removes tags from a resource.


=head2 UpdateDiscoverer

=over

=item DiscovererId => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::UpdateDiscoverer>

Returns: a L<Paws::Schemas::UpdateDiscovererResponse> instance

Updates the discoverer


=head2 UpdateRegistry

=over

=item RegistryName => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::UpdateRegistry>

Returns: a L<Paws::Schemas::UpdateRegistryResponse> instance

Updates a registry.


=head2 UpdateSchema

=over

=item RegistryName => Str

=item SchemaName => Str

=item [ClientTokenId => Str]

=item [Content => Str]

=item [Description => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::Schemas::UpdateSchema>

Returns: a L<Paws::Schemas::UpdateSchemaResponse> instance

Updates the schema definition

Inactive schemas will be deleted after two years.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDiscoverers(sub { },[DiscovererIdPrefix => Str, Limit => Int, NextToken => Str, SourceArnPrefix => Str])

=head2 ListAllDiscoverers([DiscovererIdPrefix => Str, Limit => Int, NextToken => Str, SourceArnPrefix => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Discoverers, passing the object as the first parameter, and the string 'Discoverers' as the second parameter 

If not, it will return a a L<Paws::Schemas::ListDiscoverersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRegistries(sub { },[Limit => Int, NextToken => Str, RegistryNamePrefix => Str, Scope => Str])

=head2 ListAllRegistries([Limit => Int, NextToken => Str, RegistryNamePrefix => Str, Scope => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Registries, passing the object as the first parameter, and the string 'Registries' as the second parameter 

If not, it will return a a L<Paws::Schemas::ListRegistriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchemas(sub { },RegistryName => Str, [Limit => Int, NextToken => Str, SchemaNamePrefix => Str])

=head2 ListAllSchemas(RegistryName => Str, [Limit => Int, NextToken => Str, SchemaNamePrefix => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Schemas, passing the object as the first parameter, and the string 'Schemas' as the second parameter 

If not, it will return a a L<Paws::Schemas::ListSchemasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchemaVersions(sub { },RegistryName => Str, SchemaName => Str, [Limit => Int, NextToken => Str])

=head2 ListAllSchemaVersions(RegistryName => Str, SchemaName => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SchemaVersions, passing the object as the first parameter, and the string 'SchemaVersions' as the second parameter 

If not, it will return a a L<Paws::Schemas::ListSchemaVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllSchemas(sub { },Keywords => Str, RegistryName => Str, [Limit => Int, NextToken => Str])

=head2 SearchAllSchemas(Keywords => Str, RegistryName => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Schemas, passing the object as the first parameter, and the string 'Schemas' as the second parameter 

If not, it will return a a L<Paws::Schemas::SearchSchemasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

