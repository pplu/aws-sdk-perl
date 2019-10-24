# Generated from default/object.tt
package Paws::ES::ElasticsearchDomainConfig;
  use Moo;
  use Types::Standard qw//;
  use Paws::ES::Types qw/ES_SnapshotOptionsStatus ES_AdvancedOptionsStatus ES_VPCDerivedInfoStatus ES_NodeToNodeEncryptionOptionsStatus ES_LogPublishingOptionsStatus ES_CognitoOptionsStatus ES_EncryptionAtRestOptionsStatus ES_AccessPoliciesStatus ES_ElasticsearchClusterConfigStatus ES_ElasticsearchVersionStatus ES_EBSOptionsStatus/;
  has AccessPolicies => (is => 'ro', isa => ES_AccessPoliciesStatus);
  has AdvancedOptions => (is => 'ro', isa => ES_AdvancedOptionsStatus);
  has CognitoOptions => (is => 'ro', isa => ES_CognitoOptionsStatus);
  has EBSOptions => (is => 'ro', isa => ES_EBSOptionsStatus);
  has ElasticsearchClusterConfig => (is => 'ro', isa => ES_ElasticsearchClusterConfigStatus);
  has ElasticsearchVersion => (is => 'ro', isa => ES_ElasticsearchVersionStatus);
  has EncryptionAtRestOptions => (is => 'ro', isa => ES_EncryptionAtRestOptionsStatus);
  has LogPublishingOptions => (is => 'ro', isa => ES_LogPublishingOptionsStatus);
  has NodeToNodeEncryptionOptions => (is => 'ro', isa => ES_NodeToNodeEncryptionOptionsStatus);
  has SnapshotOptions => (is => 'ro', isa => ES_SnapshotOptionsStatus);
  has VPCOptions => (is => 'ro', isa => ES_VPCDerivedInfoStatus);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ElasticsearchClusterConfig' => {
                                                 'class' => 'Paws::ES::ElasticsearchClusterConfigStatus',
                                                 'type' => 'ES_ElasticsearchClusterConfigStatus'
                                               },
               'AccessPolicies' => {
                                     'class' => 'Paws::ES::AccessPoliciesStatus',
                                     'type' => 'ES_AccessPoliciesStatus'
                                   },
               'LogPublishingOptions' => {
                                           'class' => 'Paws::ES::LogPublishingOptionsStatus',
                                           'type' => 'ES_LogPublishingOptionsStatus'
                                         },
               'EncryptionAtRestOptions' => {
                                              'class' => 'Paws::ES::EncryptionAtRestOptionsStatus',
                                              'type' => 'ES_EncryptionAtRestOptionsStatus'
                                            },
               'VPCOptions' => {
                                 'class' => 'Paws::ES::VPCDerivedInfoStatus',
                                 'type' => 'ES_VPCDerivedInfoStatus'
                               },
               'ElasticsearchVersion' => {
                                           'class' => 'Paws::ES::ElasticsearchVersionStatus',
                                           'type' => 'ES_ElasticsearchVersionStatus'
                                         },
               'SnapshotOptions' => {
                                      'class' => 'Paws::ES::SnapshotOptionsStatus',
                                      'type' => 'ES_SnapshotOptionsStatus'
                                    },
               'CognitoOptions' => {
                                     'class' => 'Paws::ES::CognitoOptionsStatus',
                                     'type' => 'ES_CognitoOptionsStatus'
                                   },
               'EBSOptions' => {
                                 'class' => 'Paws::ES::EBSOptionsStatus',
                                 'type' => 'ES_EBSOptionsStatus'
                               },
               'AdvancedOptions' => {
                                      'class' => 'Paws::ES::AdvancedOptionsStatus',
                                      'type' => 'ES_AdvancedOptionsStatus'
                                    },
               'NodeToNodeEncryptionOptions' => {
                                                  'class' => 'Paws::ES::NodeToNodeEncryptionOptionsStatus',
                                                  'type' => 'ES_NodeToNodeEncryptionOptionsStatus'
                                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ElasticsearchDomainConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::ElasticsearchDomainConfig object:

  $service_obj->Method(Att1 => { AccessPolicies => $value, ..., VPCOptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::ElasticsearchDomainConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessPolicies

=head1 DESCRIPTION

The configuration of an Elasticsearch domain.

=head1 ATTRIBUTES


=head2 AccessPolicies => ES_AccessPoliciesStatus

  IAM access policy as a JSON-formatted string.


=head2 AdvancedOptions => ES_AdvancedOptionsStatus

  Specifies the C<AdvancedOptions> for the domain. See Configuring
Advanced Options
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options)
for more information.


=head2 CognitoOptions => ES_CognitoOptionsStatus

  The C<CognitoOptions> for the specified domain. For more information,
see Amazon Cognito Authentication for Kibana
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html).


=head2 EBSOptions => ES_EBSOptionsStatus

  Specifies the C<EBSOptions> for the Elasticsearch domain.


=head2 ElasticsearchClusterConfig => ES_ElasticsearchClusterConfigStatus

  Specifies the C<ElasticsearchClusterConfig> for the Elasticsearch
domain.


=head2 ElasticsearchVersion => ES_ElasticsearchVersionStatus

  String of format X.Y to specify version for the Elasticsearch domain.


=head2 EncryptionAtRestOptions => ES_EncryptionAtRestOptionsStatus

  Specifies the C<EncryptionAtRestOptions> for the Elasticsearch domain.


=head2 LogPublishingOptions => ES_LogPublishingOptionsStatus

  Log publishing options for the given domain.


=head2 NodeToNodeEncryptionOptions => ES_NodeToNodeEncryptionOptionsStatus

  Specifies the C<NodeToNodeEncryptionOptions> for the Elasticsearch
domain.


=head2 SnapshotOptions => ES_SnapshotOptionsStatus

  Specifies the C<SnapshotOptions> for the Elasticsearch domain.


=head2 VPCOptions => ES_VPCDerivedInfoStatus

  The C<VPCOptions> for the specified domain. For more information, see
VPC Endpoints for Amazon Elasticsearch Service Domains
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

