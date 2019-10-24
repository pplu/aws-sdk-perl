# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::DescribeProvisioningParametersOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_TagOptionSummary ServiceCatalog_ProvisioningArtifactParameter ServiceCatalog_ConstraintSummary ServiceCatalog_UsageInstruction ServiceCatalog_ProvisioningArtifactPreferences/;
  has ConstraintSummaries => (is => 'ro', isa => ArrayRef[ServiceCatalog_ConstraintSummary]);
  has ProvisioningArtifactParameters => (is => 'ro', isa => ArrayRef[ServiceCatalog_ProvisioningArtifactParameter]);
  has ProvisioningArtifactPreferences => (is => 'ro', isa => ServiceCatalog_ProvisioningArtifactPreferences);
  has TagOptions => (is => 'ro', isa => ArrayRef[ServiceCatalog_TagOptionSummary]);
  has UsageInstructions => (is => 'ro', isa => ArrayRef[ServiceCatalog_UsageInstruction]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProvisioningArtifactPreferences' => {
                                                      'class' => 'Paws::ServiceCatalog::ProvisioningArtifactPreferences',
                                                      'type' => 'ServiceCatalog_ProvisioningArtifactPreferences'
                                                    },
               'ConstraintSummaries' => {
                                          'class' => 'Paws::ServiceCatalog::ConstraintSummary',
                                          'type' => 'ArrayRef[ServiceCatalog_ConstraintSummary]'
                                        },
               'ProvisioningArtifactParameters' => {
                                                     'class' => 'Paws::ServiceCatalog::ProvisioningArtifactParameter',
                                                     'type' => 'ArrayRef[ServiceCatalog_ProvisioningArtifactParameter]'
                                                   },
               'UsageInstructions' => {
                                        'class' => 'Paws::ServiceCatalog::UsageInstruction',
                                        'type' => 'ArrayRef[ServiceCatalog_UsageInstruction]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TagOptions' => {
                                 'class' => 'Paws::ServiceCatalog::TagOptionSummary',
                                 'type' => 'ArrayRef[ServiceCatalog_TagOptionSummary]'
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