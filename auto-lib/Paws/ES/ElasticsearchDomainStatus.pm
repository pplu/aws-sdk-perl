# Generated from default/object.tt
package Paws::ES::ElasticsearchDomainStatus;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::ES::Types qw/ES_NodeToNodeEncryptionOptions ES_EBSOptions ES_VPCDerivedInfo ES_AdvancedOptions ES_SnapshotOptions ES_EncryptionAtRestOptions ES_ServiceSoftwareOptions ES_DomainEndpointOptions ES_EndpointsMap ES_CognitoOptions ES_LogPublishingOptions ES_ElasticsearchClusterConfig/;
  has AccessPolicies => (is => 'ro', isa => Str);
  has AdvancedOptions => (is => 'ro', isa => ES_AdvancedOptions);
  has ARN => (is => 'ro', isa => Str, required => 1);
  has CognitoOptions => (is => 'ro', isa => ES_CognitoOptions);
  has Created => (is => 'ro', isa => Bool);
  has Deleted => (is => 'ro', isa => Bool);
  has DomainEndpointOptions => (is => 'ro', isa => ES_DomainEndpointOptions);
  has DomainId => (is => 'ro', isa => Str, required => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1);
  has EBSOptions => (is => 'ro', isa => ES_EBSOptions);
  has ElasticsearchClusterConfig => (is => 'ro', isa => ES_ElasticsearchClusterConfig, required => 1);
  has ElasticsearchVersion => (is => 'ro', isa => Str);
  has EncryptionAtRestOptions => (is => 'ro', isa => ES_EncryptionAtRestOptions);
  has Endpoint => (is => 'ro', isa => Str);
  has Endpoints => (is => 'ro', isa => ES_EndpointsMap);
  has LogPublishingOptions => (is => 'ro', isa => ES_LogPublishingOptions);
  has NodeToNodeEncryptionOptions => (is => 'ro', isa => ES_NodeToNodeEncryptionOptions);
  has Processing => (is => 'ro', isa => Bool);
  has ServiceSoftwareOptions => (is => 'ro', isa => ES_ServiceSoftwareOptions);
  has SnapshotOptions => (is => 'ro', isa => ES_SnapshotOptions);
  has UpgradeProcessing => (is => 'ro', isa => Bool);
  has VPCOptions => (is => 'ro', isa => ES_VPCDerivedInfo);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ARN' => {
                          'type' => 'Str'
                        },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'EBSOptions' => {
                                 'type' => 'ES_EBSOptions',
                                 'class' => 'Paws::ES::EBSOptions'
                               },
               'Endpoints' => {
                                'class' => 'Paws::ES::EndpointsMap',
                                'type' => 'ES_EndpointsMap'
                              },
               'AccessPolicies' => {
                                     'type' => 'Str'
                                   },
               'Deleted' => {
                              'type' => 'Bool'
                            },
               'NodeToNodeEncryptionOptions' => {
                                                  'type' => 'ES_NodeToNodeEncryptionOptions',
                                                  'class' => 'Paws::ES::NodeToNodeEncryptionOptions'
                                                },
               'DomainEndpointOptions' => {
                                            'type' => 'ES_DomainEndpointOptions',
                                            'class' => 'Paws::ES::DomainEndpointOptions'
                                          },
               'Endpoint' => {
                               'type' => 'Str'
                             },
               'ElasticsearchClusterConfig' => {
                                                 'class' => 'Paws::ES::ElasticsearchClusterConfig',
                                                 'type' => 'ES_ElasticsearchClusterConfig'
                                               },
               'Created' => {
                              'type' => 'Bool'
                            },
               'SnapshotOptions' => {
                                      'class' => 'Paws::ES::SnapshotOptions',
                                      'type' => 'ES_SnapshotOptions'
                                    },
               'CognitoOptions' => {
                                     'class' => 'Paws::ES::CognitoOptions',
                                     'type' => 'ES_CognitoOptions'
                                   },
               'ServiceSoftwareOptions' => {
                                             'class' => 'Paws::ES::ServiceSoftwareOptions',
                                             'type' => 'ES_ServiceSoftwareOptions'
                                           },
               'DomainId' => {
                               'type' => 'Str'
                             },
               'LogPublishingOptions' => {
                                           'class' => 'Paws::ES::LogPublishingOptions',
                                           'type' => 'ES_LogPublishingOptions'
                                         },
               'EncryptionAtRestOptions' => {
                                              'class' => 'Paws::ES::EncryptionAtRestOptions',
                                              'type' => 'ES_EncryptionAtRestOptions'
                                            },
               'AdvancedOptions' => {
                                      'class' => 'Paws::ES::AdvancedOptions',
                                      'type' => 'ES_AdvancedOptions'
                                    },
               'ElasticsearchVersion' => {
                                           'type' => 'Str'
                                         },
               'Processing' => {
                                 'type' => 'Bool'
                               },
               'UpgradeProcessing' => {
                                        'type' => 'Bool'
                                      },
               'VPCOptions' => {
                                 'type' => 'ES_VPCDerivedInfo',
                                 'class' => 'Paws::ES::VPCDerivedInfo'
                               }
             },
  'IsRequired' => {
                    'ElasticsearchClusterConfig' => 1,
                    'DomainName' => 1,
                    'DomainId' => 1,
                    'ARN' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ElasticsearchDomainStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::ElasticsearchDomainStatus object:

  $service_obj->Method(Att1 => { AccessPolicies => $value, ..., VPCOptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::ElasticsearchDomainStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessPolicies

=head1 DESCRIPTION

The current status of an Elasticsearch domain.

=head1 ATTRIBUTES


=head2 AccessPolicies => Str

  IAM access policy as a JSON-formatted string.


=head2 AdvancedOptions => ES_AdvancedOptions

  Specifies the status of the C<AdvancedOptions>


=head2 B<REQUIRED> ARN => Str

  The Amazon resource name (ARN) of an Elasticsearch domain. See
Identifiers for IAM Entities
(http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html)
in I<Using AWS Identity and Access Management> for more information.


=head2 CognitoOptions => ES_CognitoOptions

  The C<CognitoOptions> for the specified domain. For more information,
see Amazon Cognito Authentication for Kibana
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html).


=head2 Created => Bool

  The domain creation status. C<True> if the creation of an Elasticsearch
domain is complete. C<False> if domain creation is still in progress.


=head2 Deleted => Bool

  The domain deletion status. C<True> if a delete request has been
received for the domain but resource cleanup is still in progress.
C<False> if the domain has not been deleted. Once domain deletion is
complete, the status of the domain is no longer returned.


=head2 DomainEndpointOptions => ES_DomainEndpointOptions

  The current status of the Elasticsearch domain's endpoint options.


=head2 B<REQUIRED> DomainId => Str

  The unique identifier for the specified Elasticsearch domain.


=head2 B<REQUIRED> DomainName => Str

  The name of an Elasticsearch domain. Domain names are unique across the
domains owned by an account within an AWS region. Domain names start
with a letter or number and can contain the following characters: a-z
(lowercase), 0-9, and - (hyphen).


=head2 EBSOptions => ES_EBSOptions

  The C<EBSOptions> for the specified domain. See Configuring EBS-based
Storage
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs)
for more information.


=head2 B<REQUIRED> ElasticsearchClusterConfig => ES_ElasticsearchClusterConfig

  The type and number of instances in the domain cluster.


=head2 ElasticsearchVersion => Str

  


=head2 EncryptionAtRestOptions => ES_EncryptionAtRestOptions

  Specifies the status of the C<EncryptionAtRestOptions>.


=head2 Endpoint => Str

  The Elasticsearch domain endpoint that you use to submit index and
search requests.


=head2 Endpoints => ES_EndpointsMap

  Map containing the Elasticsearch domain endpoints used to submit index
and search requests. Example C<key, value>:
C<'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'>.


=head2 LogPublishingOptions => ES_LogPublishingOptions

  Log publishing options for the given domain.


=head2 NodeToNodeEncryptionOptions => ES_NodeToNodeEncryptionOptions

  Specifies the status of the C<NodeToNodeEncryptionOptions>.


=head2 Processing => Bool

  The status of the Elasticsearch domain configuration. C<True> if Amazon
Elasticsearch Service is processing configuration changes. C<False> if
the configuration is active.


=head2 ServiceSoftwareOptions => ES_ServiceSoftwareOptions

  The current status of the Elasticsearch domain's service software.


=head2 SnapshotOptions => ES_SnapshotOptions

  Specifies the status of the C<SnapshotOptions>


=head2 UpgradeProcessing => Bool

  The status of an Elasticsearch domain version upgrade. C<True> if
Amazon Elasticsearch Service is undergoing a version upgrade. C<False>
if the configuration is active.


=head2 VPCOptions => ES_VPCDerivedInfo

  The C<VPCOptions> for the specified domain. For more information, see
VPC Endpoints for Amazon Elasticsearch Service Domains
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

