# Generated from callresult_class.tt

package Paws::RDS::CopyOptionGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_OptionGroup/;
  has OptionGroup => (is => 'ro', isa => RDS_OptionGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OptionGroup' => {
                                  'class' => 'Paws::RDS::OptionGroup',
                                  'type' => 'RDS_OptionGroup'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CopyOptionGroupResult

=head1 ATTRIBUTES


=head2 OptionGroup => RDS_OptionGroup




=head2 _request_id => Str


=cut

