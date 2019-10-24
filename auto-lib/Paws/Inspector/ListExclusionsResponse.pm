# Generated from json/callresult_class.tt

package Paws::Inspector::ListExclusionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Inspector::Types qw//;
  has ExclusionArns => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ExclusionArns' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ExclusionArns' => 'exclusionArns'
                     },
  'IsRequired' => {
                    'ExclusionArns' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListExclusionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExclusionArns => ArrayRef[Str|Undef]

A list of exclusions' ARNs returned by the action.


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameters is present in the response and contains the value to use for
the nextToken parameter in a subsequent pagination request. If there is
no more data to be listed, this parameter is set to null.


=head2 _request_id => Str


=cut

1;