package Paws::LicenseManager;
  use Moose;
  sub service { 'license-manager' }
  sub signing_name { 'license-manager' }
  sub version { '2018-08-01' }
  sub target_prefix { 'AWSLicenseManager' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateLicenseConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::CreateLicenseConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLicenseConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::DeleteLicenseConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLicenseConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::GetLicenseConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::GetServiceSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociationsForLicenseConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListAssociationsForLicenseConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLicenseConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListLicenseConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLicenseSpecificationsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListLicenseSpecificationsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceInventory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListResourceInventory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsageForLicenseConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListUsageForLicenseConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLicenseConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::UpdateLicenseConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLicenseSpecificationsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::UpdateLicenseSpecificationsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::UpdateServiceSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAssociationsForLicenseConfiguration {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociationsForLicenseConfiguration(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAssociationsForLicenseConfiguration(@_, NextToken => $next_result->NextToken);
        push @{ $result->LicenseConfigurationAssociations }, @{ $next_result->LicenseConfigurationAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LicenseConfigurationAssociations') foreach (@{ $result->LicenseConfigurationAssociations });
        $result = $self->ListAssociationsForLicenseConfiguration(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LicenseConfigurationAssociations') foreach (@{ $result->LicenseConfigurationAssociations });
    }

    return undef
  }
  sub ListAllLicenseConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLicenseConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLicenseConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->LicenseConfigurations }, @{ $next_result->LicenseConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LicenseConfigurations') foreach (@{ $result->LicenseConfigurations });
        $result = $self->ListLicenseConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LicenseConfigurations') foreach (@{ $result->LicenseConfigurations });
    }

    return undef
  }
  sub ListAllLicenseSpecificationsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLicenseSpecificationsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLicenseSpecificationsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->LicenseSpecifications }, @{ $next_result->LicenseSpecifications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LicenseSpecifications') foreach (@{ $result->LicenseSpecifications });
        $result = $self->ListLicenseSpecificationsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LicenseSpecifications') foreach (@{ $result->LicenseSpecifications });
    }

    return undef
  }
  sub ListAllResourceInventory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceInventory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceInventory(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceInventoryList }, @{ $next_result->ResourceInventoryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceInventoryList') foreach (@{ $result->ResourceInventoryList });
        $result = $self->ListResourceInventory(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceInventoryList') foreach (@{ $result->ResourceInventoryList });
    }

    return undef
  }
  sub ListAllUsageForLicenseConfiguration {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsageForLicenseConfiguration(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsageForLicenseConfiguration(@_, NextToken => $next_result->NextToken);
        push @{ $result->LicenseConfigurationUsageList }, @{ $next_result->LicenseConfigurationUsageList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LicenseConfigurationUsageList') foreach (@{ $result->LicenseConfigurationUsageList });
        $result = $self->ListUsageForLicenseConfiguration(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LicenseConfigurationUsageList') foreach (@{ $result->LicenseConfigurationUsageList });
    }

    return undef
  }


  sub operations { qw/CreateLicenseConfiguration DeleteLicenseConfiguration GetLicenseConfiguration GetServiceSettings ListAssociationsForLicenseConfiguration ListLicenseConfigurations ListLicenseSpecificationsForResource ListResourceInventory ListTagsForResource ListUsageForLicenseConfiguration TagResource UntagResource UpdateLicenseConfiguration UpdateLicenseSpecificationsForResource UpdateServiceSettings / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager - Perl Interface to AWS AWS License Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LicenseManager');
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

AWS License Manager

I<This is the AWS License Manager API Reference.> It provides
descriptions, syntax, and usage examples for each of the actions and
data types for License Manager. The topic for each action shows the
Query API request parameters and the XML response. You can also view
the XML request elements in the WSDL.

Alternatively, you can use one of the AWS SDKs to access an API that's
tailored to the programming language or platform that you're using. For
more information, see AWS SDKs (http://aws.amazon.com/tools/#SDKs).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01>


=head1 METHODS

=head2 CreateLicenseConfiguration

=over

=item LicenseCountingType => Str

=item Name => Str

=item [Description => Str]

=item [LicenseCount => Int]

=item [LicenseCountHardLimit => Bool]

=item [LicenseRules => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::LicenseManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::LicenseManager::CreateLicenseConfiguration>

Returns: a L<Paws::LicenseManager::CreateLicenseConfigurationResponse> instance

Creates a new license configuration object. A license configuration is
an abstraction of a customer license agreement that can be consumed and
enforced by License Manager. Components include specifications for the
license type (licensing by instance, socket, CPU, or VCPU), tenancy
(shared tenancy, Amazon EC2 Dedicated Instance, Amazon EC2 Dedicated
Host, or any of these), host affinity (how long a VM must be associated
with a host), the number of licenses purchased and used.


=head2 DeleteLicenseConfiguration

=over

=item LicenseConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManager::DeleteLicenseConfiguration>

Returns: a L<Paws::LicenseManager::DeleteLicenseConfigurationResponse> instance

Deletes an existing license configuration. This action fails if the
configuration is in use.


=head2 GetLicenseConfiguration

=over

=item LicenseConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManager::GetLicenseConfiguration>

Returns: a L<Paws::LicenseManager::GetLicenseConfigurationResponse> instance

Returns a detailed description of a license configuration.


=head2 GetServiceSettings






Each argument is described in detail in: L<Paws::LicenseManager::GetServiceSettings>

Returns: a L<Paws::LicenseManager::GetServiceSettingsResponse> instance

Gets License Manager settings for a region. Exposes the configured S3
bucket, SNS topic, etc., for inspection.


=head2 ListAssociationsForLicenseConfiguration

=over

=item LicenseConfigurationArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListAssociationsForLicenseConfiguration>

Returns: a L<Paws::LicenseManager::ListAssociationsForLicenseConfigurationResponse> instance

Lists the resource associations for a license configuration. Resource
associations need not consume licenses from a license configuration.
For example, an AMI or a stopped instance may not consume a license
(depending on the license rules). Use this operation to find all
resources associated with a license configuration.


=head2 ListLicenseConfigurations

=over

=item [Filters => ArrayRef[L<Paws::LicenseManager::Filter>]]

=item [LicenseConfigurationArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListLicenseConfigurations>

Returns: a L<Paws::LicenseManager::ListLicenseConfigurationsResponse> instance

Lists license configuration objects for an account, each containing the
name, description, license type, and other license terms modeled from a
license agreement.


=head2 ListLicenseSpecificationsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListLicenseSpecificationsForResource>

Returns: a L<Paws::LicenseManager::ListLicenseSpecificationsForResourceResponse> instance

Returns the license configuration for a resource.


=head2 ListResourceInventory

=over

=item [Filters => ArrayRef[L<Paws::LicenseManager::InventoryFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListResourceInventory>

Returns: a L<Paws::LicenseManager::ListResourceInventoryResponse> instance

Returns a detailed list of resources.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListTagsForResource>

Returns: a L<Paws::LicenseManager::ListTagsForResourceResponse> instance

Lists tags attached to a resource.


=head2 ListUsageForLicenseConfiguration

=over

=item LicenseConfigurationArn => Str

=item [Filters => ArrayRef[L<Paws::LicenseManager::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListUsageForLicenseConfiguration>

Returns: a L<Paws::LicenseManager::ListUsageForLicenseConfigurationResponse> instance

Lists all license usage records for a license configuration, displaying
license consumption details by resource at a selected point in time.
Use this action to audit the current license consumption for any
license inventory and configuration.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::LicenseManager::Tag>]


=back

Each argument is described in detail in: L<Paws::LicenseManager::TagResource>

Returns: a L<Paws::LicenseManager::TagResourceResponse> instance

Attach one of more tags to any resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LicenseManager::UntagResource>

Returns: a L<Paws::LicenseManager::UntagResourceResponse> instance

Remove tags from a resource.


=head2 UpdateLicenseConfiguration

=over

=item LicenseConfigurationArn => Str

=item [Description => Str]

=item [LicenseConfigurationStatus => Str]

=item [LicenseCount => Int]

=item [LicenseCountHardLimit => Bool]

=item [LicenseRules => ArrayRef[Str|Undef]]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::UpdateLicenseConfiguration>

Returns: a L<Paws::LicenseManager::UpdateLicenseConfigurationResponse> instance

Modifies the attributes of an existing license configuration object. A
license configuration is an abstraction of a customer license agreement
that can be consumed and enforced by License Manager. Components
include specifications for the license type (Instances, cores, sockets,
VCPUs), tenancy (shared or Dedicated Host), host affinity (how long a
VM is associated with a host), the number of licenses purchased and
used.


=head2 UpdateLicenseSpecificationsForResource

=over

=item ResourceArn => Str

=item [AddLicenseSpecifications => ArrayRef[L<Paws::LicenseManager::LicenseSpecification>]]

=item [RemoveLicenseSpecifications => ArrayRef[L<Paws::LicenseManager::LicenseSpecification>]]


=back

Each argument is described in detail in: L<Paws::LicenseManager::UpdateLicenseSpecificationsForResource>

Returns: a L<Paws::LicenseManager::UpdateLicenseSpecificationsForResourceResponse> instance

Adds or removes license configurations for a specified AWS resource.
This operation currently supports updating the license specifications
of AMIs, instances, and hosts. Launch templates and AWS CloudFormation
templates are not managed from this operation as those resources send
the license configurations directly to a resource creation operation,
such as C<RunInstances>.


=head2 UpdateServiceSettings

=over

=item [EnableCrossAccountsDiscovery => Bool]

=item [OrganizationConfiguration => L<Paws::LicenseManager::OrganizationConfiguration>]

=item [S3BucketArn => Str]

=item [SnsTopicArn => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::UpdateServiceSettings>

Returns: a L<Paws::LicenseManager::UpdateServiceSettingsResponse> instance

Updates License Manager service settings.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAssociationsForLicenseConfiguration(sub { },LicenseConfigurationArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAssociationsForLicenseConfiguration(LicenseConfigurationArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LicenseConfigurationAssociations, passing the object as the first parameter, and the string 'LicenseConfigurationAssociations' as the second parameter 

If not, it will return a a L<Paws::LicenseManager::ListAssociationsForLicenseConfigurationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLicenseConfigurations(sub { },[Filters => ArrayRef[L<Paws::LicenseManager::Filter>], LicenseConfigurationArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllLicenseConfigurations([Filters => ArrayRef[L<Paws::LicenseManager::Filter>], LicenseConfigurationArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LicenseConfigurations, passing the object as the first parameter, and the string 'LicenseConfigurations' as the second parameter 

If not, it will return a a L<Paws::LicenseManager::ListLicenseConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLicenseSpecificationsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllLicenseSpecificationsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LicenseSpecifications, passing the object as the first parameter, and the string 'LicenseSpecifications' as the second parameter 

If not, it will return a a L<Paws::LicenseManager::ListLicenseSpecificationsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceInventory(sub { },[Filters => ArrayRef[L<Paws::LicenseManager::InventoryFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllResourceInventory([Filters => ArrayRef[L<Paws::LicenseManager::InventoryFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceInventoryList, passing the object as the first parameter, and the string 'ResourceInventoryList' as the second parameter 

If not, it will return a a L<Paws::LicenseManager::ListResourceInventoryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsageForLicenseConfiguration(sub { },LicenseConfigurationArn => Str, [Filters => ArrayRef[L<Paws::LicenseManager::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllUsageForLicenseConfiguration(LicenseConfigurationArn => Str, [Filters => ArrayRef[L<Paws::LicenseManager::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LicenseConfigurationUsageList, passing the object as the first parameter, and the string 'LicenseConfigurationUsageList' as the second parameter 

If not, it will return a a L<Paws::LicenseManager::ListUsageForLicenseConfigurationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

