# Generated from json/callresult_class.tt

package Paws::Snowball::DescribeJobResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Snowball::Types qw/Snowball_JobMetadata/;
  has JobMetadata => (is => 'ro', isa => Snowball_JobMetadata);
  has SubJobMetadata => (is => 'ro', isa => ArrayRef[Snowball_JobMetadata]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SubJobMetadata' => {
                                     'class' => 'Paws::Snowball::JobMetadata',
                                     'type' => 'ArrayRef[Snowball_JobMetadata]'
                                   },
               'JobMetadata' => {
                                  'class' => 'Paws::Snowball::JobMetadata',
                                  'type' => 'Snowball_JobMetadata'
                                },
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

Paws::Snowball::DescribeJobResult

=head1 ATTRIBUTES


=head2 JobMetadata => Snowball_JobMetadata

Information about a specific job, including shipping information, job
status, and other important metadata.


=head2 SubJobMetadata => ArrayRef[Snowball_JobMetadata]

Information about a specific job part (in the case of an export job),
including shipping information, job status, and other important
metadata.


=head2 _request_id => Str


=cut

1;