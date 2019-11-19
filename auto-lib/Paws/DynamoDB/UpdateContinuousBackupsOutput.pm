# Generated from json/callresult_class.tt

package Paws::DynamoDB::UpdateContinuousBackupsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_ContinuousBackupsDescription/;
  has ContinuousBackupsDescription => (is => 'ro', isa => DynamoDB_ContinuousBackupsDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ContinuousBackupsDescription' => {
                                                   'class' => 'Paws::DynamoDB::ContinuousBackupsDescription',
                                                   'type' => 'DynamoDB_ContinuousBackupsDescription'
                                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateContinuousBackupsOutput

=head1 ATTRIBUTES


=head2 ContinuousBackupsDescription => DynamoDB_ContinuousBackupsDescription

Represents the continuous backups and point in time recovery settings
on the table.


=head2 _request_id => Str


=cut

1;