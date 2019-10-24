# Generated from json/callresult_class.tt

package Paws::WorkMail::ListResourceDelegatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkMail::Types qw/WorkMail_Delegate/;
  has Delegates => (is => 'ro', isa => ArrayRef[WorkMail_Delegate]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Delegates' => {
                                'class' => 'Paws::WorkMail::Delegate',
                                'type' => 'ArrayRef[WorkMail_Delegate]'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListResourceDelegatesResponse

=head1 ATTRIBUTES


=head2 Delegates => ArrayRef[WorkMail_Delegate]

One page of the resource's delegates.


=head2 NextToken => Str

The token used to paginate through the delegates associated with a
resource. While results are still available, it has an associated
value. When the last page is reached, the token is empty.


=head2 _request_id => Str


=cut

1;