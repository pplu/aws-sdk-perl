# Generated from callresult_class.tt

package Paws::SES::ListIdentitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SES::Types qw//;
  has Identities => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Identities' => 1
                  },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Identities' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListIdentitiesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identities => ArrayRef[Str|Undef]

A list of identities.


=head2 NextToken => Str

The token used for pagination.


=head2 _request_id => Str


=cut

