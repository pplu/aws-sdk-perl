# Generated from json/callresult_class.tt

package Paws::Organizations::ListCreateAccountStatusResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Organizations::Types qw/Organizations_CreateAccountStatus/;
  has CreateAccountStatuses => (is => 'ro', isa => ArrayRef[Organizations_CreateAccountStatus]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreateAccountStatuses' => {
                                            'type' => 'ArrayRef[Organizations_CreateAccountStatus]',
                                            'class' => 'Paws::Organizations::CreateAccountStatus'
                                          },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListCreateAccountStatusResponse

=head1 ATTRIBUTES


=head2 CreateAccountStatuses => ArrayRef[Organizations_CreateAccountStatus]

A list of objects with details about the requests. Certain elements,
such as the accountId number, are present in the output only after the
account has been successfully created.


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 _request_id => Str


=cut

1;