
package Paws::ApiGateway::Deployments;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_Deployment/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGateway_Deployment]);
  has Position => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Position' => 'position',
                       'Items' => 'item'
                     },
  'types' => {
               'Position' => {
                               'type' => 'Str'
                             },
               'Items' => {
                            'class' => 'Paws::ApiGateway::Deployment',
                            'type' => 'ArrayRef[ApiGateway_Deployment]'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Deployments

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGateway_Deployment]

The current page of elements from this collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

