# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::DeleteConstraintOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw//;

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
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

Paws::ServiceCatalog::DeleteConstraintOutput

=head1 ATTRIBUTES


=head2 _request_id => Str


=cut

1;