# Generated from json/callresult_class.tt

package Paws::CognitoIdp::SetUICustomizationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_UICustomizationType/;
  has UICustomization => (is => 'ro', isa => CognitoIdp_UICustomizationType, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'UICustomization' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UICustomization' => {
                                      'type' => 'CognitoIdp_UICustomizationType',
                                      'class' => 'Paws::CognitoIdp::UICustomizationType'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SetUICustomizationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> UICustomization => CognitoIdp_UICustomizationType

The UI customization information.


=head2 _request_id => Str


=cut

1;