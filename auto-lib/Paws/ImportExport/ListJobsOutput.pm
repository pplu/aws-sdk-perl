# Generated from callresult_class.tt

package Paws::ImportExport::ListJobsOutput;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::ImportExport::Types qw/ImportExport_Job/;
  has IsTruncated => (is => 'ro', isa => Bool);
  has Jobs => (is => 'ro', isa => ArrayRef[ImportExport_Job]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'Jobs' => {
                           'class' => 'Paws::ImportExport::Job',
                           'type' => 'ArrayRef[ImportExport_Job]'
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

Paws::ImportExport::ListJobsOutput

=head1 ATTRIBUTES


=head2 IsTruncated => Bool




=head2 Jobs => ArrayRef[ImportExport_Job]




=head2 _request_id => Str


=cut

