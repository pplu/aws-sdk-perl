
package Paws::Greengrass::GetBulkDeploymentStatusResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_ErrorDetail Greengrass___mapOf__string Greengrass_BulkDeploymentMetrics/;
  has BulkDeploymentMetrics => (is => 'ro', isa => Greengrass_BulkDeploymentMetrics);
  has BulkDeploymentStatus => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has ErrorDetails => (is => 'ro', isa => ArrayRef[Greengrass_ErrorDetail]);
  has ErrorMessage => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Greengrass___mapOf__string);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BulkDeploymentStatus' => {
                                           'type' => 'Str'
                                         },
               'BulkDeploymentMetrics' => {
                                            'class' => 'Paws::Greengrass::BulkDeploymentMetrics',
                                            'type' => 'Greengrass_BulkDeploymentMetrics'
                                          },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ErrorDetails' => {
                                   'class' => 'Paws::Greengrass::ErrorDetail',
                                   'type' => 'ArrayRef[Greengrass_ErrorDetail]'
                                 },
               'Tags' => {
                           'class' => 'Paws::Greengrass::__mapOf__string',
                           'type' => 'Greengrass___mapOf__string'
                         },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetBulkDeploymentStatusResponse

=head1 ATTRIBUTES


=head2 BulkDeploymentMetrics => Greengrass_BulkDeploymentMetrics

Relevant metrics on input records processed during bulk deployment.


=head2 BulkDeploymentStatus => Str

The status of the bulk deployment.

Valid values are: C<"Initializing">, C<"Running">, C<"Completed">, C<"Stopping">, C<"Stopped">, C<"Failed">
=head2 CreatedAt => Str

The time, in ISO format, when the deployment was created.


=head2 ErrorDetails => ArrayRef[Greengrass_ErrorDetail]

Error details


=head2 ErrorMessage => Str

Error message


=head2 Tags => Greengrass___mapOf__string

The tags for the definition.


=head2 _request_id => Str


=cut

