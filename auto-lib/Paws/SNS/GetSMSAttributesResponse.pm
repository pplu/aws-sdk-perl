# Generated from callresult_class.tt

package Paws::SNS::GetSMSAttributesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SNS::Types qw/SNS_MapStringToString/;
  has Attributes => (is => 'ro', isa => SNS_MapStringToString);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Attributes' => {
                                 'class' => 'Paws::SNS::MapStringToString',
                                 'type' => 'SNS_MapStringToString'
                               }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetSMSAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => SNS_MapStringToString

The SMS attribute names and their values.


=head2 _request_id => Str


=cut

