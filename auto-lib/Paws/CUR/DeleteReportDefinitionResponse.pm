# Generated from json/callresult_class.tt

package Paws::CUR::DeleteReportDefinitionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CUR::Types qw//;
  has ResponseMessage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResponseMessage' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CUR::DeleteReportDefinitionResponse

=head1 ATTRIBUTES


=head2 ResponseMessage => Str




=head2 _request_id => Str


=cut

1;