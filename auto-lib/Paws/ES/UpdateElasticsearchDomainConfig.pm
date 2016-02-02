
package Paws::ES::UpdateElasticsearchDomainConfig;
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Str');
  has AdvancedOptions => (is => 'ro', isa => 'Paws::ES::AdvancedOptions');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName' , required => 1);
  has EBSOptions => (is => 'ro', isa => 'Paws::ES::EBSOptions');
  has ElasticsearchClusterConfig => (is => 'ro', isa => 'Paws::ES::ElasticsearchClusterConfig');
  has SnapshotOptions => (is => 'ro', isa => 'Paws::ES::SnapshotOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateElasticsearchDomainConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/domain/{DomainName}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::UpdateElasticsearchDomainConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::UpdateElasticsearchDomainConfig - Arguments for method UpdateElasticsearchDomainConfig on Paws::ES

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateElasticsearchDomainConfig on the 
Amazon Elasticsearch Service service. Use the attributes of this class
as arguments to method UpdateElasticsearchDomainConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateElasticsearchDomainConfig.

As an example:

  $service_obj->UpdateElasticsearchDomainConfig(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AccessPolicies => Str

IAM access policy as a JSON-formatted string.



=head2 AdvancedOptions => L<Paws::ES::AdvancedOptions>

Modifies the advanced option to allow references to indices in an HTTP
request body. Must be C<false> when configuring access to individual
sub-resources. By default, the value is C<true>. See Configuration
Advanced Options for more information.



=head2 B<REQUIRED> DomainName => Str

The name of the Elasticsearch domain that you are updating.



=head2 EBSOptions => L<Paws::ES::EBSOptions>

Specify the type and size of the EBS volume that you want to use.



=head2 ElasticsearchClusterConfig => L<Paws::ES::ElasticsearchClusterConfig>

The type and number of instances to instantiate for the domain cluster.



=head2 SnapshotOptions => L<Paws::ES::SnapshotOptions>

Option to set the time, in UTC format, for the daily automated
snapshot. Default value is C<0> hours.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateElasticsearchDomainConfig in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

