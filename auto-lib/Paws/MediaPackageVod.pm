package Paws::MediaPackageVod;
  use Moose;
  sub service { 'mediapackage-vod' }
  sub signing_name { 'mediapackage-vod' }
  sub version { '2018-11-07' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ConfigureLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::ConfigureLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::CreateAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePackagingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::CreatePackagingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePackagingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::CreatePackagingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::DeleteAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePackagingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::DeletePackagingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePackagingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::DeletePackagingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::DescribeAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePackagingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::DescribePackagingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePackagingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::DescribePackagingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::ListAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPackagingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::ListPackagingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPackagingGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::ListPackagingGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePackagingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageVod::UpdatePackagingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAssets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAssets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Assets }, @{ $next_result->Assets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Assets') foreach (@{ $result->Assets });
        $result = $self->ListAssets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Assets') foreach (@{ $result->Assets });
    }

    return undef
  }
  sub ListAllPackagingConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPackagingConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPackagingConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->PackagingConfigurations }, @{ $next_result->PackagingConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PackagingConfigurations') foreach (@{ $result->PackagingConfigurations });
        $result = $self->ListPackagingConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PackagingConfigurations') foreach (@{ $result->PackagingConfigurations });
    }

    return undef
  }
  sub ListAllPackagingGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPackagingGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPackagingGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->PackagingGroups }, @{ $next_result->PackagingGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PackagingGroups') foreach (@{ $result->PackagingGroups });
        $result = $self->ListPackagingGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PackagingGroups') foreach (@{ $result->PackagingGroups });
    }

    return undef
  }


  sub operations { qw/ConfigureLogs CreateAsset CreatePackagingConfiguration CreatePackagingGroup DeleteAsset DeletePackagingConfiguration DeletePackagingGroup DescribeAsset DescribePackagingConfiguration DescribePackagingGroup ListAssets ListPackagingConfigurations ListPackagingGroups ListTagsForResource TagResource UntagResource UpdatePackagingGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod - Perl Interface to AWS AWS Elemental MediaPackage VOD

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MediaPackageVod');
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

AWS Elemental MediaPackage VOD

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07>


=head1 METHODS

=head2 ConfigureLogs

=over

=item Id => Str

=item [EgressAccessLogs => L<Paws::MediaPackageVod::EgressAccessLogs>]


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::ConfigureLogs>

Returns: a L<Paws::MediaPackageVod::ConfigureLogsResponse> instance

Changes the packaging group's properities to configure log subscription


=head2 CreateAsset

=over

=item Id => Str

=item PackagingGroupId => Str

=item SourceArn => Str

=item SourceRoleArn => Str

=item [ResourceId => Str]

=item [Tags => L<Paws::MediaPackageVod::Tags>]


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::CreateAsset>

Returns: a L<Paws::MediaPackageVod::CreateAssetResponse> instance

Creates a new MediaPackage VOD Asset resource.


=head2 CreatePackagingConfiguration

=over

=item Id => Str

=item PackagingGroupId => Str

=item [CmafPackage => L<Paws::MediaPackageVod::CmafPackage>]

=item [DashPackage => L<Paws::MediaPackageVod::DashPackage>]

=item [HlsPackage => L<Paws::MediaPackageVod::HlsPackage>]

=item [MssPackage => L<Paws::MediaPackageVod::MssPackage>]

=item [Tags => L<Paws::MediaPackageVod::Tags>]


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::CreatePackagingConfiguration>

Returns: a L<Paws::MediaPackageVod::CreatePackagingConfigurationResponse> instance

Creates a new MediaPackage VOD PackagingConfiguration resource.


=head2 CreatePackagingGroup

=over

=item Id => Str

=item [Authorization => L<Paws::MediaPackageVod::Authorization>]

=item [EgressAccessLogs => L<Paws::MediaPackageVod::EgressAccessLogs>]

=item [Tags => L<Paws::MediaPackageVod::Tags>]


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::CreatePackagingGroup>

Returns: a L<Paws::MediaPackageVod::CreatePackagingGroupResponse> instance

Creates a new MediaPackage VOD PackagingGroup resource.


=head2 DeleteAsset

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::DeleteAsset>

Returns: a L<Paws::MediaPackageVod::DeleteAssetResponse> instance

Deletes an existing MediaPackage VOD Asset resource.


=head2 DeletePackagingConfiguration

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::DeletePackagingConfiguration>

Returns: a L<Paws::MediaPackageVod::DeletePackagingConfigurationResponse> instance

Deletes a MediaPackage VOD PackagingConfiguration resource.


=head2 DeletePackagingGroup

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::DeletePackagingGroup>

Returns: a L<Paws::MediaPackageVod::DeletePackagingGroupResponse> instance

Deletes a MediaPackage VOD PackagingGroup resource.


=head2 DescribeAsset

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::DescribeAsset>

Returns: a L<Paws::MediaPackageVod::DescribeAssetResponse> instance

Returns a description of a MediaPackage VOD Asset resource.


=head2 DescribePackagingConfiguration

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::DescribePackagingConfiguration>

Returns: a L<Paws::MediaPackageVod::DescribePackagingConfigurationResponse> instance

Returns a description of a MediaPackage VOD PackagingConfiguration
resource.


=head2 DescribePackagingGroup

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::DescribePackagingGroup>

Returns: a L<Paws::MediaPackageVod::DescribePackagingGroupResponse> instance

Returns a description of a MediaPackage VOD PackagingGroup resource.


=head2 ListAssets

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PackagingGroupId => Str]


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::ListAssets>

Returns: a L<Paws::MediaPackageVod::ListAssetsResponse> instance

Returns a collection of MediaPackage VOD Asset resources.


=head2 ListPackagingConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PackagingGroupId => Str]


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::ListPackagingConfigurations>

Returns: a L<Paws::MediaPackageVod::ListPackagingConfigurationsResponse> instance

Returns a collection of MediaPackage VOD PackagingConfiguration
resources.


=head2 ListPackagingGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::ListPackagingGroups>

Returns: a L<Paws::MediaPackageVod::ListPackagingGroupsResponse> instance

Returns a collection of MediaPackage VOD PackagingGroup resources.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::ListTagsForResource>

Returns: a L<Paws::MediaPackageVod::ListTagsForResourceResponse> instance

Returns a list of the tags assigned to the specified resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::MediaPackageVod::__mapOf__string>


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::TagResource>

Returns: nothing

Adds tags to the specified resource. You can specify one or more tags
to add.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::UntagResource>

Returns: nothing

Removes tags from the specified resource. You can specify one or more
tags to remove.


=head2 UpdatePackagingGroup

=over

=item Id => Str

=item [Authorization => L<Paws::MediaPackageVod::Authorization>]


=back

Each argument is described in detail in: L<Paws::MediaPackageVod::UpdatePackagingGroup>

Returns: a L<Paws::MediaPackageVod::UpdatePackagingGroupResponse> instance

Updates a specific packaging group. You can't change the id attribute
or any other system-generated attributes.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAssets(sub { },[MaxResults => Int, NextToken => Str, PackagingGroupId => Str])

=head2 ListAllAssets([MaxResults => Int, NextToken => Str, PackagingGroupId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Assets, passing the object as the first parameter, and the string 'Assets' as the second parameter 

If not, it will return a a L<Paws::MediaPackageVod::ListAssetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPackagingConfigurations(sub { },[MaxResults => Int, NextToken => Str, PackagingGroupId => Str])

=head2 ListAllPackagingConfigurations([MaxResults => Int, NextToken => Str, PackagingGroupId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PackagingConfigurations, passing the object as the first parameter, and the string 'PackagingConfigurations' as the second parameter 

If not, it will return a a L<Paws::MediaPackageVod::ListPackagingConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPackagingGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPackagingGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PackagingGroups, passing the object as the first parameter, and the string 'PackagingGroups' as the second parameter 

If not, it will return a a L<Paws::MediaPackageVod::ListPackagingGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

