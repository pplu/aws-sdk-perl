# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListStackInstancesForProvisionedProductOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_StackInstance/;
  has NextPageToken => (is => 'ro', isa => Str);
  has StackInstances => (is => 'ro', isa => ArrayRef[ServiceCatalog_StackInstance]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StackInstances' => {
                                     'class' => 'Paws::ServiceCatalog::StackInstance',
                                     'type' => 'ArrayRef[ServiceCatalog_StackInstance]'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListStackInstancesForProvisionedProductOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 StackInstances => ArrayRef[ServiceCatalog_StackInstance]

List of stack instances.


=head2 _request_id => Str


=cut

1;