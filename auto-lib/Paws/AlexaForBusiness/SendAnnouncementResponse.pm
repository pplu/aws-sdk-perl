# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::SendAnnouncementResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has AnnouncementArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AnnouncementArn' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SendAnnouncementResponse

=head1 ATTRIBUTES


=head2 AnnouncementArn => Str

The identifier of the announcement.


=head2 _request_id => Str


=cut

1;