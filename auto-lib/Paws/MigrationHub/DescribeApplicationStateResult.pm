# Generated from json/callresult_class.tt

package Paws::MigrationHub::DescribeApplicationStateResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MigrationHub::Types qw//;
  has ApplicationStatus => (is => 'ro', isa => Str);
  has LastUpdatedTime => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastUpdatedTime' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApplicationStatus' => {
                                        'type' => 'Str'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::DescribeApplicationStateResult

=head1 ATTRIBUTES


=head2 ApplicationStatus => Str

Status of the application - Not Started, In-Progress, Complete.

Valid values are: C<"NOT_STARTED">, C<"IN_PROGRESS">, C<"COMPLETED">
=head2 LastUpdatedTime => Str

The timestamp when the application status was last updated.


=head2 _request_id => Str


=cut

1;