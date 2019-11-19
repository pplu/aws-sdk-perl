# Generated from json/callresult_class.tt

package Paws::Cloud9::ListEnvironmentsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Cloud9::Types qw//;
  has EnvironmentIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
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
               'EnvironmentIds' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'EnvironmentIds' => 'environmentIds'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::ListEnvironmentsResult

=head1 ATTRIBUTES


=head2 EnvironmentIds => ArrayRef[Str|Undef]

The list of environment identifiers.


=head2 NextToken => Str

If there are more than 25 items in the list, only the first 25 items
are returned, along with a unique string called a I<next token>. To get
the next batch of items in the list, call this operation again, adding
the next token to the call.


=head2 _request_id => Str


=cut

1;