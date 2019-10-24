# Generated from callresult_class.tt

package Paws::RDS::CreateOptionGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_OptionGroup/;
  has OptionGroup => (is => 'ro', isa => RDS_OptionGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OptionGroup' => {
                                  'class' => 'Paws::RDS::OptionGroup',
                                  'type' => 'RDS_OptionGroup'
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

Paws::RDS::CreateOptionGroupResult

=head1 ATTRIBUTES


=head2 OptionGroup => RDS_OptionGroup




=head2 _request_id => Str


=cut

