
package Paws::ApiGateway::Deployment;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw/ApiGateway_PathToMapOfMethodSnapshot/;
  has ApiSummary => (is => 'ro', isa => ApiGateway_PathToMapOfMethodSnapshot);
  has CreatedDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'ApiSummary' => {
                                 'class' => 'Paws::ApiGateway::PathToMapOfMethodSnapshot',
                                 'type' => 'ApiGateway_PathToMapOfMethodSnapshot'
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
                       'Id' => 'id',
                       'Description' => 'description',
                       'ApiSummary' => 'apiSummary',
                       'CreatedDate' => 'createdDate'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Deployment

=head1 ATTRIBUTES


=head2 ApiSummary => ApiGateway_PathToMapOfMethodSnapshot

A summary of the RestApi at the date and time that the deployment
resource was created.


=head2 CreatedDate => Str

The date and time that the deployment resource was created.


=head2 Description => Str

The description for the deployment resource.


=head2 Id => Str

The identifier for the deployment resource.


=head2 _request_id => Str


=cut

