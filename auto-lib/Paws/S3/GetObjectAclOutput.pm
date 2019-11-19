
package Paws::S3::GetObjectAclOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_Grant S3_Owner/;
  has Grants => (is => 'ro', isa => ArrayRef[S3_Grant]);
  has Owner => (is => 'ro', isa => S3_Owner);
  has RequestCharged => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Owner' => {
                            'type' => 'S3_Owner',
                            'class' => 'Paws::S3::Owner'
                          },
               'Grants' => {
                             'class' => 'Paws::S3::Grant',
                             'type' => 'ArrayRef[S3_Grant]'
                           },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Grants' => 'AccessControlList'
                     },
  'ParamInHeader' => {
                       'RequestCharged' => 'x-amz-request-charged'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectAclOutput

=head1 ATTRIBUTES


=head2 Grants => ArrayRef[S3_Grant]

A list of grants.



=head2 Owner => S3_Owner

Container for the bucket owner's display name and ID.



=head2 RequestCharged => Str



Valid values are: C<"requester">


=cut

