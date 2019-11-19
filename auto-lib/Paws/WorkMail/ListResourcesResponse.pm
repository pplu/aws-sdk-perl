# Generated from json/callresult_class.tt

package Paws::WorkMail::ListResourcesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkMail::Types qw/WorkMail_Resource/;
  has NextToken => (is => 'ro', isa => Str);
  has Resources => (is => 'ro', isa => ArrayRef[WorkMail_Resource]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Resources' => {
                                'type' => 'ArrayRef[WorkMail_Resource]',
                                'class' => 'Paws::WorkMail::Resource'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to paginate through all the organization's resources.
While results are still available, it has an associated value. When the
last page is reached, the token is empty.


=head2 Resources => ArrayRef[WorkMail_Resource]

One page of the organization's resource representation.


=head2 _request_id => Str


=cut

1;