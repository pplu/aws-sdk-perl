
package Paws::ApiGateway::Stages;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_Stage/;
  has Item => (is => 'ro', isa => ArrayRef[ApiGateway_Stage]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Item' => {
                           'class' => 'Paws::ApiGateway::Stage',
                           'type' => 'ArrayRef[ApiGateway_Stage]'
                         }
             },
  'NameInRequest' => {
                       'Item' => 'item'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Stages

=head1 ATTRIBUTES


=head2 Item => ArrayRef[ApiGateway_Stage]

The current page of elements from this collection.


=head2 _request_id => Str


=cut

