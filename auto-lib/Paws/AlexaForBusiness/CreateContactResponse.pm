# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::CreateContactResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has ContactArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContactArn' => {
                                 'type' => 'Str'
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

Paws::AlexaForBusiness::CreateContactResponse

=head1 ATTRIBUTES


=head2 ContactArn => Str

The ARN of the newly created address book.


=head2 _request_id => Str


=cut

1;