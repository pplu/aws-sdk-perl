package Paws::ES;
  warn "Paws::ES is not stable / supported / entirely developed";
  use Moose;
  sub service { 'es' }
  sub version { '2015-01-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub AddTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ES::AddTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateElasticsearchDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ES::CreateElasticsearchDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteElasticsearchDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ES::DeleteElasticsearchDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeElasticsearchDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ES::DescribeElasticsearchDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeElasticsearchDomainConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ES::DescribeElasticsearchDomainConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeElasticsearchDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ES::DescribeElasticsearchDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomainNames {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ES::ListDomainNames', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ES::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ES::RemoveTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateElasticsearchDomainConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ES::UpdateElasticsearchDomainConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { qw/AddTags CreateElasticsearchDomain DeleteElasticsearchDomain DescribeElasticsearchDomain DescribeElasticsearchDomainConfig DescribeElasticsearchDomains ListDomainNames ListTags RemoveTags UpdateElasticsearchDomainConfig / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES - Perl Interface to AWS Amazon Elasticsearch Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ES');
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

Amazon Elasticsearch Configuration Service

Use the Amazon Elasticsearch configuration API to create, configure,
and manage Elasticsearch domains.

The endpoint for configuration service requests is region-specific:
es.I<region>.amazonaws.com. For example, es.us-east-1.amazonaws.com.
For a current list of supported regions and endpoints, see Regions and
Endpoints.

=head1 METHODS

=head2 AddTags(ARN => Str, TagList => ArrayRef[L<Paws::ES::Tag>])

Each argument is described in detail in: L<Paws::ES::AddTags>

Returns: nothing

  Attaches tags to an existing Elasticsearch domain. Tags are a set of
case-sensitive key value pairs. An Elasticsearch domain may have up to
10 tags. See Tagging Amazon Elasticsearch Service Domains for more
information.


=head2 CreateElasticsearchDomain(DomainName => Str, [AccessPolicies => Str, AdvancedOptions => L<Paws::ES::AdvancedOptions>, EBSOptions => L<Paws::ES::EBSOptions>, ElasticsearchClusterConfig => L<Paws::ES::ElasticsearchClusterConfig>, SnapshotOptions => L<Paws::ES::SnapshotOptions>])

Each argument is described in detail in: L<Paws::ES::CreateElasticsearchDomain>

Returns: a L<Paws::ES::CreateElasticsearchDomainResponse> instance

  Creates a new Elasticsearch domain. For more information, see Creating
Elasticsearch Domains in the I<Amazon Elasticsearch Service Developer
Guide>.


=head2 DeleteElasticsearchDomain(DomainName => Str)

Each argument is described in detail in: L<Paws::ES::DeleteElasticsearchDomain>

Returns: a L<Paws::ES::DeleteElasticsearchDomainResponse> instance

  Permanently deletes the specified Elasticsearch domain and all of its
data. Once a domain is deleted, it cannot be recovered.


=head2 DescribeElasticsearchDomain(DomainName => Str)

Each argument is described in detail in: L<Paws::ES::DescribeElasticsearchDomain>

Returns: a L<Paws::ES::DescribeElasticsearchDomainResponse> instance

  Returns domain configuration information about the specified
Elasticsearch domain, including the domain ID, domain endpoint, and
domain ARN.


=head2 DescribeElasticsearchDomainConfig(DomainName => Str)

Each argument is described in detail in: L<Paws::ES::DescribeElasticsearchDomainConfig>

Returns: a L<Paws::ES::DescribeElasticsearchDomainConfigResponse> instance

  Provides cluster configuration information about the specified
Elasticsearch domain, such as the state, creation date, update version,
and update date for cluster options.


=head2 DescribeElasticsearchDomains(DomainNames => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ES::DescribeElasticsearchDomains>

Returns: a L<Paws::ES::DescribeElasticsearchDomainsResponse> instance

  Returns domain configuration information about the specified
Elasticsearch domains, including the domain ID, domain endpoint, and
domain ARN.


=head2 ListDomainNames( => )

Each argument is described in detail in: L<Paws::ES::ListDomainNames>

Returns: a L<Paws::ES::ListDomainNamesResponse> instance

  Returns the name of all Elasticsearch domains owned by the current
user's account.


=head2 ListTags(ARN => Str)

Each argument is described in detail in: L<Paws::ES::ListTags>

Returns: a L<Paws::ES::ListTagsResponse> instance

  Returns all tags for the given Elasticsearch domain.


=head2 RemoveTags(ARN => Str, TagKeys => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ES::RemoveTags>

Returns: nothing

  Removes the specified set of tags from the specified Elasticsearch
domain.


=head2 UpdateElasticsearchDomainConfig(DomainName => Str, [AccessPolicies => Str, AdvancedOptions => L<Paws::ES::AdvancedOptions>, EBSOptions => L<Paws::ES::EBSOptions>, ElasticsearchClusterConfig => L<Paws::ES::ElasticsearchClusterConfig>, SnapshotOptions => L<Paws::ES::SnapshotOptions>])

Each argument is described in detail in: L<Paws::ES::UpdateElasticsearchDomainConfig>

Returns: a L<Paws::ES::UpdateElasticsearchDomainConfigResponse> instance

  Modifies the cluster configuration of the specified Elasticsearch
domain, setting as setting the instance type and the number of
instances.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

