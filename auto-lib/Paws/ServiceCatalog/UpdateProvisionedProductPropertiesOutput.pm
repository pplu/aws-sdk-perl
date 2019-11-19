# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::UpdateProvisionedProductPropertiesOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ProvisionedProductProperties/;
  has ProvisionedProductId => (is => 'ro', isa => Str);
  has ProvisionedProductProperties => (is => 'ro', isa => ServiceCatalog_ProvisionedProductProperties);
  has RecordId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RecordId' => {
                               'type' => 'Str'
                             },
               'ProvisionedProductProperties' => {
                                                   'class' => 'Paws::ServiceCatalog::ProvisionedProductProperties',
                                                   'type' => 'ServiceCatalog_ProvisionedProductProperties'
                                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'ProvisionedProductId' => {
                                           'type' => 'Str'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProvisionedProductPropertiesOutput

=head1 ATTRIBUTES


=head2 ProvisionedProductId => Str

The provisioned product identifier.


=head2 ProvisionedProductProperties => ServiceCatalog_ProvisionedProductProperties

A map that contains the properties updated.


=head2 RecordId => Str

The identifier of the record.


=head2 Status => Str

The status of the request.

Valid values are: C<"CREATED">, C<"IN_PROGRESS">, C<"IN_PROGRESS_IN_ERROR">, C<"SUCCEEDED">, C<"FAILED">
=head2 _request_id => Str


=cut

1;