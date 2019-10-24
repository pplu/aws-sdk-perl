
package Paws::ApiGateway::VpcLink;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ApiGateway::Types qw/ApiGateway_MapOfStringToString/;
  has Description => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ApiGateway_MapOfStringToString);
  has TargetArns => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TargetArns' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'Id' => {
                         'type' => 'Str'
                       },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ApiGateway::MapOfStringToString',
                           'type' => 'ApiGateway_MapOfStringToString'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'TargetArns' => 'targetArns',
                       'Id' => 'id',
                       'Status' => 'status',
                       'Tags' => 'tags',
                       'StatusMessage' => 'statusMessage',
                       'Name' => 'name',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::VpcLink

=head1 ATTRIBUTES


=head2 Description => Str

The description of the VPC link.


=head2 Id => Str

The identifier of the VpcLink. It is used in an Integration to
reference this VpcLink.


=head2 Name => Str

The name used to label and identify the VPC link.


=head2 Status => Str

The status of the VPC link. The valid values are C<AVAILABLE>,
C<PENDING>, C<DELETING>, or C<FAILED>. Deploying an API will wait if
the status is C<PENDING> and will fail if the status is C<DELETING>.

Valid values are: C<"AVAILABLE">, C<"PENDING">, C<"DELETING">, C<"FAILED">
=head2 StatusMessage => Str

A description about the VPC link status.


=head2 Tags => ApiGateway_MapOfStringToString

The collection of tags. Each tag element is associated with a given
resource.


=head2 TargetArns => ArrayRef[Str|Undef]

The ARNs of network load balancers of the VPC targeted by the VPC link.
The network load balancers must be owned by the same AWS account of the
API owner.


=head2 _request_id => Str


=cut

