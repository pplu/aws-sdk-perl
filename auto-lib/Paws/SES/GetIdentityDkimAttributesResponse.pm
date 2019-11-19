# Generated from callresult_class.tt

package Paws::SES::GetIdentityDkimAttributesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw/SES_DkimAttributes/;
  has DkimAttributes => (is => 'ro', isa => SES_DkimAttributes, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DkimAttributes' => {
                                     'class' => 'Paws::SES::DkimAttributes',
                                     'type' => 'SES_DkimAttributes'
                                   }
             },
  'IsRequired' => {
                    'DkimAttributes' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityDkimAttributesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DkimAttributes => SES_DkimAttributes

The DKIM attributes for an email address or a domain.


=head2 _request_id => Str


=cut

