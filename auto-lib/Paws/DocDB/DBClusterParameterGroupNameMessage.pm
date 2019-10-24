# Generated from callresult_class.tt

package Paws::DocDB::DBClusterParameterGroupNameMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DocDB::Types qw//;
  has DBClusterParameterGroupName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterParameterGroupName' => {
                                                  'type' => 'Str'
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

Paws::DocDB::DBClusterParameterGroupNameMessage

=head1 ATTRIBUTES


=head2 DBClusterParameterGroupName => Str

The name of a DB cluster parameter group.

Constraints:

=over

=item *

Must be from 1 to 255 letters or numbers.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

This value is stored as a lowercase string.


=head2 _request_id => Str


=cut

