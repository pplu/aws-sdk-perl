# Generated from json/callresult_class.tt

package Paws::Inspector::ListRulesPackagesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Inspector::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has RulesPackageArns => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'RulesPackageArns' => 1
                  },
  'NameInRequest' => {
                       'RulesPackageArns' => 'rulesPackageArns',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'RulesPackageArns' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListRulesPackagesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to null.


=head2 B<REQUIRED> RulesPackageArns => ArrayRef[Str|Undef]

The list of ARNs that specifies the rules packages returned by the
action.


=head2 _request_id => Str


=cut

1;