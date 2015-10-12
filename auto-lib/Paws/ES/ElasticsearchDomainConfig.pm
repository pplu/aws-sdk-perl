package Paws::ES::ElasticsearchDomainConfig;
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Paws::ES::AccessPoliciesStatus');
  has AdvancedOptions => (is => 'ro', isa => 'Paws::ES::AdvancedOptionsStatus');
  has EBSOptions => (is => 'ro', isa => 'Paws::ES::EBSOptionsStatus');
  has ElasticsearchClusterConfig => (is => 'ro', isa => 'Paws::ES::ElasticsearchClusterConfigStatus');
  has SnapshotOptions => (is => 'ro', isa => 'Paws::ES::SnapshotOptionsStatus');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ElasticsearchDomainConfig

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::ElasticsearchDomainConfig object:

  $service_obj->Method(Att1 => { AccessPolicies => $value, ..., SnapshotOptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::ElasticsearchDomainConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessPolicies

=head1 ATTRIBUTES

=head2 AccessPolicies => Paws::ES::AccessPoliciesStatus

  

IAM access policy as a JSON-formatted string.










=head2 AdvancedOptions => Paws::ES::AdvancedOptionsStatus

  

Specifies the C<AdvancedOptions> for the domain. See Configuring
Advanced Options for more information.










=head2 EBSOptions => Paws::ES::EBSOptionsStatus

  

Specifies the C<EBSOptions> for the Elasticsearch domain.










=head2 ElasticsearchClusterConfig => Paws::ES::ElasticsearchClusterConfigStatus

  

Specifies the C<ElasticsearchClusterConfig> for the Elasticsearch
domain.










=head2 SnapshotOptions => Paws::ES::SnapshotOptionsStatus

  

Specifies the C<SnapshotOptions> for the Elasticsearch domain.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

