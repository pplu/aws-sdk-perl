# Generated from json/callresult_class.tt

package Paws::EMR::ListInstancesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EMR::Types qw/EMR_Instance/;
  has Instances => (is => 'ro', isa => ArrayRef[EMR_Instance]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Instances' => {
                                'type' => 'ArrayRef[EMR_Instance]',
                                'class' => 'Paws::EMR::Instance'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListInstancesOutput

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[EMR_Instance]

The list of instances for the cluster and given filters.


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

1;