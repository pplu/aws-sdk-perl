# Generated from json/callresult_class.tt

package Paws::Glue::GetUserDefinedFunctionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_UserDefinedFunction/;
  has NextToken => (is => 'ro', isa => Str);
  has UserDefinedFunctions => (is => 'ro', isa => ArrayRef[Glue_UserDefinedFunction]);

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
               'UserDefinedFunctions' => {
                                           'class' => 'Paws::Glue::UserDefinedFunction',
                                           'type' => 'ArrayRef[Glue_UserDefinedFunction]'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetUserDefinedFunctionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if the list of functions returned does not
include the last requested function.


=head2 UserDefinedFunctions => ArrayRef[Glue_UserDefinedFunction]

A list of requested function definitions.


=head2 _request_id => Str


=cut

1;