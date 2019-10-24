# Generated from json/callresult_class.tt

package Paws::Shield::DescribeEmergencyContactSettingsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Shield::Types qw/Shield_EmergencyContact/;
  has EmergencyContactList => (is => 'ro', isa => ArrayRef[Shield_EmergencyContact]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EmergencyContactList' => {
                                           'class' => 'Paws::Shield::EmergencyContact',
                                           'type' => 'ArrayRef[Shield_EmergencyContact]'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeEmergencyContactSettingsResponse

=head1 ATTRIBUTES


=head2 EmergencyContactList => ArrayRef[Shield_EmergencyContact]

A list of email addresses that the DRT can use to contact you during a
suspected attack.


=head2 _request_id => Str


=cut

1;