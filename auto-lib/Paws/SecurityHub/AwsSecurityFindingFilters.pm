# Generated from default/object.tt
package Paws::SecurityHub::AwsSecurityFindingFilters;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_KeywordFilter SecurityHub_StringFilter SecurityHub_NumberFilter SecurityHub_IpFilter SecurityHub_MapFilter SecurityHub_DateFilter/;
  has AwsAccountId => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has CompanyName => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ComplianceStatus => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has Confidence => (is => 'ro', isa => ArrayRef[SecurityHub_NumberFilter]);
  has CreatedAt => (is => 'ro', isa => ArrayRef[SecurityHub_DateFilter]);
  has Criticality => (is => 'ro', isa => ArrayRef[SecurityHub_NumberFilter]);
  has Description => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has FirstObservedAt => (is => 'ro', isa => ArrayRef[SecurityHub_DateFilter]);
  has GeneratorId => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has Id => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has Keyword => (is => 'ro', isa => ArrayRef[SecurityHub_KeywordFilter]);
  has LastObservedAt => (is => 'ro', isa => ArrayRef[SecurityHub_DateFilter]);
  has MalwareName => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has MalwarePath => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has MalwareState => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has MalwareType => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has NetworkDestinationDomain => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has NetworkDestinationIpV4 => (is => 'ro', isa => ArrayRef[SecurityHub_IpFilter]);
  has NetworkDestinationIpV6 => (is => 'ro', isa => ArrayRef[SecurityHub_IpFilter]);
  has NetworkDestinationPort => (is => 'ro', isa => ArrayRef[SecurityHub_NumberFilter]);
  has NetworkDirection => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has NetworkProtocol => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has NetworkSourceDomain => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has NetworkSourceIpV4 => (is => 'ro', isa => ArrayRef[SecurityHub_IpFilter]);
  has NetworkSourceIpV6 => (is => 'ro', isa => ArrayRef[SecurityHub_IpFilter]);
  has NetworkSourceMac => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has NetworkSourcePort => (is => 'ro', isa => ArrayRef[SecurityHub_NumberFilter]);
  has NoteText => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has NoteUpdatedAt => (is => 'ro', isa => ArrayRef[SecurityHub_DateFilter]);
  has NoteUpdatedBy => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ProcessLaunchedAt => (is => 'ro', isa => ArrayRef[SecurityHub_DateFilter]);
  has ProcessName => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ProcessParentPid => (is => 'ro', isa => ArrayRef[SecurityHub_NumberFilter]);
  has ProcessPath => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ProcessPid => (is => 'ro', isa => ArrayRef[SecurityHub_NumberFilter]);
  has ProcessTerminatedAt => (is => 'ro', isa => ArrayRef[SecurityHub_DateFilter]);
  has ProductArn => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ProductFields => (is => 'ro', isa => ArrayRef[SecurityHub_MapFilter]);
  has ProductName => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has RecommendationText => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has RecordState => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has RelatedFindingsId => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has RelatedFindingsProductArn => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceAwsEc2InstanceIamInstanceProfileArn => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceAwsEc2InstanceImageId => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceAwsEc2InstanceIpV4Addresses => (is => 'ro', isa => ArrayRef[SecurityHub_IpFilter]);
  has ResourceAwsEc2InstanceIpV6Addresses => (is => 'ro', isa => ArrayRef[SecurityHub_IpFilter]);
  has ResourceAwsEc2InstanceKeyName => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceAwsEc2InstanceLaunchedAt => (is => 'ro', isa => ArrayRef[SecurityHub_DateFilter]);
  has ResourceAwsEc2InstanceSubnetId => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceAwsEc2InstanceType => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceAwsEc2InstanceVpcId => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceAwsIamAccessKeyCreatedAt => (is => 'ro', isa => ArrayRef[SecurityHub_DateFilter]);
  has ResourceAwsIamAccessKeyStatus => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceAwsIamAccessKeyUserName => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceAwsS3BucketOwnerId => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceAwsS3BucketOwnerName => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceContainerImageId => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceContainerImageName => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceContainerLaunchedAt => (is => 'ro', isa => ArrayRef[SecurityHub_DateFilter]);
  has ResourceContainerName => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceDetailsOther => (is => 'ro', isa => ArrayRef[SecurityHub_MapFilter]);
  has ResourceId => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourcePartition => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceRegion => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ResourceTags => (is => 'ro', isa => ArrayRef[SecurityHub_MapFilter]);
  has ResourceType => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has SeverityLabel => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has SeverityNormalized => (is => 'ro', isa => ArrayRef[SecurityHub_NumberFilter]);
  has SeverityProduct => (is => 'ro', isa => ArrayRef[SecurityHub_NumberFilter]);
  has SourceUrl => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ThreatIntelIndicatorCategory => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ThreatIntelIndicatorLastObservedAt => (is => 'ro', isa => ArrayRef[SecurityHub_DateFilter]);
  has ThreatIntelIndicatorSource => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ThreatIntelIndicatorSourceUrl => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ThreatIntelIndicatorType => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has ThreatIntelIndicatorValue => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has Title => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has Type => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has UpdatedAt => (is => 'ro', isa => ArrayRef[SecurityHub_DateFilter]);
  has UserDefinedFields => (is => 'ro', isa => ArrayRef[SecurityHub_MapFilter]);
  has VerificationState => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);
  has WorkflowState => (is => 'ro', isa => ArrayRef[SecurityHub_StringFilter]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThreatIntelIndicatorType' => {
                                               'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                               'class' => 'Paws::SecurityHub::StringFilter'
                                             },
               'Keyword' => {
                              'type' => 'ArrayRef[SecurityHub_KeywordFilter]',
                              'class' => 'Paws::SecurityHub::KeywordFilter'
                            },
               'Title' => {
                            'type' => 'ArrayRef[SecurityHub_StringFilter]',
                            'class' => 'Paws::SecurityHub::StringFilter'
                          },
               'RelatedFindingsProductArn' => {
                                                'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                                'class' => 'Paws::SecurityHub::StringFilter'
                                              },
               'NoteUpdatedAt' => {
                                    'class' => 'Paws::SecurityHub::DateFilter',
                                    'type' => 'ArrayRef[SecurityHub_DateFilter]'
                                  },
               'ResourceId' => {
                                 'class' => 'Paws::SecurityHub::StringFilter',
                                 'type' => 'ArrayRef[SecurityHub_StringFilter]'
                               },
               'MalwareName' => {
                                  'class' => 'Paws::SecurityHub::StringFilter',
                                  'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                },
               'ResourceContainerImageId' => {
                                               'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                               'class' => 'Paws::SecurityHub::StringFilter'
                                             },
               'ResourcePartition' => {
                                        'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                        'class' => 'Paws::SecurityHub::StringFilter'
                                      },
               'NetworkDirection' => {
                                       'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                       'class' => 'Paws::SecurityHub::StringFilter'
                                     },
               'GeneratorId' => {
                                  'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                  'class' => 'Paws::SecurityHub::StringFilter'
                                },
               'FirstObservedAt' => {
                                      'class' => 'Paws::SecurityHub::DateFilter',
                                      'type' => 'ArrayRef[SecurityHub_DateFilter]'
                                    },
               'ThreatIntelIndicatorLastObservedAt' => {
                                                         'class' => 'Paws::SecurityHub::DateFilter',
                                                         'type' => 'ArrayRef[SecurityHub_DateFilter]'
                                                       },
               'LastObservedAt' => {
                                     'class' => 'Paws::SecurityHub::DateFilter',
                                     'type' => 'ArrayRef[SecurityHub_DateFilter]'
                                   },
               'NetworkDestinationPort' => {
                                             'class' => 'Paws::SecurityHub::NumberFilter',
                                             'type' => 'ArrayRef[SecurityHub_NumberFilter]'
                                           },
               'Id' => {
                         'type' => 'ArrayRef[SecurityHub_StringFilter]',
                         'class' => 'Paws::SecurityHub::StringFilter'
                       },
               'SeverityNormalized' => {
                                         'class' => 'Paws::SecurityHub::NumberFilter',
                                         'type' => 'ArrayRef[SecurityHub_NumberFilter]'
                                       },
               'ResourceContainerLaunchedAt' => {
                                                  'type' => 'ArrayRef[SecurityHub_DateFilter]',
                                                  'class' => 'Paws::SecurityHub::DateFilter'
                                                },
               'Description' => {
                                  'class' => 'Paws::SecurityHub::StringFilter',
                                  'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                },
               'NoteUpdatedBy' => {
                                    'class' => 'Paws::SecurityHub::StringFilter',
                                    'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                  },
               'ProductArn' => {
                                 'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                 'class' => 'Paws::SecurityHub::StringFilter'
                               },
               'UpdatedAt' => {
                                'type' => 'ArrayRef[SecurityHub_DateFilter]',
                                'class' => 'Paws::SecurityHub::DateFilter'
                              },
               'ProcessLaunchedAt' => {
                                        'type' => 'ArrayRef[SecurityHub_DateFilter]',
                                        'class' => 'Paws::SecurityHub::DateFilter'
                                      },
               'Type' => {
                           'type' => 'ArrayRef[SecurityHub_StringFilter]',
                           'class' => 'Paws::SecurityHub::StringFilter'
                         },
               'NetworkProtocol' => {
                                      'class' => 'Paws::SecurityHub::StringFilter',
                                      'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                    },
               'MalwareType' => {
                                  'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                  'class' => 'Paws::SecurityHub::StringFilter'
                                },
               'ResourceAwsEc2InstanceImageId' => {
                                                    'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                                    'class' => 'Paws::SecurityHub::StringFilter'
                                                  },
               'ResourceAwsEc2InstanceSubnetId' => {
                                                     'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                                     'class' => 'Paws::SecurityHub::StringFilter'
                                                   },
               'ProcessName' => {
                                  'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                  'class' => 'Paws::SecurityHub::StringFilter'
                                },
               'ProcessParentPid' => {
                                       'type' => 'ArrayRef[SecurityHub_NumberFilter]',
                                       'class' => 'Paws::SecurityHub::NumberFilter'
                                     },
               'CompanyName' => {
                                  'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                  'class' => 'Paws::SecurityHub::StringFilter'
                                },
               'MalwareState' => {
                                   'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                   'class' => 'Paws::SecurityHub::StringFilter'
                                 },
               'RelatedFindingsId' => {
                                        'class' => 'Paws::SecurityHub::StringFilter',
                                        'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                      },
               'RecordState' => {
                                  'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                  'class' => 'Paws::SecurityHub::StringFilter'
                                },
               'ResourceContainerName' => {
                                            'class' => 'Paws::SecurityHub::StringFilter',
                                            'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                          },
               'ResourceAwsIamAccessKeyCreatedAt' => {
                                                       'class' => 'Paws::SecurityHub::DateFilter',
                                                       'type' => 'ArrayRef[SecurityHub_DateFilter]'
                                                     },
               'AwsAccountId' => {
                                   'class' => 'Paws::SecurityHub::StringFilter',
                                   'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                 },
               'NetworkSourceIpV6' => {
                                        'class' => 'Paws::SecurityHub::IpFilter',
                                        'type' => 'ArrayRef[SecurityHub_IpFilter]'
                                      },
               'ResourceDetailsOther' => {
                                           'type' => 'ArrayRef[SecurityHub_MapFilter]',
                                           'class' => 'Paws::SecurityHub::MapFilter'
                                         },
               'ResourceAwsEc2InstanceIpV4Addresses' => {
                                                          'class' => 'Paws::SecurityHub::IpFilter',
                                                          'type' => 'ArrayRef[SecurityHub_IpFilter]'
                                                        },
               'ThreatIntelIndicatorSourceUrl' => {
                                                    'class' => 'Paws::SecurityHub::StringFilter',
                                                    'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                                  },
               'ResourceRegion' => {
                                     'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                     'class' => 'Paws::SecurityHub::StringFilter'
                                   },
               'NetworkSourcePort' => {
                                        'class' => 'Paws::SecurityHub::NumberFilter',
                                        'type' => 'ArrayRef[SecurityHub_NumberFilter]'
                                      },
               'ResourceAwsEc2InstanceKeyName' => {
                                                    'class' => 'Paws::SecurityHub::StringFilter',
                                                    'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                                  },
               'ResourceAwsS3BucketOwnerName' => {
                                                   'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                                   'class' => 'Paws::SecurityHub::StringFilter'
                                                 },
               'ProcessTerminatedAt' => {
                                          'type' => 'ArrayRef[SecurityHub_DateFilter]',
                                          'class' => 'Paws::SecurityHub::DateFilter'
                                        },
               'SeverityLabel' => {
                                    'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                    'class' => 'Paws::SecurityHub::StringFilter'
                                  },
               'SeverityProduct' => {
                                      'type' => 'ArrayRef[SecurityHub_NumberFilter]',
                                      'class' => 'Paws::SecurityHub::NumberFilter'
                                    },
               'ResourceAwsEc2InstanceVpcId' => {
                                                  'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                                  'class' => 'Paws::SecurityHub::StringFilter'
                                                },
               'ResourceType' => {
                                   'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                   'class' => 'Paws::SecurityHub::StringFilter'
                                 },
               'SourceUrl' => {
                                'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                'class' => 'Paws::SecurityHub::StringFilter'
                              },
               'NetworkSourceDomain' => {
                                          'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                          'class' => 'Paws::SecurityHub::StringFilter'
                                        },
               'RecommendationText' => {
                                         'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                         'class' => 'Paws::SecurityHub::StringFilter'
                                       },
               'NoteText' => {
                               'type' => 'ArrayRef[SecurityHub_StringFilter]',
                               'class' => 'Paws::SecurityHub::StringFilter'
                             },
               'MalwarePath' => {
                                  'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                  'class' => 'Paws::SecurityHub::StringFilter'
                                },
               'VerificationState' => {
                                        'class' => 'Paws::SecurityHub::StringFilter',
                                        'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                      },
               'ProductFields' => {
                                    'type' => 'ArrayRef[SecurityHub_MapFilter]',
                                    'class' => 'Paws::SecurityHub::MapFilter'
                                  },
               'ResourceContainerImageName' => {
                                                 'class' => 'Paws::SecurityHub::StringFilter',
                                                 'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                               },
               'ProductName' => {
                                  'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                  'class' => 'Paws::SecurityHub::StringFilter'
                                },
               'UserDefinedFields' => {
                                        'class' => 'Paws::SecurityHub::MapFilter',
                                        'type' => 'ArrayRef[SecurityHub_MapFilter]'
                                      },
               'Confidence' => {
                                 'type' => 'ArrayRef[SecurityHub_NumberFilter]',
                                 'class' => 'Paws::SecurityHub::NumberFilter'
                               },
               'ResourceAwsEc2InstanceLaunchedAt' => {
                                                       'type' => 'ArrayRef[SecurityHub_DateFilter]',
                                                       'class' => 'Paws::SecurityHub::DateFilter'
                                                     },
               'WorkflowState' => {
                                    'class' => 'Paws::SecurityHub::StringFilter',
                                    'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                  },
               'NetworkDestinationIpV4' => {
                                             'class' => 'Paws::SecurityHub::IpFilter',
                                             'type' => 'ArrayRef[SecurityHub_IpFilter]'
                                           },
               'ResourceAwsEc2InstanceIamInstanceProfileArn' => {
                                                                  'class' => 'Paws::SecurityHub::StringFilter',
                                                                  'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                                                },
               'ThreatIntelIndicatorValue' => {
                                                'class' => 'Paws::SecurityHub::StringFilter',
                                                'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                              },
               'NetworkDestinationDomain' => {
                                               'class' => 'Paws::SecurityHub::StringFilter',
                                               'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                             },
               'ThreatIntelIndicatorSource' => {
                                                 'class' => 'Paws::SecurityHub::StringFilter',
                                                 'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                               },
               'ResourceAwsS3BucketOwnerId' => {
                                                 'class' => 'Paws::SecurityHub::StringFilter',
                                                 'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                               },
               'NetworkSourceMac' => {
                                       'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                       'class' => 'Paws::SecurityHub::StringFilter'
                                     },
               'ProcessPid' => {
                                 'class' => 'Paws::SecurityHub::NumberFilter',
                                 'type' => 'ArrayRef[SecurityHub_NumberFilter]'
                               },
               'Criticality' => {
                                  'type' => 'ArrayRef[SecurityHub_NumberFilter]',
                                  'class' => 'Paws::SecurityHub::NumberFilter'
                                },
               'ResourceAwsIamAccessKeyStatus' => {
                                                    'class' => 'Paws::SecurityHub::StringFilter',
                                                    'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                                  },
               'ProcessPath' => {
                                  'type' => 'ArrayRef[SecurityHub_StringFilter]',
                                  'class' => 'Paws::SecurityHub::StringFilter'
                                },
               'ComplianceStatus' => {
                                       'class' => 'Paws::SecurityHub::StringFilter',
                                       'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                     },
               'NetworkDestinationIpV6' => {
                                             'class' => 'Paws::SecurityHub::IpFilter',
                                             'type' => 'ArrayRef[SecurityHub_IpFilter]'
                                           },
               'CreatedAt' => {
                                'class' => 'Paws::SecurityHub::DateFilter',
                                'type' => 'ArrayRef[SecurityHub_DateFilter]'
                              },
               'ResourceAwsEc2InstanceType' => {
                                                 'class' => 'Paws::SecurityHub::StringFilter',
                                                 'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                               },
               'ResourceAwsEc2InstanceIpV6Addresses' => {
                                                          'class' => 'Paws::SecurityHub::IpFilter',
                                                          'type' => 'ArrayRef[SecurityHub_IpFilter]'
                                                        },
               'ResourceAwsIamAccessKeyUserName' => {
                                                      'class' => 'Paws::SecurityHub::StringFilter',
                                                      'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                                    },
               'NetworkSourceIpV4' => {
                                        'class' => 'Paws::SecurityHub::IpFilter',
                                        'type' => 'ArrayRef[SecurityHub_IpFilter]'
                                      },
               'ThreatIntelIndicatorCategory' => {
                                                   'class' => 'Paws::SecurityHub::StringFilter',
                                                   'type' => 'ArrayRef[SecurityHub_StringFilter]'
                                                 },
               'ResourceTags' => {
                                   'class' => 'Paws::SecurityHub::MapFilter',
                                   'type' => 'ArrayRef[SecurityHub_MapFilter]'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsSecurityFindingFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsSecurityFindingFilters object:

  $service_obj->Method(Att1 => { AwsAccountId => $value, ..., WorkflowState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsSecurityFindingFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsAccountId

=head1 DESCRIPTION

A collection of attributes that are applied to all active Security
Hub-aggregated findings and that result in a subset of findings that
are included in this insight.

=head1 ATTRIBUTES


=head2 AwsAccountId => ArrayRef[SecurityHub_StringFilter]

  The AWS account ID that a finding is generated in.


=head2 CompanyName => ArrayRef[SecurityHub_StringFilter]

  The name of the findings provider (company) that owns the solution
(product) that generates findings.


=head2 ComplianceStatus => ArrayRef[SecurityHub_StringFilter]

  Exclusive to findings that are generated as the result of a check run
against a specific rule in a supported standard (for example, CIS AWS
Foundations). Contains compliance-related finding details.


=head2 Confidence => ArrayRef[SecurityHub_NumberFilter]

  A finding's confidence. Confidence is defined as the likelihood that a
finding accurately identifies the behavior or issue that it was
intended to identify. Confidence is scored on a 0-100 basis using a
ratio scale, where 0 means zero percent confidence and 100 means 100
percent confidence.


=head2 CreatedAt => ArrayRef[SecurityHub_DateFilter]

  An ISO8601-formatted timestamp that indicates when the
security-findings provider captured the potential security issue that a
finding captured.


=head2 Criticality => ArrayRef[SecurityHub_NumberFilter]

  The level of importance assigned to the resources associated with the
finding. A score of 0 means that the underlying resources have no
criticality, and a score of 100 is reserved for the most critical
resources.


=head2 Description => ArrayRef[SecurityHub_StringFilter]

  A finding's description.


=head2 FirstObservedAt => ArrayRef[SecurityHub_DateFilter]

  An ISO8601-formatted timestamp that indicates when the
security-findings provider first observed the potential security issue
that a finding captured.


=head2 GeneratorId => ArrayRef[SecurityHub_StringFilter]

  The identifier for the solution-specific component (a discrete unit of
logic) that generated a finding. In various security-findings
providers' solutions, this generator can be called a rule, a check, a
detector, a plug-in, etc.


=head2 Id => ArrayRef[SecurityHub_StringFilter]

  The security findings provider-specific identifier for a finding.


=head2 Keyword => ArrayRef[SecurityHub_KeywordFilter]

  A keyword for a finding.


=head2 LastObservedAt => ArrayRef[SecurityHub_DateFilter]

  An ISO8601-formatted timestamp that indicates when the
security-findings provider most recently observed the potential
security issue that a finding captured.


=head2 MalwareName => ArrayRef[SecurityHub_StringFilter]

  The name of the malware that was observed.


=head2 MalwarePath => ArrayRef[SecurityHub_StringFilter]

  The filesystem path of the malware that was observed.


=head2 MalwareState => ArrayRef[SecurityHub_StringFilter]

  The state of the malware that was observed.


=head2 MalwareType => ArrayRef[SecurityHub_StringFilter]

  The type of the malware that was observed.


=head2 NetworkDestinationDomain => ArrayRef[SecurityHub_StringFilter]

  The destination domain of network-related information about a finding.


=head2 NetworkDestinationIpV4 => ArrayRef[SecurityHub_IpFilter]

  The destination IPv4 address of network-related information about a
finding.


=head2 NetworkDestinationIpV6 => ArrayRef[SecurityHub_IpFilter]

  The destination IPv6 address of network-related information about a
finding.


=head2 NetworkDestinationPort => ArrayRef[SecurityHub_NumberFilter]

  The destination port of network-related information about a finding.


=head2 NetworkDirection => ArrayRef[SecurityHub_StringFilter]

  Indicates the direction of network traffic associated with a finding.


=head2 NetworkProtocol => ArrayRef[SecurityHub_StringFilter]

  The protocol of network-related information about a finding.


=head2 NetworkSourceDomain => ArrayRef[SecurityHub_StringFilter]

  The source domain of network-related information about a finding.


=head2 NetworkSourceIpV4 => ArrayRef[SecurityHub_IpFilter]

  The source IPv4 address of network-related information about a finding.


=head2 NetworkSourceIpV6 => ArrayRef[SecurityHub_IpFilter]

  The source IPv6 address of network-related information about a finding.


=head2 NetworkSourceMac => ArrayRef[SecurityHub_StringFilter]

  The source media access control (MAC) address of network-related
information about a finding.


=head2 NetworkSourcePort => ArrayRef[SecurityHub_NumberFilter]

  The source port of network-related information about a finding.


=head2 NoteText => ArrayRef[SecurityHub_StringFilter]

  The text of a note.


=head2 NoteUpdatedAt => ArrayRef[SecurityHub_DateFilter]

  The timestamp of when the note was updated.


=head2 NoteUpdatedBy => ArrayRef[SecurityHub_StringFilter]

  The principal that created a note.


=head2 ProcessLaunchedAt => ArrayRef[SecurityHub_DateFilter]

  The date/time that the process was launched.


=head2 ProcessName => ArrayRef[SecurityHub_StringFilter]

  The name of the process.


=head2 ProcessParentPid => ArrayRef[SecurityHub_NumberFilter]

  The parent process ID.


=head2 ProcessPath => ArrayRef[SecurityHub_StringFilter]

  The path to the process executable.


=head2 ProcessPid => ArrayRef[SecurityHub_NumberFilter]

  The process ID.


=head2 ProcessTerminatedAt => ArrayRef[SecurityHub_DateFilter]

  The date/time that the process was terminated.


=head2 ProductArn => ArrayRef[SecurityHub_StringFilter]

  The ARN generated by Security Hub that uniquely identifies a
third-party company (security findings provider) after this provider's
product (solution that generates findings) is registered with Security
Hub.


=head2 ProductFields => ArrayRef[SecurityHub_MapFilter]

  A data type where security-findings providers can include additional
solution-specific details that aren't part of the defined
C<AwsSecurityFinding> format.


=head2 ProductName => ArrayRef[SecurityHub_StringFilter]

  The name of the solution (product) that generates findings.


=head2 RecommendationText => ArrayRef[SecurityHub_StringFilter]

  The recommendation of what to do about the issue described in a
finding.


=head2 RecordState => ArrayRef[SecurityHub_StringFilter]

  The updated record state for the finding.


=head2 RelatedFindingsId => ArrayRef[SecurityHub_StringFilter]

  The solution-generated identifier for a related finding.


=head2 RelatedFindingsProductArn => ArrayRef[SecurityHub_StringFilter]

  The ARN of the solution that generated a related finding.


=head2 ResourceAwsEc2InstanceIamInstanceProfileArn => ArrayRef[SecurityHub_StringFilter]

  The IAM profile ARN of the instance.


=head2 ResourceAwsEc2InstanceImageId => ArrayRef[SecurityHub_StringFilter]

  The Amazon Machine Image (AMI) ID of the instance.


=head2 ResourceAwsEc2InstanceIpV4Addresses => ArrayRef[SecurityHub_IpFilter]

  The IPv4 addresses associated with the instance.


=head2 ResourceAwsEc2InstanceIpV6Addresses => ArrayRef[SecurityHub_IpFilter]

  The IPv6 addresses associated with the instance.


=head2 ResourceAwsEc2InstanceKeyName => ArrayRef[SecurityHub_StringFilter]

  The key name associated with the instance.


=head2 ResourceAwsEc2InstanceLaunchedAt => ArrayRef[SecurityHub_DateFilter]

  The date/time the instance was launched.


=head2 ResourceAwsEc2InstanceSubnetId => ArrayRef[SecurityHub_StringFilter]

  The identifier of the subnet that the instance was launched in.


=head2 ResourceAwsEc2InstanceType => ArrayRef[SecurityHub_StringFilter]

  The instance type of the instance.


=head2 ResourceAwsEc2InstanceVpcId => ArrayRef[SecurityHub_StringFilter]

  The identifier of the VPC that the instance was launched in.


=head2 ResourceAwsIamAccessKeyCreatedAt => ArrayRef[SecurityHub_DateFilter]

  The creation date/time of the IAM access key related to a finding.


=head2 ResourceAwsIamAccessKeyStatus => ArrayRef[SecurityHub_StringFilter]

  The status of the IAM access key related to a finding.


=head2 ResourceAwsIamAccessKeyUserName => ArrayRef[SecurityHub_StringFilter]

  The user associated with the IAM access key related to a finding.


=head2 ResourceAwsS3BucketOwnerId => ArrayRef[SecurityHub_StringFilter]

  The canonical user ID of the owner of the S3 bucket.


=head2 ResourceAwsS3BucketOwnerName => ArrayRef[SecurityHub_StringFilter]

  The display name of the owner of the S3 bucket.


=head2 ResourceContainerImageId => ArrayRef[SecurityHub_StringFilter]

  The identifier of the image related to a finding.


=head2 ResourceContainerImageName => ArrayRef[SecurityHub_StringFilter]

  The name of the image related to a finding.


=head2 ResourceContainerLaunchedAt => ArrayRef[SecurityHub_DateFilter]

  The date/time that the container was started.


=head2 ResourceContainerName => ArrayRef[SecurityHub_StringFilter]

  The name of the container related to a finding.


=head2 ResourceDetailsOther => ArrayRef[SecurityHub_MapFilter]

  The details of a resource that doesn't have a specific subfield for the
resource type defined.


=head2 ResourceId => ArrayRef[SecurityHub_StringFilter]

  The canonical identifier for the given resource type.


=head2 ResourcePartition => ArrayRef[SecurityHub_StringFilter]

  The canonical AWS partition name that the Region is assigned to.


=head2 ResourceRegion => ArrayRef[SecurityHub_StringFilter]

  The canonical AWS external Region name where this resource is located.


=head2 ResourceTags => ArrayRef[SecurityHub_MapFilter]

  A list of AWS tags associated with a resource at the time the finding
was processed.


=head2 ResourceType => ArrayRef[SecurityHub_StringFilter]

  Specifies the type of the resource that details are provided for.


=head2 SeverityLabel => ArrayRef[SecurityHub_StringFilter]

  The label of a finding's severity.


=head2 SeverityNormalized => ArrayRef[SecurityHub_NumberFilter]

  The normalized severity of a finding.


=head2 SeverityProduct => ArrayRef[SecurityHub_NumberFilter]

  The native severity as defined by the security-findings provider's
solution that generated the finding.


=head2 SourceUrl => ArrayRef[SecurityHub_StringFilter]

  A URL that links to a page about the current finding in the
security-findings provider's solution.


=head2 ThreatIntelIndicatorCategory => ArrayRef[SecurityHub_StringFilter]

  The category of a threat intel indicator.


=head2 ThreatIntelIndicatorLastObservedAt => ArrayRef[SecurityHub_DateFilter]

  The date/time of the last observation of a threat intel indicator.


=head2 ThreatIntelIndicatorSource => ArrayRef[SecurityHub_StringFilter]

  The source of the threat intel.


=head2 ThreatIntelIndicatorSourceUrl => ArrayRef[SecurityHub_StringFilter]

  The URL for more details from the source of the threat intel.


=head2 ThreatIntelIndicatorType => ArrayRef[SecurityHub_StringFilter]

  The type of a threat intel indicator.


=head2 ThreatIntelIndicatorValue => ArrayRef[SecurityHub_StringFilter]

  The value of a threat intel indicator.


=head2 Title => ArrayRef[SecurityHub_StringFilter]

  A finding's title.


=head2 Type => ArrayRef[SecurityHub_StringFilter]

  A finding type in the format of C<namespace/category/classifier> that
classifies a finding.


=head2 UpdatedAt => ArrayRef[SecurityHub_DateFilter]

  An ISO8601-formatted timestamp that indicates when the
security-findings provider last updated the finding record.


=head2 UserDefinedFields => ArrayRef[SecurityHub_MapFilter]

  A list of name/value string pairs associated with the finding. These
are custom, user-defined fields added to a finding.


=head2 VerificationState => ArrayRef[SecurityHub_StringFilter]

  The veracity of a finding.


=head2 WorkflowState => ArrayRef[SecurityHub_StringFilter]

  The workflow state of a finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

