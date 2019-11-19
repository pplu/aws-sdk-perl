# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::DescribeProvisioningParametersOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_TagOptionSummary ServiceCatalog_ProvisioningArtifactPreferences ServiceCatalog_ConstraintSummary ServiceCatalog_ProvisioningArtifactParameter ServiceCatalog_UsageInstruction/;
  has ConstraintSummaries => (is => 'ro', isa => ArrayRef[ServiceCatalog_ConstraintSummary]);
  has ProvisioningArtifactParameters => (is => 'ro', isa => ArrayRef[ServiceCatalog_ProvisioningArtifactParameter]);
  has ProvisioningArtifactPreferences => (is => 'ro', isa => ServiceCatalog_ProvisioningArtifactPreferences);
  has TagOptions => (is => 'ro', isa => ArrayRef[ServiceCatalog_TagOptionSummary]);
  has UsageInstructions => (is => 'ro', isa => ArrayRef[ServiceCatalog_UsageInstruction]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagOptions' => {
                                 'type' => 'ArrayRef[ServiceCatalog_TagOptionSummary]',
                                 'class' => 'Paws::ServiceCatalog::TagOptionSummary'
                               },
               'ProvisioningArtifactPreferences' => {
                                                      'type' => 'ServiceCatalog_ProvisioningArtifactPreferences',
                                                      'class' => 'Paws::ServiceCatalog::ProvisioningArtifactPreferences'
                                                    },
               'UsageInstructions' => {
                                        'class' => 'Paws::ServiceCatalog::UsageInstruction',
                                        'type' => 'ArrayRef[ServiceCatalog_UsageInstruction]'
                                      },
               'ConstraintSummaries' => {
                                          'class' => 'Paws::ServiceCatalog::ConstraintSummary',
                                          'type' => 'ArrayRef[ServiceCatalog_ConstraintSummary]'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProvisioningArtifactParameters' => {
                                                     'type' => 'ArrayRef[ServiceCatalog_ProvisioningArtifactParameter]',
                                                     'class' => 'Paws::ServiceCatalog::ProvisioningArtifactParameter'
                                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProvisioningParametersOutput

=head1 ATTRIBUTES


=head2 ConstraintSummaries => ArrayRef[ServiceCatalog_ConstraintSummary]

Information about the constraints used to provision the product.


=head2 ProvisioningArtifactParameters => ArrayRef[ServiceCatalog_ProvisioningArtifactParameter]

Information about the parameters used to provision the product.


=head2 ProvisioningArtifactPreferences => ServiceCatalog_ProvisioningArtifactPreferences

An object that contains information about preferences, such as regions
and accounts, for the provisioning artifact.


=head2 TagOptions => ArrayRef[ServiceCatalog_TagOptionSummary]

Information about the TagOptions associated with the resource.


=head2 UsageInstructions => ArrayRef[ServiceCatalog_UsageInstruction]

Any additional metadata specifically related to the provisioning of the
product. For example, see the C<Version> field of the CloudFormation
template.


=head2 _request_id => Str


=cut

1;