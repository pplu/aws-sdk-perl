
package Paws::ApiGateway::DocumentationVersion;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw//;
  has CreatedDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Version' => {
                              'type' => 'Str'
                            },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Version' => 'version',
                       'CreatedDate' => 'createdDate',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DocumentationVersion

=head1 ATTRIBUTES


=head2 CreatedDate => Str

The date when the API documentation snapshot is created.


=head2 Description => Str

The description of the API documentation snapshot.


=head2 Version => Str

The version identifier of the API documentation snapshot.


=head2 _request_id => Str


=cut

