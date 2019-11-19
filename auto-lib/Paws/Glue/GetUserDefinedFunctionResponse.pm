# Generated from json/callresult_class.tt

package Paws::Glue::GetUserDefinedFunctionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_UserDefinedFunction/;
  has UserDefinedFunction => (is => 'ro', isa => Glue_UserDefinedFunction);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserDefinedFunction' => {
                                          'class' => 'Paws::Glue::UserDefinedFunction',
                                          'type' => 'Glue_UserDefinedFunction'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetUserDefinedFunctionResponse

=head1 ATTRIBUTES


=head2 UserDefinedFunction => Glue_UserDefinedFunction

The requested function definition.


=head2 _request_id => Str


=cut

1;