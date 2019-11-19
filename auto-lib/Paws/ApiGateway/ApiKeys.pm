
package Paws::ApiGateway::ApiKeys;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ApiGateway::Types qw/ApiGateway_ApiKey/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGateway_ApiKey]);
  has Position => (is => 'ro', isa => Str);
  has Warnings => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Position' => 'position',
                       'Warnings' => 'warnings',
                       'Items' => 'item'
                     },
  'types' => {
               'Warnings' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Items' => {
                            'class' => 'Paws::ApiGateway::ApiKey',
                            'type' => 'ArrayRef[ApiGateway_ApiKey]'
                          },
               'Position' => {
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

Paws::ApiGateway::ApiKeys

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGateway_ApiKey]

The current page of elements from this collection.


=head2 Position => Str




=head2 Warnings => ArrayRef[Str|Undef]

A list of warning messages logged during the import of API keys when
the C<failOnWarnings> option is set to true.


=head2 _request_id => Str


=cut

