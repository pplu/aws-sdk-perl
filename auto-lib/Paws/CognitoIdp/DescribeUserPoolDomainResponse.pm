# Generated from json/callresult_class.tt

package Paws::CognitoIdp::DescribeUserPoolDomainResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_DomainDescriptionType/;
  has DomainDescription => (is => 'ro', isa => CognitoIdp_DomainDescriptionType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DomainDescription' => {
                                        'class' => 'Paws::CognitoIdp::DomainDescriptionType',
                                        'type' => 'CognitoIdp_DomainDescriptionType'
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

Paws::CognitoIdp::DescribeUserPoolDomainResponse

=head1 ATTRIBUTES


=head2 DomainDescription => CognitoIdp_DomainDescriptionType

A domain description object containing information about the domain.


=head2 _request_id => Str


=cut

1;