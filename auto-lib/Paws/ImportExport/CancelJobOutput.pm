# Generated from callresult_class.tt

package Paws::ImportExport::CancelJobOutput;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::ImportExport::Types qw//;
  has Success => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Success' => {
                              'type' => 'Bool'
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

Paws::ImportExport::CancelJobOutput

=head1 ATTRIBUTES


=head2 Success => Bool




=head2 _request_id => Str


=cut

